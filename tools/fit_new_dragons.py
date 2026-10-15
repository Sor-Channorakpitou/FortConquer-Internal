"""
Fit borrowed motion data to the new dragons' own part sizes.

For every "{new race}_{part}.xml" entry the box (width/left, height/top) is scaled by
newTexture/sourceTexture so that the pivot (w*gx+left, h*gy+top) lands on the same
relative spot of the new sprite. Returns {motion key: {"w","h","left","top"}}.
"""
import os
import plistlib

BASE = r"E:\Game Development\FortConquer-Dev"
NEW_TO_SRC = {"Earth Dragon": "Desert Dragon", "Light Dragon": "Ice Dragon",
              "Poison Dragon": "Swamp dragon", "Storm Dragon": "Fire Dragon"}


def frame_sizes(plist_path):
    with open(plist_path, "rb") as fh:
        return {k: (f["width"], f["height"]) for k, f in plistlib.load(fh)["frames"].items()}


def texture_key(race, part):
    return f"{race}_{part}_1.png" if part == "tail" else f"{race}_{part}.png"


def fitted(motions, body_frames):
    out = {}
    for new, src in NEW_TO_SRC.items():
        for key, m in motions.items():
            if not key.startswith(new + "_"):
                continue
            part = key[len(new) + 1:-len(".xml")]
            a, b = body_frames.get(texture_key(new, part)), body_frames.get(texture_key(src, part))
            if not a or not b or part == "tail":
                continue  # wings/attack reuse source pixels; tail frames are built at source size
            rx, ry = a[0] / b[0], a[1] / b[1]
            out[key] = {"w": m["w"] * rx, "left": m["left"] * rx, "h": m["h"] * ry, "top": m["top"] * ry}
    return out


SKIP_REANCHOR = {"body", "tail", "head_1"}  # tail/head_1 are placed relative to body/head by the game


def body_rect(m, tex_w, tex_h):
    """World rect of the body sprite at rest (pivot is at (pX, pY), scale about the pivot)."""
    rcx, rcy = m["w"] * m["gx"] + m["left"], m["h"] * m["gy"] + m["top"]
    x0 = m["px"] - rcx * m["sx"]
    y0 = m["py"] - rcy * m["sy"]
    return x0, y0, tex_w * m["sx"], tex_h * m["sy"]


def reanchored(motions, body_frames, fit):
    """Move each joint (pX, pY) to the same relative spot on the new body."""
    out = {}
    for new, src in NEW_TO_SRC.items():
        sb = motions[f"{src}_body.xml"]
        nb = dict(motions[f"{new}_body.xml"], **fit.get(f"{new}_body.xml", {}))
        sx0, sy0, sw, sh = body_rect(sb, *body_frames[f"{src}_body.png"])
        nx0, ny0, nw, nh = body_rect(nb, *body_frames[f"{new}_body.png"])
        for key, m in motions.items():
            if not key.startswith(new + "_"):
                continue
            part = key[len(new) + 1:-len(".xml")]
            if part in SKIP_REANCHOR:
                continue
            src_m = motions.get(f"{src}_{part}.xml")
            if src_m is None:
                continue
            u, v = (src_m["px"] - sx0) / sw, (src_m["py"] - sy0) / sh
            out[key] = {"px": nx0 + u * nw, "py": ny0 + v * nh}
    return out


TAIL_PAD = 12  # must match pack_atlases.TAIL_PAD (rows added above the rebuilt tail frames)


def overrides(motions, body_frames):
    """All per-key field changes for the new dragons."""
    fit = fitted(motions, body_frames)
    out = {k: dict(v) for k, v in fit.items()}
    for k, v in reanchored(motions, body_frames, fit).items():
        out.setdefault(k, {}).update(v)
    for new in NEW_TO_SRC:
        key = f"{new}_tail.xml"
        out.setdefault(key, {})["py"] = motions[key]["py"] - TAIL_PAD * motions[key]["sy"]
    return out
