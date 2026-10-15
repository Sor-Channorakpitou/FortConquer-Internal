"""
Fort Conquer — Phase 2 Atlas Packing

Reads the pristine atlases from phase2-backup/ (so re-running is safe) and writes
the expanded atlases into decoded/assets/gfx/unit/dragon/.

Constraints from the game code:
  * PlistTexture extends AndEngine's BitmapTextureAtlas, which throws unless both
    atlas dimensions are powers of two.
  * PlistTextureRegionFactory dereferences the frame lookup without a null check,
    so every "{race}_{part}.png" the game asks for must exist — in BOTH the player
    atlas and the enemy atlas (createCampTextureRegions builds both for each race).
  * The existing dragons are drawn at 1x (bodies ~140 px wide, and AllMotions
    widths match 1x frame sizes), so the 1x new-dragon atlases are used, not @2x.
"""

import json
import math
import os
import sys
import plistlib

import numpy as np
from PIL import Image, ImageOps

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "tools"))
import dragon_targets  # noqa: E402

BASE   = r"E:\Game Development\FortConquer-Dev"
DRAGON = os.path.join(BASE, "decoded", "assets", "gfx", "unit", "dragon")
BACKUP = os.path.join(BASE, "phase2-backup")
NEW    = os.path.join(BASE, "unit", "quad")

# New dragon → existing dragon whose wing / attack frames it reuses.
WING_CLONE = {
    "Earth Dragon":  "Desert Dragon",
    "Light Dragon":  "Ice Dragon",
    "Poison Dragon": "Swamp dragon",
    "Storm Dragon":  "Fire Dragon",
}
# Fire Dragon has only 4 attack frames; the game loads 6 for every race except 0x11.
ATTACK_CLONE = dict(WING_CLONE, **{"Storm Dragon": "Desert Dragon"})

# New-dragon art (1x for body parts, @2x segments for building the tail).
NEW_ATLASES = {
    "Earth Dragon":  "earth_dragon",
    "Light Dragon":  "light_dragon",
    "Poison Dragon": "poison_dragon",
    "Storm Dragon":  "storm_dragon",
}
BODY_SIZE = (1024, 2048)

# Tail. Each new tail_N image is a complete but short cone (socket end on the right, tip on the
# left) — about half the body's length, which reads as a stub in game. Build one long,
# continuous tail instead: the cone stretched to a realistic length, thick where it meets
# the body, with a gentle droop and a smooth idle sway across the 6 animation frames.
TAIL_FRAMES = 6
# Thickness and reach follow the original dragon each new one is modelled on
# (tools/dragon_targets.py); the originals' tails run almost straight back.
TAIL_SOCKET = 0.18         # extra length hidden inside the body (fraction of body width)
TAIL_DROOP = 0.03          # tip droop as a fraction of tail length
TAIL_SWAY = 0.04           # tip sway amplitude as a fraction of tail length


def edge_span(img, right=True, cols=6):
    """(top, bottom) opaque rows near the left or right edge of an image."""
    a = img.getchannel("A")
    x0, _, x1, _ = a.getbbox()
    xs = range(x1 - cols, x1) if right else range(x0, x0 + cols)
    ys = [y for y in range(img.height) for x in xs if a.getpixel((x, y)) > 40]
    return min(ys), max(ys)


def build_tail_frames(race):
    """6 RGBA whole-tail frames (all the same size, base on the right edge)."""
    plist1, _ = load(NEW, NEW_ATLASES[race])
    body = plist1["frames"][f"{race}_body.png"]
    plist2, img2 = load(NEW, NEW_ATLASES[race] + "@2x")
    f = plist2["frames"][f"{race}_tail_1.png"]
    cone = img2.crop((f["x"], f["y"], f["x"] + f["width"], f["y"] + f["height"]))
    cone = cone.crop(cone.getchannel("A").getbbox())
    top, bot = edge_span(cone)
    ss = 4
    goal = dragon_targets.target(race)
    length = round(body["width"] * (goal["tail_reach"] + TAIL_SOCKET))
    sh = body["height"] * goal["tail_thick"] / (bot - top + 1)
    big = cone.resize((length * ss, max(1, round(cone.height * sh * ss))), Image.LANCZOS)
    src = np.asarray(big)
    base_mid = (top + bot) / 2 * sh * ss
    reach = (TAIL_DROOP + TAIL_SWAY) * length * ss
    pad = int(reach + 4 * ss)
    H, W = src.shape[0] + 2 * pad, src.shape[1]
    frames = []
    for k in range(TAIL_FRAMES):
        out = np.zeros((H, W, 4), np.uint8)
        for x in range(W):
            t = (W - 1 - x) / (W - 1)  # 0 at the base (right) → 1 at the tip (left)
            dy = (TAIL_DROOP * t * t
                  + TAIL_SWAY * math.sin(2 * math.pi * k / TAIL_FRAMES + 2.2 * t) * t ** 1.6) * length * ss
            y0 = pad + int(round(dy))
            out[y0:y0 + src.shape[0], x] = src[:, x]
        frame = Image.fromarray(out).resize((length, round(H / ss)), Image.LANCZOS)
        frames.append(frame)
    return frames, (length - 1, (pad + base_mid) / ss)


def _composite_clipped(canvas, layer, x, y):
    x, y = round(x), round(y)
    l, t = max(0, -x), max(0, -y)
    crop = layer.crop((l, t, layer.width, layer.height))
    canvas.alpha_composite(crop, (x + l, y + t))


def shelf_pack(items, x0, y0, x1, y1, pad=1):
    """items: [(key, img)] → {key: (x, y)}; simple height-sorted shelf packer."""
    placed, x, y, shelf_h = {}, x0, y0, 0
    for key, img in sorted(items, key=lambda kv: -kv[1].height):
        if x + img.width > x1:
            x, y, shelf_h = x0, y + shelf_h + pad, 0
        assert y + img.height <= y1, f"atlas full at {key}"
        placed[key] = (x, y)
        x += img.width + pad
        shelf_h = max(shelf_h, img.height)
    return placed


def is_pow2(n):
    return n > 0 and n & (n - 1) == 0


def load(dirpath, name):
    with open(os.path.join(dirpath, name + ".plist"), "rb") as fh:
        plist = plistlib.load(fh)
    return plist, Image.open(os.path.join(dirpath, name + ".png")).convert("RGBA")


def save(name, plist, img):
    w, h = img.size
    assert is_pow2(w) and is_pow2(h), f"{name}: {w}x{h} is not power-of-two"
    plist["texture"] = {"width": w, "height": h}
    for key, f in plist["frames"].items():
        assert f["x"] + f["width"] <= w and f["y"] + f["height"] <= h, f"{name}: {key} out of bounds"
    img.save(os.path.join(DRAGON, name + ".png"), "PNG")
    with open(os.path.join(DRAGON, name + ".plist"), "wb") as fh:
        plistlib.dump(plist, fh, sort_keys=False)
    print(f"  {name}: {w}x{h}, {len(plist['frames'])} frames")


# Leg pieces come with an open socket (a dark hollow) at the joint end. The game draws the
# near-side legs in front of the body and each thigh over its shin, so the hollow would show:
# close it by filling the hollow from the surrounding scales.
SOCKETED = ("_leg_L_1", "_leg_R_1", "_leg_L_2", "_leg_R_2")
SOCKETED_RACES = ("Earth Dragon", "Light Dragon")  # only these leg pieces are drawn open


def close_socket(img):
    from scipy import ndimage
    a = np.asarray(img).astype(np.float64)
    opaque = a[..., 3] > 200
    lum = 0.299 * a[..., 0] + 0.587 * a[..., 1] + 0.114 * a[..., 2]
    med = np.median(lum[opaque])
    dark = opaque & (lum < min(95.0, 0.5 * med))
    labels, n = ndimage.label(dark)
    if n == 0:
        return img
    sizes = ndimage.sum(dark, labels, range(1, n + 1))
    biggest = int(np.argmax(sizes)) + 1
    frac = sizes[biggest - 1] / opaque.sum()
    depth = lum[labels == biggest].mean() / med
    # a socket is a compact, much darker blob; large dark areas are just shading (e.g. Storm)
    if not (0.008 <= frac <= 0.12 and depth < 0.40):
        return img
    hole = ndimage.binary_dilation(labels == biggest, iterations=4) & opaque  # include the rim
    rgb = a[..., :3].copy()
    known = ~hole
    rgb[hole] = 0
    k = np.ones((3, 3))
    for _ in range(80):  # diffuse the surrounding colours into the hole
        acc = np.stack([ndimage.convolve(rgb[..., c] * known, k, mode="nearest") for c in range(3)], -1)
        cnt = ndimage.convolve(known.astype(float), k, mode="nearest")[..., None]
        fill = hole & (cnt[..., 0] > 0)
        rgb[fill] = acc[fill] / cnt[fill]
        known = known | fill
    rgb[hole] *= 0.85  # keep a hint of shading where the joint was
    out = np.dstack([np.clip(rgb, 0, 255), a[..., 3]]).astype(np.uint8)
    return Image.fromarray(out)


# Lower jaw (head_1). The supplied jaw piece doesn't match the head art, so regenerate it from
# the head itself: the lower-front part of the head below the mouth line. The rig places it
# exactly over the head's own jaw (offset recorded in JAW_OFFSETS), so it lines up perfectly
# and moves with the head's own jaw when the game animates it.
JAW_BOX = (0.42, 0.60)       # jaw region: right of 42% of the head width, below 60% of its height
JAW_OFFSETS = os.path.join(BASE, "tools", "jaw_offsets.json")


def jaw_from_head(head):
    a = np.asarray(head).copy()
    ys, xs = np.nonzero(a[..., 3] > 40)
    x0 = int(xs.min() + JAW_BOX[0] * (xs.max() - xs.min()))
    y0 = int(ys.min() + JAW_BOX[1] * (ys.max() - ys.min()))
    a[:y0, :, 3] = 0
    a[:, :x0, 3] = 0
    jaw = Image.fromarray(a)
    bb = jaw.getchannel("A").getbbox()
    return jaw.crop(bb), (bb[0], bb[1])


def build_new_pieces():
    """{frame key: RGBA image} for all new-dragon body frames, tails rebuilt as whole tails."""
    pieces, offsets = {}, {}
    for race, atlas in NEW_ATLASES.items():
        new_plist, new_img = load(NEW, atlas)
        for key, f in new_plist["frames"].items():
            if key.startswith(race + "_tail_"):
                continue
            piece = new_img.crop((f["x"], f["y"], f["x"] + f["width"], f["y"] + f["height"]))
            if race in SOCKETED_RACES and any(s in key for s in SOCKETED):
                piece = close_socket(piece)
            pieces[key] = piece
        pieces[f"{race}_head_1.png"], offsets[race] = jaw_from_head(pieces[f"{race}_head.png"])
        tails, _ = build_tail_frames(race)
        for i, img in enumerate(tails, 1):
            pieces[f"{race}_tail_{i}.png"] = img
    with open(JAW_OFFSETS, "w", encoding="utf-8") as fh:
        json.dump(offsets, fh, indent=1)
    return pieces


# ── Parts the new art doesn't include (wings, attack effect, tongue) ────────────
# Made by recolouring the source dragon's part with a gradient map sampled from the new
# dragon's own body, head and neck, so every new dragon has a full set of its own parts.
PALETTE_PARTS = ("body", "head", "neck_1", "neck_2", "neck_3", "neck_4", "neck_5")


def palette_lut(race):
    """256-entry luminance → RGB table built from the new dragon's own art."""
    plist, img = load(NEW, NEW_ATLASES[race] + "@2x")
    bins = [[0, 0, 0, 0] for _ in range(256)]
    for part in PALETTE_PARTS:
        f = plist["frames"][f"{race}_{part}.png"]
        crop = img.crop((f["x"], f["y"], f["x"] + f["width"], f["y"] + f["height"]))
        for r, g, b, a in crop.getdata():
            if a < 200:
                continue
            lum = int(0.299 * r + 0.587 * g + 0.114 * b)
            acc = bins[lum]
            acc[0] += r; acc[1] += g; acc[2] += b; acc[3] += 1
    known = [(i, (c[0] / c[3], c[1] / c[3], c[2] / c[3])) for i, c in enumerate(bins) if c[3] >= 8]
    lums = sorted(i for i, _ in known)
    lo, hi = lums[len(lums) // 50], lums[-1 - len(lums) // 50]
    lut = []
    for i in range(256):  # linear interpolation between known bins
        prev = max((k for k in known if k[0] <= i), default=known[0], key=lambda k: k[0])
        nxt = min((k for k in known if k[0] >= i), default=known[-1], key=lambda k: k[0])
        t = 0 if nxt[0] == prev[0] else (i - prev[0]) / (nxt[0] - prev[0])
        lut.append(tuple(prev[1][c] + (nxt[1][c] - prev[1][c]) * t for c in range(3)))
    smooth = []
    for i in range(256):  # soften banding
        win = lut[max(0, i - 6):i + 7]
        smooth.append(tuple(int(sum(c[k] for c in win) / len(win)) for k in range(3)))
    return smooth, (lo, hi)


def recolor(img, lut_and_range):
    """Gradient-map img onto the palette, stretching its luminance to the palette's range."""
    lut, (lo, hi) = lut_and_range
    px = list(img.getdata())
    lums = sorted(int(0.299 * r + 0.587 * g + 0.114 * b) for r, g, b, a in px if a > 40) or [0, 255]
    s_lo, s_hi = lums[len(lums) // 50], lums[-1 - len(lums) // 50]
    span = max(1, s_hi - s_lo)
    out = []
    for r, g, b, a in px:
        lum = 0.299 * r + 0.587 * g + 0.114 * b
        t = min(max((lum - s_lo) / span, 0.0), 1.0)
        out.append(lut[int(lo + t * (hi - lo))] + (a,))
    res = Image.new("RGBA", img.size)
    res.putdata(out)
    return res


def crop_frame(img, f):
    return img.crop((f["x"], f["y"], f["x"] + f["width"], f["y"] + f["height"]))


LUTS = {race: palette_lut(race) for race in NEW_ATLASES}


# Trim metadata of new frames. Animated parts (wings, attack) are trimmed pieces of a shared
# canvas: ComposedAnimatedSprite sizes and places every frame from originalWidth/Height and
# offsetX/Y, so a new frame must carry the same values as the source frame it replaces.
TRIM_KEYS = ("offsetX", "offsetY", "originalWidth", "originalHeight")


def recolored_pieces(backup_name, clone_map, prefix_filter=""):
    """Recoloured copies of every source-race frame → (pieces, meta, source key per piece)."""
    plist, img = load(BACKUP, backup_name)
    pieces, meta, origin = {}, {}, {}
    for race, src in clone_map.items():
        keys = [k for k in plist["frames"] if k.startswith(src + "_") and prefix_filter in k]
        assert keys, f"{backup_name}: no frames for {src}"
        for k in keys:
            new_key = race + k[len(src):]
            pieces[new_key] = recolor(crop_frame(img, plist["frames"][k]), LUTS[race])
            meta[new_key] = {m: plist["frames"][k][m] for m in TRIM_KEYS}
            origin[new_key] = k
    return pieces, meta, origin


# ── Enemy versions ───────────────────────────────────────────────────────────
# Enemy art is the player art mirrored horizontally and recoloured to the enemy team's
# purple palette. Learn that colour mapping from the original dragons' player/enemy pairs.

def enemy_lut():
    p_plist, p_img = load(BACKUP, "fly_dragon")
    e_plist, e_img = load(BACKUP, "enemy_dragon")
    sums = np.zeros((256, 3)); counts = np.zeros(256)
    for k, f in p_plist["frames"].items():
        e = e_plist["frames"].get(k)
        if e is None or (e["width"], e["height"]) != (f["width"], f["height"]):
            continue
        a = np.asarray(ImageOps.mirror(crop_frame(p_img, f))).astype(np.float64)
        b = np.asarray(crop_frame(e_img, e)).astype(np.float64)
        m = (a[..., 3] > 200) & (b[..., 3] > 200)
        lum = (0.299 * a[..., 0] + 0.587 * a[..., 1] + 0.114 * a[..., 2])[m].astype(int)
        np.add.at(sums, lum, b[..., :3][m]); np.add.at(counts, lum, 1)
    known = counts > 20
    xs = np.arange(256)
    lut = np.stack([np.interp(xs, xs[known], sums[known, c] / counts[known]) for c in range(3)], axis=1)
    return np.clip(lut, 0, 255).astype(np.uint8)


ENEMY_LUT = enemy_lut()


def enemy_version(img):
    a = np.asarray(ImageOps.mirror(img)).astype(np.float64)
    lum = np.clip(0.299 * a[..., 0] + 0.587 * a[..., 1] + 0.114 * a[..., 2], 0, 255).astype(int)
    rgb = ENEMY_LUT[lum]
    return Image.fromarray(np.dstack([rgb, a[..., 3].astype(np.uint8)]))


def enemy_meta(enemy_backup, origin):
    """Trim metadata for enemy copies: taken from the enemy atlas's own source frame (mirrored offsets)."""
    plist, _ = load(BACKUP, enemy_backup)
    return {k: {m: plist["frames"][src][m] for m in TRIM_KEYS} for k, src in origin.items()}


def pack_atlas(name, pieces, size, meta=None):
    meta = meta or {}
    plist, src = load(BACKUP, name)
    canvas = Image.new("RGBA", size, (0, 0, 0, 0))
    canvas.paste(src, (0, 0))
    frames = plist["frames"]
    used_bottom = max(f["y"] + f["height"] for f in frames.values()) + 2
    spots = shelf_pack(list(pieces.items()), 0, used_bottom, size[0], size[1])
    for key, (x, y) in spots.items():
        assert key not in frames, f"duplicate frame {key}"
        img = pieces[key]
        canvas.paste(img, (x, y))
        trim = meta.get(key, {"offsetX": 0.0, "offsetY": 0.0,
                              "originalWidth": img.width, "originalHeight": img.height})
        frames[key] = dict({"x": x, "y": y, "width": img.width, "height": img.height}, **trim)
    save(name, plist, canvas)


print("=== Body atlases ===")
NEW_PIECES = build_new_pieces()
# Tongue (head_2): not in the new art; Fire Dragon has none either, so Storm uses Desert's.
TONGUE_SRC = dict(WING_CLONE, **{"Storm Dragon": "Desert Dragon"})
tongues, tongue_meta, tongue_origin = recolored_pieces("fly_dragon", TONGUE_SRC, "_head_2")
NEW_PIECES.update(tongues)
pack_atlas("fly_dragon", NEW_PIECES, BODY_SIZE, tongue_meta)
pack_atlas("enemy_dragon", {k: enemy_version(v) for k, v in NEW_PIECES.items()}, BODY_SIZE,
           enemy_meta("enemy_dragon", tongue_origin))

print("=== Wing atlases ===")
WING_PIECES, wing_meta, wing_origin = recolored_pieces("dragon_wing", WING_CLONE)
pack_atlas("dragon_wing", WING_PIECES, (1024, 1024), wing_meta)
pack_atlas("enemy_dragon_wing", {k: enemy_version(v) for k, v in WING_PIECES.items()}, (1024, 1024),
           enemy_meta("enemy_dragon_wing", wing_origin))

print("=== Attack atlas ===")
import make_attack_effects  # noqa: E402  (each new dragon gets its own kind of attack)

atk_plist, atk_img = load(BACKUP, "dragon_attack")
ATTACK_PIECES, ATTACK_META = {}, {}
for race, src in ATTACK_CLONE.items():
    src_frames = [crop_frame(atk_img, atk_plist["frames"][f"{src}_attack_1_{i}.png"]) for i in range(1, 7)]
    for i, img in enumerate(make_attack_effects.make_frames(race, src_frames), 1):
        src_meta = atk_plist["frames"][f"{src}_attack_1_{i}.png"]
        assert img.size == (src_meta["width"], src_meta["height"])  # same trim box as the source
        ATTACK_PIECES[f"{race}_attack_1_{i}.png"] = img
        ATTACK_META[f"{race}_attack_1_{i}.png"] = {m: src_meta[m] for m in TRIM_KEYS}
pack_atlas("dragon_attack", ATTACK_PIECES, (1024, 2048), ATTACK_META)

print("=== Done ===")
