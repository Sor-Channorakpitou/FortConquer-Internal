"""
Combined preview of the new dragons: assembled body + tail + own wings, flapping, then firing
their own attack from the mouth. Writes an animated GIF and a still of the attack moment.

The attack is anchored at the race's "attack_1" motion entry: the effect's mouth point (left
edge, emission row) is placed where the original breath starts.

Usage: python tools/preview_combined.py <motions.json> <out.gif> <out_still.png>
"""

import json
import os
import plistlib
import sys

from PIL import Image, ImageDraw, ImageFont

sys.path.insert(0, os.path.dirname(__file__))
import compose_dragons as C  # noqa: E402
from make_attack_effects import mouth_row  # noqa: E402

RACES = [("Earth Dragon", "Desert Dragon"), ("Light Dragon", "Ice Dragon"),
         ("Poison Dragon", "Swamp dragon"), ("Storm Dragon", "Fire Dragon")]
ATTACK = {"Earth": "rock hail", "Light": "holy beam", "Poison": "toxic gas", "Storm": "lightning"}
CELL = (760, 300)
ORIGIN = (-110, -90)
LABEL_H = 30


def attack_frames(atlas, race):
    return [atlas.get(f"{race}_attack_1_{i}.png") for i in range(1, 7)]


def emission_point(motions, race, frames):
    """World point where the breath leaves the mouth, from the attack_1 motion entry."""
    m = motions[f"{race}_attack_1.xml"]
    sx, sy = m["sx"] or 1.0, m["sy"] or 1.0
    left = m["px"] - m["w"] * m["gx"] * sx
    top = m["py"] - m["h"] * m["gy"] * sy
    ref = frames[1]  # full-attack frame defines the emission row
    return left, top + mouth_row(ref) / ref.height * m["h"] * sy


def render_cell(race, src, motions, body, wings, atk, step, font):
    # 0-5: flap, 6-11: attack frames 1-6 (wings keep flapping)
    wing_i = step % 6 + 1
    tail_i = step % 6 + 1
    dragon = C.compose(race, src, motions, body, wings, size=CELL, origin=ORIGIN, wing_i=wing_i, tail_i=tail_i)
    cell = Image.new("RGBA", (CELL[0], CELL[1] + LABEL_H), (52, 64, 80, 255))
    cell.alpha_composite(dragon, (0, LABEL_H))
    if step >= 6:
        frames = attack_frames(atk, race)
        ex, ey = emission_point(motions, race, frames)
        f = frames[step - 6]
        x = ex + ORIGIN[0]
        y = ey + ORIGIN[1] - mouth_row(f) + LABEL_H
        cell.alpha_composite(f, (int(round(x)), int(round(y))))
    d = ImageDraw.Draw(cell)
    d.text((10, 6), f"{race}  ·  attack: {ATTACK[race.split()[0]]}", fill=(255, 255, 255, 255), font=font)
    return cell


def main():
    motions = json.load(open(sys.argv[1]))
    body, wings, atk = C.Atlas("fly_dragon"), C.Atlas("dragon_wing"), C.Atlas("dragon_attack")
    try:
        font = ImageFont.truetype("arial.ttf", 18)
    except OSError:
        font = ImageFont.load_default()
    frames = []
    for step in range(12):
        sheet = Image.new("RGBA", (CELL[0] * 2, (CELL[1] + LABEL_H) * 2), (52, 64, 80, 255))
        for k, (race, src) in enumerate(RACES):
            cell = render_cell(race, src, motions, body, wings, atk, step, font)
            sheet.alpha_composite(cell, ((k % 2) * CELL[0], (k // 2) * (CELL[1] + LABEL_H)))
        frames.append(sheet.convert("RGB"))
    durations = [110] * 6 + [130, 100, 100, 100, 120, 160]
    frames[0].save(sys.argv[2], save_all=True, append_images=frames[1:], duration=durations, loop=0)
    frames[8].save(sys.argv[3])  # mid-attack still
    print("saved", sys.argv[2], sys.argv[3])


if __name__ == "__main__":
    main()
