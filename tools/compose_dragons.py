"""
Assemble dragons from the atlases + AllMotions data (rest pose, frame 0), following
UnitPart.setInitSpritePosition:
  * rotation/scale centre rc = (w*gx, h*gy) for head_1 and parts 4..0x1a,
    otherwise (w*gx + left, h*gy + top)
  * sprite top-left = (pX, pY) - rc, rotated by pRotation and scaled by pScale about rc
  * tail is placed relative to the body:  (p - rc)*bodyScale + (bodyP - bodyRc) + left
  * head_1 is placed relative to the head: (p - rc)*headHostScale + (headP - headRc)

Usage: python compose_dragons.py <motions.json> <out.png>
"""

import json
import math
import os
import plistlib
import sys

from PIL import Image, ImageDraw, ImageFont

BASE = r"E:\Game Development\FortConquer-Dev\decoded\assets\gfx\unit\dragon"

# Back-to-front draw order, as attached in Unit.attachToScene: back layer (tail, left wing),
# then far-side (L) limbs, body, neck 5..1, mouth, head, near-side (R) limbs, top layer (right wing).
DRAW_ORDER = [
    "tail", "wing_L",
    "Front_foot_L", "Front_leg_L_2", "Front_leg_L_1",
    "Hind_foot_L", "Hind_leg_L_2", "Hind_leg_L_1",
    "body",
    "neck_5", "neck_4", "neck_3", "neck_2", "neck_1",
    "head_1", "head",
    "Hind_foot_R", "Hind_leg_R_2", "Hind_leg_R_1",
    "Front_foot_R", "Front_leg_R_2", "Front_leg_R_1",
    "wing_R",
]
# Part-type indices from UnitConstants.sDragonPartNames.
PART_TYPE = {n: i for i, n in enumerate([
    "head", "head_1", "body", "tail", "Front_leg_L_1", "Front_leg_R_1", "Front_leg_L_2",
    "Front_leg_R_2", "Hind_leg_L_1", "Hind_leg_R_1", "Hind_leg_L_2", "Hind_leg_R_2",
    "Hind_foot_L", "Hind_foot_R", "shadow", "attack_1", "attack_2_2", "attack_2_3", "Blood",
    "ghost", "die_effect", "die_blood", "Front_foot_L", "Front_foot_R", "wing_L", "wing_R",
    "head_2", "neck_1", "neck_2", "neck_3", "neck_4", "neck_5"])}

PAIRS = [  # (new dragon, motion source) shown side by side
    ("Desert Dragon", "Desert Dragon"), ("Earth Dragon", "Desert Dragon"),
    ("Ice Dragon", "Ice Dragon"),       ("Light Dragon", "Ice Dragon"),
    ("Swamp dragon", "Swamp dragon"),   ("Poison Dragon", "Swamp dragon"),
    ("Fire Dragon", "Fire Dragon"),     ("Storm Dragon", "Fire Dragon"),
]


class Atlas:
    def __init__(self, name):
        with open(os.path.join(BASE, name + ".plist"), "rb") as fh:
            self.frames = plistlib.load(fh)["frames"]
        self.img = Image.open(os.path.join(BASE, name + ".png")).convert("RGBA")

    def get(self, key):
        f = self.frames.get(key)
        if f is None:
            return None
        return self.img.crop((f["x"], f["y"], f["x"] + f["width"], f["y"] + f["height"]))

    def get_canvas(self, key):
        """An animated frame as the game draws it: the trimmed piece placed on its full
        originalWidth x originalHeight canvas (PlistItemInfo.xOffset/yOffset)."""
        f = self.frames.get(key)
        if f is None:
            return None
        canvas = Image.new("RGBA", (f["originalWidth"], f["originalHeight"]), (0, 0, 0, 0))
        dx = f["offsetX"] + (f["originalWidth"] - f["width"]) / 2
        dy = -f["offsetY"] + (f["originalHeight"] - f["height"]) / 2
        canvas.alpha_composite(self.get(key), (int(round(dx)), int(round(dy))))
        return canvas


def rc_of(m, part):
    t = PART_TYPE[part]
    if t == 1 or 4 <= t <= 0x1a:
        return m["w"] * m["gx"], m["h"] * m["gy"]
    return m["w"] * m["gx"] + m["left"], m["h"] * m["gy"] + m["top"]


def full_rc(m):
    return m["w"] * m["gx"] + m["left"], m["h"] * m["gy"] + m["top"]


def paste(canvas, sprite, pos, rc, rot, sx, sy, origin):
    """AndEngine transform: T(pos) T(rc) R(rot) S(sx,sy) T(-rc), y-down, degrees clockwise."""
    a = math.radians(rot)
    c, s = math.cos(a), math.sin(a)
    # forward matrix on sprite-local coords
    m00, m01 = c * sx, -s * sy
    m10, m11 = s * sx, c * sy
    tx = pos[0] + rc[0] - (m00 * rc[0] + m01 * rc[1]) + origin[0]
    ty = pos[1] + rc[1] - (m10 * rc[0] + m11 * rc[1]) + origin[1]
    det = m00 * m11 - m01 * m10
    i00, i01, i10, i11 = m11 / det, -m01 / det, -m10 / det, m00 / det
    inv = (i00, i01, -(i00 * tx + i01 * ty), i10, i11, -(i10 * tx + i11 * ty))
    layer = sprite.transform(canvas.size, Image.AFFINE, inv, resample=Image.BICUBIC)
    canvas.alpha_composite(layer)


def compose(race, motion_race, motions, body, wings, size=(560, 300), origin=(-120, -90), wing_i=1, tail_i=1):
    canvas = Image.new("RGBA", size, (0, 0, 0, 0))
    # The game looks up the race's own entries (copied from the source dragon for new races).
    mk = lambda p: motions.get(f"{race}_{p}.xml") or motions.get(f"{motion_race}_{p}.xml")
    bm, hm = mk("body"), mk("head")
    for part in DRAW_ORDER:
        m = mk(part)
        if m is None:
            continue
        if part.startswith("wing"):
            img = wings.get_canvas(f"{race}_{part}_{wing_i}.png")
        elif part == "tail":
            img = body.get(f"{race}_tail_{tail_i}.png")
        else:
            img = body.get(f"{race}_{part}.png")
        if img is None:
            continue
        rc = rc_of(m, part)
        sx, sy = m["sx"], m["sy"]
        x, y = m["px"] - rc[0], m["py"] - rc[1]
        if part == "tail":
            brc = full_rc(bm)
            x = x * bm["sx"] + bm["px"] - brc[0] + m["left"]
            y = y * bm["sy"] + bm["py"] - brc[1] + m["top"]
            sx, sy = sx * bm["sx"], sy * bm["sy"]
        elif part == "head_1":
            hrc = full_rc(hm)
            x = x * hm["sx"] + hm["px"] - hrc[0]
            y = y * hm["sy"] + hm["py"] - hrc[1]
            sx, sy = sx * hm["sx"], sy * hm["sy"]
        paste(canvas, img, (x, y), rc, m["rot"], sx, sy, origin)
    return canvas


def main():
    motions = json.load(open(sys.argv[1]))
    body, wings = Atlas("fly_dragon"), Atlas("dragon_wing")
    cells = [(race, src, compose(race, src, motions, body, wings)) for race, src in PAIRS]
    cw, ch = cells[0][2].size
    label_h = 28
    sheet = Image.new("RGBA", (cw * 2, (ch + label_h) * 4), (58, 72, 88, 255))
    draw = ImageDraw.Draw(sheet)
    try:
        font = ImageFont.truetype("arial.ttf", 18)
    except OSError:
        font = ImageFont.load_default()
    for i, (race, src, img) in enumerate(cells):
        cx, cy = (i % 2) * cw, (i // 2) * (ch + label_h)
        bg = (58, 72, 88, 255) if race == src else (70, 88, 70, 255)
        draw.rectangle([cx, cy, cx + cw - 1, cy + ch + label_h - 1], fill=bg)
        label = race if race == src else f"{race}  (NEW · motion from {src})"
        draw.text((cx + 10, cy + 5), label, fill=(255, 255, 255, 255), font=font)
        sheet.alpha_composite(img, (cx, cy + label_h))
    sheet.convert("RGB").save(sys.argv[2])
    print("saved", sys.argv[2])


if __name__ == "__main__":
    main()
