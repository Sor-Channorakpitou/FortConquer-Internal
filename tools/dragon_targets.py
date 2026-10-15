"""
Proportions each new dragon is rigged to, taken from its original "inspiration" dragon
(measured with tools/measure_dragon.py on the unmodified originals). All values are relative
to the body's box: x in body widths from the body's front edge, y in body heights from its top.

  head_cx/head_cy  head centre     head_w      head width
  feet_below       lowest claw below the belly
  tail_reach       tail tip behind the body's rear edge
  tail_cy          tail height     tail_thick  tail thickness where it meets the body

Small clamps keep the new art readable where the original's style differs a lot
(e.g. the Ice Dragon's legs are almost hidden in its fur).
"""

TARGETS = {
    #                 source           head_cx head_cy head_w feet  t_reach t_cy  t_thick
    "Earth Dragon":  ("Desert Dragon", 0.65, 0.32, 0.49, 0.48, 0.96, 0.58, 0.27),
    "Light Dragon":  ("Ice Dragon",    0.67, 0.34, 0.44, 0.18, 1.06, 0.40, 0.16),
    "Poison Dragon": ("Swamp dragon",  0.63, 0.44, 0.66, 0.24, 0.89, 0.58, 0.24),
    "Storm Dragon":  ("Fire Dragon",   0.61, 0.41, 0.70, 0.59, 0.96, 0.59, 0.39),
}
KEYS = ("source", "head_cx", "head_cy", "head_w", "feet_below", "tail_reach", "tail_cy", "tail_thick")

CLAMPS = {"head_w": (0.50, 0.62), "feet_below": (0.32, 0.55), "tail_thick": (0.22, 0.36)}


def target(race):
    t = dict(zip(KEYS, TARGETS[race]))
    for k, (lo, hi) in CLAMPS.items():
        t[k] = min(max(t[k], lo), hi)
    return t
