"""Measure a composed dragon's proportions (relative to its body box) for matching new dragons
to the original ones. Usage: python tools/measure_dragon.py <motions.json>"""
import json
import sys

import numpy as np

import compose_dragons as C

GROUPS = {
    "head": ["head"], "neck": ["neck_1", "neck_2", "neck_3", "neck_4", "neck_5"],
    "legs": ["Front_leg_L_1", "Front_leg_L_2", "Front_foot_L", "Front_leg_R_1", "Front_leg_R_2",
             "Front_foot_R", "Hind_leg_L_1", "Hind_leg_L_2", "Hind_foot_L", "Hind_leg_R_1",
             "Hind_leg_R_2", "Hind_foot_R"],
    "tail": ["tail"], "body": ["body"], "wings": ["wing_L", "wing_R"],
}


def boxes(race, src, motions, body, wings):
    out = {}
    order = C.DRAW_ORDER
    for g, parts in GROUPS.items():
        C.DRAW_ORDER = parts
        img = C.compose(race, src, motions, body, wings, size=(700, 400), origin=(-60, -60))
        a = np.asarray(img.getchannel("A")) > 60
        ys, xs = np.nonzero(a)
        out[g] = (xs.min(), ys.min(), xs.max(), ys.max(), a)
    C.DRAW_ORDER = order
    return out


def metrics(race, src, motions, body, wings):
    b = boxes(race, src, motions, body, wings)
    bx0, by0, bx1, by1, _ = b["body"]
    bw, bh = bx1 - bx0, by1 - by0
    hx0, hy0, hx1, hy1, _ = b["head"]
    tx0, ty0, tx1, ty1, ta = b["tail"]
    lx0, ly0, lx1, ly1, _ = b["legs"]
    col = ta[:, tx1 - 3]  # tail thickness near the body
    return {
        "head_cx": ((hx0 + hx1) / 2 - bx1) / bw, "head_cy": ((hy0 + hy1) / 2 - by0) / bh,
        "head_w": (hx1 - hx0) / bw,
        "feet_below": (ly1 - by1) / bh,
        "tail_reach": (bx0 - tx0) / bw, "tail_cy": ((ty0 + ty1) / 2 - by0) / bh,
        "tail_thick": col.sum() / bh,
    }


if __name__ == "__main__":
    m = json.load(open(sys.argv[1]))
    body, wings = C.Atlas("fly_dragon"), C.Atlas("dragon_wing")
    for o, n in [("Desert Dragon", "Earth Dragon"), ("Ice Dragon", "Light Dragon"),
                 ("Swamp dragon", "Poison Dragon"), ("Fire Dragon", "Storm Dragon")]:
        a, c = metrics(o, o, m, body, wings), metrics(n, o, m, body, wings)
        print(f"{o:14s}", " ".join(f"{k}={v:5.2f}" for k, v in a.items()))
        print(f"{n:14s}", " ".join(f"{k}={v:5.2f}" for k, v in c.items()))
