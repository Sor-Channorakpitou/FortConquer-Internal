"""
Rig the new dragons from the shapes of their own art, posed like the original dragon each one
is modelled on (tools/dragon_targets.py): long neck reaching forward with the head level with
the back, short legs tucked in a flying pose, a long thin tail running straight back.

Everything is placed in the game's world space using the transform the game applies
(UnitPart.setInitSpritePosition): a part's sprite pixel a lands at  X + rc + R·s·(a − rc).

  head   sized and centred like the original's head
  neck   neck_5 → neck_1 spaced along a gentle arch from the shoulder to the back of the skull,
         each rotated to the arch and overlapping the previous piece's open end
  jaw    head_1 (drawn behind the head) tucked into the head's own lower jaw
  legs   thigh → shin → foot from the belly line, trailing back; scale solved so the claws
         reach as far below the belly as the original's
  tail   the rebuilt tail, socket end tucked into the body's rear at the original's height

Wings and body keep the fitted/re-anchored values from fit_new_dragons.
"""

import json
import math
import os

import numpy as np

from compose_dragons import PART_TYPE
from dragon_targets import target

with open(os.path.join(os.path.dirname(os.path.abspath(__file__)), "jaw_offsets.json"), encoding="utf-8") as _fh:
    JAW_OFFSETS = json.load(_fh)

NEW_TO_SRC = {"Earth Dragon": "Desert Dragon", "Light Dragon": "Ice Dragon",
              "Poison Dragon": "Swamp dragon", "Storm Dragon": "Fire Dragon"}

# Tunables (fractions of the body sprite unless noted)
NECK_SOCKET_BAND = 0.06      # body's front socket: centre of its rightmost 6% band
NECK_ARCH = 0.18             # arch height of the neck curve (fraction of its span)
NECK_ROOT_THICK = 0.46       # neck thickness at the shoulders (fraction of body height)
NECK_TIP_THICK = 0.62        # neck thickness under the head (fraction of head height)
NECK_TUCK = 0.40             # how far each piece's left end slides over the previous socket
SOCKET = 0.12                # socket (open end) centre, from the right edge of a neck piece
HEAD_SCALE = (0.80, 1.10)    # head scale limits relative to the body scale
# Per-dragon head fit: scale multiplier, offset (body widths/heights), tilt (degrees, positive
# = nose down), neck thickness under the head and neck arch.
HEAD_TWEAKS = {
    "Earth Dragon": {"scale": 1.15, "dx": 0.04, "dy": 0.10, "rot": 8, "tip": 0.85, "arch": 0.10},
}
FRONT_HIP_U, HIND_HIP_U = 0.72, 0.30
HIP_INSET = 0.62             # fraction of the thigh tucked up into the body
LEG_SCALE = 0.90             # legs relative to the body scale
JOINT_TUCK = 0.32            # knee/ankle overlap (fraction of the piece's height)
# Flying pose: legs folded and trailing back under the belly (thigh/shin/foot, degrees,
# positive = rotated back).
HIND_POSE = (55, 100, 70)
FRONT_POSE = (40, 90, 60)
NEAR_SIDE = (5, 3)           # R (near) legs: offset in world px
FAR_SIDE = (-7, -4)          # L (far) legs
TAIL_ROOT_IN = 0.10          # tail socket point, in from the body's rear edge


def alpha(img):
    return np.asarray(img.getchannel("A")) > 90


def band_anchor(img, side, frac=0.3):
    """Joint point at the left/right/top/bottom end: centre of the opaque band there."""
    a = alpha(img)
    ys, xs = np.nonzero(a)
    x0, x1, y0, y1 = xs.min(), xs.max(), ys.min(), ys.max()
    w, h = x1 - x0 + 1, y1 - y0 + 1
    if side == "left":
        m = xs <= x0 + frac * w
        return x0 + frac * w * 0.5, ys[m].mean()
    if side == "right":
        m = xs >= x1 - frac * w
        return x1 - frac * w * 0.5, ys[m].mean()
    if side == "top":
        m = ys <= y0 + frac * h
        return xs[m].mean(), y0 + frac * h * 0.5
    m = ys >= y1 - frac * h
    return xs[m].mean(), y1 - frac * h * 0.5


def neck_point(img, frac):
    """Point along a neck piece's length (0 = left end, 1 = right end), centred vertically."""
    a = alpha(img)
    ys, xs = np.nonzero(a)
    x = xs.min() + frac * (xs.max() - xs.min())
    col = np.nonzero(a[:, int(round(x))])[0]
    return x, (col.min() + col.max()) / 2


def rc_of(m, part):
    t = PART_TYPE[part]
    if t == 1 or 4 <= t <= 0x1a:
        return m["w"] * m["gx"], m["h"] * m["gy"]
    return m["w"] * m["gx"] + m["left"], m["h"] * m["gy"] + m["top"]


def full_rc(m):
    return m["w"] * m["gx"] + m["left"], m["h"] * m["gy"] + m["top"]


class Placer:
    def __init__(self, motions, race, body_img, tex):
        self.mo, self.race, self.tex = motions, race, tex
        self.out = {}
        b = self.m("body")
        brc = full_rc(b)
        self.bs = b["sx"]
        self.b0 = (b["px"] - brc[0] * b["sx"], b["py"] - brc[1] * b["sy"])
        self.body = body_img
        self.bw, self.bh = body_img.size

    def m(self, part):
        key = f"{self.race}_{part}.xml"
        return dict(self.mo[key], **self.out.get(key, {}))

    def body_pt(self, u, v):
        return self.b0[0] + u * self.bs, self.b0[1] + v * self.bs

    def belly(self, u):
        col = alpha(self.body)[:, int(u)]
        return np.nonzero(col)[0].max()

    def rear(self, v):
        row = alpha(self.body)[int(v), :]
        return np.nonzero(row)[0].min()

    def place(self, part, anchor, world, scale, rot=0.0):
        """Put sprite pixel `anchor` of `part` at `world`; returns the part's world mapper.
        Same transform as the game: world = X + rc + R(rot)·s·(a − rc), rot clockwise."""
        img = self.tex[part]
        m = self.m(part)
        upd = {"w": float(img.width), "h": float(img.height), "left": 0.0, "top": 0.0,
               "sx": scale, "sy": scale, "rot": float(rot)}
        m.update(upd)
        rc = rc_of(m, part)
        c, s_ = math.cos(math.radians(rot)), math.sin(math.radians(rot))

        def M(v):
            return (scale * (c * v[0] - s_ * v[1]), scale * (s_ * v[0] + c * v[1]))

        d = M((anchor[0] - rc[0], anchor[1] - rc[1]))
        X = (world[0] - rc[0] - d[0], world[1] - rc[1] - d[1])
        if part == "tail":  # placed relative to the body (and scaled by it)
            b = self.m("body")
            brc = full_rc(b)
            upd["sx"] = upd["sy"] = scale / b["sx"]
            upd["px"] = (X[0] - b["px"] + brc[0]) / b["sx"] + rc[0]
            upd["py"] = (X[1] - b["py"] + brc[1]) / b["sy"] + rc[1]
        elif part == "head_1":  # placed relative to the head
            h = self.m("head")
            hrc = full_rc(h)
            upd["sx"] = upd["sy"] = scale / h["sx"]
            upd["px"] = (X[0] - h["px"] + hrc[0]) / h["sx"] + rc[0]
            upd["py"] = (X[1] - h["py"] + hrc[1]) / h["sy"] + rc[1]
        else:
            upd["px"], upd["py"] = X[0] + rc[0], X[1] + rc[1]
        self.out[f"{self.race}_{part}.xml"] = upd
        def to_world(a):
            v = M((a[0] - rc[0], a[1] - rc[1]))
            return X[0] + rc[0] + v[0], X[1] + rc[1] + v[1]

        return to_world


def bezier(p0, c, p1, u):
    x = (1 - u) ** 2 * p0[0] + 2 * (1 - u) * u * c[0] + u * u * p1[0]
    y = (1 - u) ** 2 * p0[1] + 2 * (1 - u) * u * c[1] + u * u * p1[1]
    dx = 2 * (1 - u) * (c[0] - p0[0]) + 2 * u * (p1[0] - c[0])
    dy = 2 * (1 - u) * (c[1] - p0[1]) + 2 * u * (p1[1] - c[1])
    return (x, y), math.degrees(math.atan2(dy, dx))


def rig(motions, race, tex):
    """tex: {part: PIL image} for this race. Returns {motion key: field overrides}."""
    goal = target(race)
    p = Placer(motions, race, tex["body"], tex)
    s = p.bs
    by, bx = np.nonzero(alpha(tex["body"]))
    bx0, by0 = p.body_pt(bx.min(), by.min())
    bx1, by1 = p.body_pt(bx.max(), by.max())
    bw, bh = bx1 - bx0, by1 - by0

    # Head: the original's size and position.
    head = tex["head"]
    ha = alpha(head)
    hy, hx = np.nonzero(ha)
    hs = goal["head_w"] * bw / (hx.max() - hx.min())
    hs = min(max(hs, HEAD_SCALE[0] * s), HEAD_SCALE[1] * s)
    tw = HEAD_TWEAKS.get(race, {})
    hs *= tw.get("scale", 1.0)
    hrot = tw.get("rot", 0.0)
    tip_frac, arch = tw.get("tip", NECK_TIP_THICK), tw.get("arch", NECK_ARCH)
    centre = ((hx.min() + hx.max()) / 2, (hy.min() + hy.max()) / 2)
    head_target = (bx1 + (goal["head_cx"] + tw.get("dx", 0.0)) * bw,
                   by0 + (goal["head_cy"] + tw.get("dy", 0.0)) * bh)
    head_world = p.place("head", centre, head_target, hs, hrot)
    col = int(hx.min() + 0.30 * (hx.max() - hx.min()))
    cys = np.nonzero(ha[:, col])[0]
    skull = head_world((col, cys.min() + 0.68 * (cys.max() - cys.min())))

    # Neck: pieces sized by thickness (tapering from the shoulders to the head) and chained
    # end to end along an arch towards the head's target; the head sits where the neck ends.
    head_back = np.nonzero(ha[:, col])[0]
    tip_thick = tip_frac * (head_back.max() - head_back.min()) * hs
    root_thick = NECK_ROOT_THICK * bh
    # The body art has an open socket at its front end where the neck plugs in: start there.
    base = p.body_pt(*band_anchor(tex["body"], "right", NECK_SOCKET_BAND))
    span = math.hypot(skull[0] - base[0], skull[1] - base[1])
    ctrl = ((base[0] + skull[0]) / 2, min(base[1], skull[1]) - arch * span)
    # arc-length table of the curve, to walk along it
    samples = [bezier(base, ctrl, skull, u / 200) for u in range(201)]
    arc = [0.0]
    for (a0, _), (a1, _) in zip(samples, samples[1:]):
        arc.append(arc[-1] + math.hypot(a1[0] - a0[0], a1[1] - a0[1]))

    def along(dist):
        i = min(range(len(arc)), key=lambda k: abs(arc[k] - dist))
        return samples[min(i, len(samples) - 1)]

    dist, joint = 0.0, base
    for n, i in enumerate((5, 4, 3, 2, 1)):
        part = f"neck_{i}"
        img = tex[part]
        mid = neck_point(img, 0.5)
        colm = np.nonzero(alpha(img)[:, int(mid[0])])[0]
        want = root_thick + (tip_thick - root_thick) * n / 4
        ns = want / (colm.max() - colm.min())
        nx = np.nonzero(alpha(img).any(axis=0))[0]
        length = (nx.max() - nx.min()) * ns
        _, ang = along(dist + length * 0.5)
        to_world = p.place(part, neck_point(img, NECK_TUCK), joint, ns, ang)
        joint = to_world(neck_point(img, 1 - SOCKET))
        dist += length * (1 - NECK_TUCK - SOCKET)
    # Head follows the neck: move it so its skull point sits on the last socket.
    shift = (joint[0] - skull[0], joint[1] - skull[1])
    head_world = p.place("head", centre, (head_target[0] + shift[0], head_target[1] + shift[1]), hs, hrot)

    # Jaw: regenerated from the head art (pack_atlases.jaw_from_head); put it exactly where it
    # was cut from, so it lines up with the head's own jaw.
    ox, oy = JAW_OFFSETS[race]
    p.place("head_1", (0.0, 0.0), head_world((ox, oy)), hs, hrot)
    # The head art is painted with its mouth already open, so keep the jaw still (a swinging
    # copy would show a second jaw).
    p.out[f"{race}_head_1.xml"]["kfstill"] = 1.0

    # Legs: trailing back; scale chosen so the claws reach the original's depth below the belly.
    def legs(ls):
        lowest = -1e9
        for front, hip_u in ((True, FRONT_HIP_U), (False, HIND_HIP_U)):
            kind = "Front" if front else "Hind"
            pose = FRONT_POSE if front else HIND_POSE
            for side, off in (("L", FAR_SIDE), ("R", NEAR_SIDE)):
                thigh, shin, foot = f"{kind}_leg_{side}_1", f"{kind}_leg_{side}_2", f"{kind}_foot_{side}"
                u = bx.min() + hip_u * (bx.max() - bx.min())
                th_h = alpha(tex[thigh]).any(axis=1).sum()
                hip = p.body_pt(u, p.belly(u))
                hip = (hip[0] + off[0], hip[1] - HIP_INSET * th_h * ls + off[1])
                w_thigh = p.place(thigh, band_anchor(tex[thigh], "top", 0.25), hip, ls, pose[0])
                knee = w_thigh(band_anchor(tex[thigh], "bottom", JOINT_TUCK))
                w_shin = p.place(shin, band_anchor(tex[shin], "top", JOINT_TUCK), knee, ls, pose[1])
                ankle = w_shin(band_anchor(tex[shin], "bottom", JOINT_TUCK))
                w_foot = p.place(foot, band_anchor(tex[foot], "top", 0.4), ankle, ls, pose[2])
                fy, fx = np.nonzero(alpha(tex[foot]))
                lowest = max(lowest, max(w_foot((x, y))[1] for x, y in zip(fx[::7], fy[::7])))
        return lowest

    legs(LEG_SCALE * s)

    # Tail: socket end tucked into the body's rear at the original's height.
    v = by.min() + goal["tail_cy"] * (by.max() - by.min())
    root = p.body_pt(p.rear(v) + TAIL_ROOT_IN * (bx.max() - bx.min()), v)
    p.place("tail", band_anchor(tex["tail"], "right", 0.08), root, s)
    return p.out
