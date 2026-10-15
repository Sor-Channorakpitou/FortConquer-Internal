"""
Procedurally drawn attack effects for the new dragons (6 frames each, attack_1_1..6).

Every frame keeps the size and mouth point (left edge, emission row) of the source frame it
replaces, so it lines up with the dragon's head exactly like the original breath:
  1 = charge at the mouth, 2-4 = full attack, 5 = fading, 6 = leftover particles.

  Storm Dragon  → branching lightning bolts
  Earth Dragon  → hail of rocks with a dust cloud
  Light Dragon  → radiant holy beam with sparkles
  Poison Dragon → toxic acid gas with bubbles and dripping droplets
"""

import math
import random

import numpy as np
from PIL import Image, ImageDraw, ImageFilter

SS = 3  # supersampling factor


# ── helpers ──────────────────────────────────────────────────────────────────

def mouth_row(src):
    """Emission row of a source frame: middle of the opaque rows in its leftmost columns."""
    a = np.asarray(src.getchannel("A"))
    cols = np.where(a.max(axis=0) > 60)[0]
    x0 = cols[0] if len(cols) else 0
    rows = np.where(a[:, x0:x0 + 8].max(axis=1) > 60)[0]
    return float(rows.mean()) if len(rows) else src.height / 2


def layer(w, h):
    return Image.new("RGBA", (w * SS, h * SS), (0, 0, 0, 0))


def glow(img, radius, strength=1.0):
    """Additive-looking glow: blurred copy under the original."""
    blur = img.filter(ImageFilter.GaussianBlur(radius * SS))
    if strength != 1.0:
        a = np.asarray(blur).astype(np.float32)
        a[..., 3] = np.clip(a[..., 3] * strength, 0, 255)
        blur = Image.fromarray(a.astype(np.uint8))
    out = Image.new("RGBA", img.size, (0, 0, 0, 0))
    out.alpha_composite(blur)
    out.alpha_composite(img)
    return out


def noise(w, h, scale, rng):
    """Smooth fractal value noise in [0, 1] (3 octaves, blurred so no grid shows)."""
    total, weight = np.zeros((h, w), np.float32), 0.0
    for octave, amp in ((1.0, 1.0), (0.5, 0.5), (0.25, 0.25)):
        s = max(2.0, scale * octave)
        gw, gh = max(2, int(w / s) + 2), max(2, int(h / s) + 2)
        grid = Image.fromarray((rng.random((gh, gw)) * 255).astype(np.uint8))
        layer_ = grid.resize((w, h), Image.BICUBIC).filter(ImageFilter.GaussianBlur(s * 0.35))
        total += amp * np.asarray(layer_).astype(np.float32) / 255
        weight += amp
    total /= weight
    lo, hi = np.percentile(total, 2), np.percentile(total, 98)
    return np.clip((total - lo) / max(1e-6, hi - lo), 0, 1)


def finish(img, w, h):
    return img.resize((w, h), Image.LANCZOS)


def ellipse(d, cx, cy, rx, ry, fill):
    d.ellipse([cx - rx, cy - ry, cx + rx, cy + ry], fill=fill)


# ── Storm: lightning ─────────────────────────────────────────────────────────

def bolt_points(x0, y0, x1, y1, rng, jag, steps):
    pts = [(x0, y0)]
    for i in range(1, steps):
        t = i / steps
        x = x0 + (x1 - x0) * t + rng.uniform(-jag, jag) * 0.4
        y = y0 + (y1 - y0) * t + rng.uniform(-jag, jag)
        pts.append((x, y))
    pts.append((x1, y1))
    return pts


def draw_bolt(d, pts, width, core=(255, 255, 255, 255), edge=(120, 200, 255, 255)):
    d.line(pts, fill=edge, width=max(1, int(width * 2.2)), joint="curve")
    d.line(pts, fill=core, width=max(1, int(width)), joint="curve")


def storm(phase, w, h, my, rng):
    img = layer(w, h)
    d = ImageDraw.Draw(img)
    mx, myy = 2 * SS, my * SS
    W, H = w * SS, h * SS
    if phase == 1:  # crackling charge ball
        for _ in range(7):
            ang = rng.uniform(-math.pi, math.pi)
            r = rng.uniform(0.4, 0.9) * min(W, H * 2) * 0.35
            draw_bolt(d, bolt_points(mx + W * 0.15, myy, mx + W * 0.15 + r * math.cos(ang),
                                     myy + r * 0.5 * math.sin(ang), rng, 4 * SS, 4), 1.2 * SS)
        ellipse(d, mx + W * 0.15, myy, 6 * SS, 5 * SS, (255, 255, 230, 255))
        return glow(img, 4, 1.4)
    if phase in (2, 3, 4):
        n_main = 3 if phase != 3 else 4
        for b in range(n_main):
            ty = rng.uniform(H * 0.15, H * 0.85)
            pts = bolt_points(mx, myy, W * rng.uniform(0.82, 0.98), ty, rng, H * 0.12, 12)
            draw_bolt(d, pts, (2.6 if b == 0 else 1.7) * SS)
            for _ in range(3):  # branches
                k = rng.randrange(3, len(pts) - 2)
                bx, by = pts[k]
                ex = bx + rng.uniform(0.1, 0.25) * W
                ey = by + rng.uniform(-0.3, 0.3) * H
                draw_bolt(d, bolt_points(bx, by, ex, ey, rng, H * 0.06, 5), 1.0 * SS,
                          edge=(255, 230, 120, 255))
        ellipse(d, mx + 4 * SS, myy, 7 * SS, 6 * SS, (255, 255, 240, 255))
        for _ in range(14):  # impact sparks
            x, y = W * rng.uniform(0.75, 0.98), H * rng.uniform(0.15, 0.85)
            ellipse(d, x, y, 1.5 * SS, 1.5 * SS, (255, 240, 150, 255))
        return glow(img, 5, 1.6)
    if phase == 5:  # fading residual arcs
        for _ in range(2):
            ty = rng.uniform(H * 0.3, H * 0.7)
            draw_bolt(d, bolt_points(W * 0.25, rng.uniform(H * 0.3, H * 0.7), W * 0.9, ty, rng, H * 0.1, 8),
                      1.1 * SS, core=(220, 240, 255, 200), edge=(90, 150, 255, 160))
        for _ in range(16):
            ellipse(d, W * rng.uniform(0.2, 0.95), H * rng.uniform(0.1, 0.9), 1.4 * SS, 1.4 * SS,
                    (255, 235, 140, 220))
        return glow(img, 4, 1.2)
    for _ in range(12):  # leftover static sparks
        x, y = W * rng.uniform(0.1, 0.9), H * rng.uniform(0.1, 0.9)
        draw_bolt(d, bolt_points(x, y, x + rng.uniform(-6, 6) * SS, y + rng.uniform(-6, 6) * SS, rng, 2 * SS, 3),
                  0.9 * SS, core=(230, 245, 255, 220), edge=(90, 160, 255, 180))
    return glow(img, 3, 1.0)


# ── Earth: rocks and dust ────────────────────────────────────────────────────

ROCK_DARK, ROCK_MID, ROCK_LIGHT = (70, 48, 30), (128, 92, 58), (196, 150, 96)


def rock(d, cx, cy, r, rng):
    n = rng.randint(6, 9)
    pts = []
    for i in range(n):
        a = 2 * math.pi * i / n + rng.uniform(-0.25, 0.25)
        rr = r * rng.uniform(0.7, 1.15)
        pts.append((cx + rr * math.cos(a), cy + rr * math.sin(a) * 0.85))
    d.polygon(pts, fill=ROCK_MID + (255,), outline=ROCK_DARK + (255,))
    top = [(x, y) for x, y in pts if y <= cy][:4]  # lit upper facet
    if len(top) >= 3:
        d.polygon([(cx, cy)] + top, fill=ROCK_LIGHT + (255,))
    d.line([pts[-1], pts[0]], fill=(240, 190, 110, 255), width=max(1, int(r * 0.15)))  # glowing crack


def dust(w, h, my, x0, x1, spread, density, rng, tint=(150, 115, 80)):
    """Soft dust cone opening from the mouth (my) towards the right."""
    W, H = w * SS, h * SS
    n = noise(W, H, 10 * SS, rng)
    ys, xs = np.mgrid[0:H, 0:W].astype(np.float32)
    t = np.clip((xs - W * x0) / (W * (x1 - x0)), 0, 1)
    half = H * (0.1 + spread * t)
    across = np.clip(1 - np.abs(ys - my * SS) / half, 0, 1) ** 0.8
    along = np.clip((xs - W * x0) / (W * 0.08), 0, 1) * np.clip((W * x1 - xs) / (W * 0.3), 0, 1)
    alpha = np.clip(across * along * (0.45 + 0.7 * n) * density * 255, 0, 235)
    shade = 0.7 + 0.6 * n
    rgb = np.dstack([np.clip(tint[c] * shade, 0, 255) for c in range(3)])
    img = Image.fromarray(np.dstack([rgb, alpha]).astype(np.uint8))
    return img.filter(ImageFilter.GaussianBlur(1.5 * SS))


def earth(phase, w, h, my, rng):
    W, H = w * SS, h * SS
    img = layer(w, h)
    if phase == 1:
        img.alpha_composite(dust(w, h, my, 0.0, 0.9, 0.35, 0.9, rng))
        d = ImageDraw.Draw(img)
        for _ in range(4):
            rock(d, W * rng.uniform(0.15, 0.6), my * SS + rng.uniform(-3, 3) * SS, rng.uniform(2, 3.5) * SS, rng)
        return img
    if phase in (2, 3, 4):
        img.alpha_composite(dust(w, h, my, 0.0, 1.0, 0.4, 0.9, rng))
        d = ImageDraw.Draw(img)
        shift = (phase - 2) * 0.06
        for _ in range(14):
            t = rng.uniform(0.08, 0.92)
            x = W * min(0.94, t + shift)
            y = my * SS + rng.uniform(-1, 1) * H * (0.08 + 0.33 * t)
            rock(d, x, y, (3 + 9 * t) * SS * rng.uniform(0.8, 1.15), rng)
        return img
    if phase == 5:
        img.alpha_composite(dust(w, h, my, 0.15, 1.0, 0.45, 0.6, rng))
        d = ImageDraw.Draw(img)
        for _ in range(6):
            rock(d, W * rng.uniform(0.55, 0.92), H * rng.uniform(0.35, 0.85), rng.uniform(4, 8) * SS, rng)
        return img
    img.alpha_composite(dust(w, h, my, 0.1, 1.0, 0.45, 0.3, rng))
    d = ImageDraw.Draw(img)
    for _ in range(7):
        rock(d, W * rng.uniform(0.1, 0.9), H * rng.uniform(0.55, 0.9), rng.uniform(2.5, 5) * SS, rng)
    return img


# ── Light: holy beam ─────────────────────────────────────────────────────────

def sparkle(d, x, y, r, col):
    d.polygon([(x - r, y), (x, y - r * 0.25), (x + r, y), (x, y + r * 0.25)], fill=col)
    d.polygon([(x, y - r), (x + r * 0.25, y), (x, y + r), (x - r * 0.25, y)], fill=col)


def beam(w, h, my, length, thick, alpha):
    W, H = w * SS, h * SS
    ys, xs = np.mgrid[0:H, 0:W].astype(np.float32)
    t = np.clip(xs / (W * length), 0, 1)
    half = (thick * SS) * (0.55 + 0.6 * t)  # widens away from the mouth
    dy = np.abs(ys - my * SS)
    core = np.clip(1 - dy / (half * 0.35), 0, 1)
    halo = np.clip(1 - dy / half, 0, 1) ** 1.6
    end = np.clip((W * length - xs) / (W * 0.08), 0, 1)
    a = np.clip((halo * 0.75 + core) * end * alpha, 0, 1)
    r = 255 * np.ones_like(a)
    g = 225 + 30 * core
    b = 120 + 135 * core
    return Image.fromarray(np.dstack([r, g, b, a * 255]).astype(np.uint8))


def light(phase, w, h, my, rng):
    W, H = w * SS, h * SS
    img = layer(w, h)
    d = ImageDraw.Draw(img)
    gold, white = (255, 214, 110, 255), (255, 255, 245, 255)
    if phase == 1:
        cx = W * 0.25
        for k in range(8):  # starburst rays
            a = k * math.pi / 4
            d.line([(cx, my * SS), (cx + math.cos(a) * W * 0.22, my * SS + math.sin(a) * H * 0.45)], fill=gold, width=SS)
        ellipse(d, cx, my * SS, 5 * SS, 5 * SS, white)
        return glow(img, 4, 1.5)
    if phase in (2, 3, 4):
        img.alpha_composite(beam(w, h, my, 0.97, h * 0.16 + phase * 1.5, 1.0))
        d = ImageDraw.Draw(img)
        ex = W * 0.93
        for k in range(12):  # radiant flare at the impact end
            a = k * math.pi / 6 + phase * 0.2
            r = H * rng.uniform(0.25, 0.45)
            d.line([(ex, my * SS), (ex + math.cos(a) * r * 0.5, my * SS + math.sin(a) * r)], fill=gold, width=SS)
        ellipse(d, ex, my * SS, 6 * SS, 6 * SS, white)
        for _ in range(16):
            sparkle(d, W * rng.uniform(0.1, 0.95), my * SS + rng.uniform(-0.4, 0.4) * H,
                    rng.uniform(2, 4.5) * SS, white if rng.random() < 0.5 else gold)
        return glow(img, 4, 1.3)
    if phase == 5:
        img.alpha_composite(beam(w, h, my, 0.9, h * 0.08, 0.55))
        d = ImageDraw.Draw(img)
        for _ in range(18):
            sparkle(d, W * rng.uniform(0.2, 0.95), H * rng.uniform(0.15, 0.85), rng.uniform(2, 4) * SS, gold)
        return glow(img, 3, 1.2)
    for _ in range(14):
        sparkle(d, W * rng.uniform(0.1, 0.9), H * rng.uniform(0.1, 0.9), rng.uniform(1.5, 3.5) * SS,
                (255, 230, 150, 220))
    return glow(img, 3, 1.0)


# ── Poison: toxic gas ────────────────────────────────────────────────────────

def gas(w, h, my, x0, x1, spread, density, rng):
    W, H = w * SS, h * SS
    n = noise(W, H, 9 * SS, rng)
    n2 = noise(W, H, 22 * SS, rng)
    ys, xs = np.mgrid[0:H, 0:W].astype(np.float32)
    t = np.clip((xs - W * x0) / (W * (x1 - x0)), 0, 1)
    half = H * (0.08 + spread * t)  # cone opening away from the mouth
    inside = np.clip(1 - np.abs(ys - my * SS) / half, 0, 1) * (xs >= W * x0) * np.clip((W * x1 - xs) / (W * 0.3), 0, 1)
    a = np.clip(inside * (0.55 + 0.6 * n) * density, 0, 1)
    lime = np.array([170, 255, 60], np.float32)
    dark = np.array([40, 110, 40], np.float32)
    purple = np.array([110, 60, 120], np.float32)
    mix = n2[..., None]
    rgb = lime * (1 - mix) * (0.5 + 0.5 * inside[..., None]) + dark * mix
    rgb = rgb * 0.85 + purple * 0.15 * (1 - inside[..., None])
    return Image.fromarray(np.dstack([np.clip(rgb, 0, 255), a * 255]).astype(np.uint8))


def bubbles(d, n, W, H, rng, y_range=(0.15, 0.85), x_range=(0.2, 0.95)):
    for _ in range(n):
        x, y = W * rng.uniform(*x_range), H * rng.uniform(*y_range)
        r = rng.uniform(1.5, 4) * SS
        d.ellipse([x - r, y - r, x + r, y + r], outline=(210, 255, 120, 230), width=max(1, SS // 2 + 1))
        d.ellipse([x - r * 0.5, y - r * 0.6, x - r * 0.1, y - r * 0.2], fill=(255, 255, 220, 200))


def droplets(d, n, W, H, rng, y_range=(0.4, 0.95)):
    for _ in range(n):
        x, y = W * rng.uniform(0.2, 0.95), H * rng.uniform(*y_range)
        r = rng.uniform(1.5, 3) * SS
        d.polygon([(x, y - r * 2.2), (x - r, y), (x + r, y)], fill=(150, 240, 60, 240))
        d.ellipse([x - r, y - r, x + r, y + r], fill=(150, 240, 60, 240))


def poison(phase, w, h, my, rng):
    W, H = w * SS, h * SS
    img = layer(w, h)
    if phase == 1:
        img.alpha_composite(gas(w, h, my, 0.0, 0.8, 0.3, 1.0, rng))
        d = ImageDraw.Draw(img)
        ellipse(d, W * 0.12, my * SS, 4 * SS, 3 * SS, (220, 255, 140, 255))
        return glow(img, 2, 1.0)
    if phase in (2, 3, 4):
        img.alpha_composite(gas(w, h, my, 0.0, 0.98, 0.42 + 0.03 * phase, 1.1, rng))
        d = ImageDraw.Draw(img)
        ellipse(d, W * 0.05, my * SS, 6 * SS, 4 * SS, (230, 255, 160, 255))
        bubbles(d, 12, W, H, rng)
        droplets(d, 8, W, H, rng)
        return glow(img, 2, 0.9)
    if phase == 5:
        img.alpha_composite(gas(w, h, my, 0.1, 0.98, 0.45, 0.7, rng))
        d = ImageDraw.Draw(img)
        bubbles(d, 10, W, H, rng)
        droplets(d, 10, W, H, rng, (0.55, 0.95))
        return img
    d = ImageDraw.Draw(img)
    bubbles(d, 8, W, H, rng, (0.1, 0.7), (0.1, 0.9))
    droplets(d, 9, W, H, rng, (0.5, 0.95))
    return img


STYLES = {"Storm Dragon": storm, "Earth Dragon": earth, "Light Dragon": light, "Poison Dragon": poison}


def make_frames(race, src_frames):
    """src_frames: [6 RGBA source frames] → [6 RGBA frames] of the same sizes."""
    rng_seed = sum(map(ord, race))
    out = []
    for i, src in enumerate(src_frames, 1):
        rng = random.Random(rng_seed * 10 + i)
        np_rng = np.random.default_rng(rng_seed * 10 + i)
        w, h = src.size
        my = mouth_row(src)
        style = STYLES[race]

        class R:  # one rng object offering both APIs
            uniform, randint, randrange, random = rng.uniform, rng.randint, rng.randrange, np_rng.random

        out.append(finish(style(i, w, h, my, R), w, h))
    return out
