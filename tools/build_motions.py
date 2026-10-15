"""
Rebuild decoded/assets/gfx/xml/AllMotions.oos for the new dragons, from the pristine backup:
  1. copy the source dragons' entries to the new races   (AugmentMotions)
  2. fit pivots to the new part sizes / re-anchor wings    (fit_new_dragons)
  3. rig neck, head, jaw, legs and tail from the art itself (rig_new_dragons)
  4. write the overrides into the .oos and dump the result as JSON for previews

Run after pack_atlases.py (the rig reads the packed textures).
Usage: python tools/build_motions.py <work_dir>
"""

import json
import os
import plistlib
import subprocess
import sys

from PIL import Image

HERE = os.path.dirname(os.path.abspath(__file__))
BASE = os.path.dirname(HERE)
sys.path.insert(0, HERE)
import fit_new_dragons as F  # noqa: E402
import rig_new_dragons as R  # noqa: E402

CP = os.path.join(HERE, "motions", "build")
BACKUP_OOS = os.path.join(BASE, "phase2-backup", "AllMotions.oos")
OUT_OOS = os.path.join(BASE, "decoded", "assets", "gfx", "xml", "AllMotions.oos")
ATLAS = os.path.join(BASE, "decoded", "assets", "gfx", "unit", "dragon", "fly_dragon")
RIG_PARTS = ["body", "head", "head_1", "neck_1", "neck_2", "neck_3", "neck_4", "neck_5",
             "Front_leg_L_1", "Front_leg_L_2", "Front_foot_L", "Front_leg_R_1", "Front_leg_R_2",
             "Front_foot_R", "Hind_leg_L_1", "Hind_leg_L_2", "Hind_foot_L", "Hind_leg_R_1",
             "Hind_leg_R_2", "Hind_foot_R"]


def java(*args, out=None):
    cmd = ["java", "-cp", CP, *args]
    if out:
        with open(out, "w", encoding="utf-8") as fh:
            subprocess.run(cmd, check=True, stdout=fh)
    else:
        subprocess.run(cmd, check=True)


def main(work):
    aug_oos, aug_json = os.path.join(work, "aug.oos"), os.path.join(work, "aug.json")
    java("AugmentMotions", BACKUP_OOS, aug_oos)
    java("DumpJson", aug_oos, out=aug_json)
    motions = json.load(open(aug_json))

    with open(ATLAS + ".plist", "rb") as fh:
        frames = plistlib.load(fh)["frames"]
    atlas = Image.open(ATLAS + ".png").convert("RGBA")
    sizes = {k: (f["width"], f["height"]) for k, f in frames.items()}

    def tex(key):
        f = frames[key]
        return atlas.crop((f["x"], f["y"], f["x"] + f["width"], f["y"] + f["height"]))

    overrides = F.overrides(motions, sizes)
    for k, v in overrides.items():
        motions[k].update(v)
    for race in F.NEW_TO_SRC:
        parts = {p: tex(f"{race}_{p}.png") for p in RIG_PARTS}
        parts["tail"] = tex(f"{race}_tail_1.png")
        for k, v in R.rig(motions, race, parts).items():
            overrides.setdefault(k, {}).update(v)
            motions[k].update(v)

    tsv = os.path.join(work, "overrides.tsv")
    with open(tsv, "w", encoding="utf-8") as fh:
        for k, d in overrides.items():
            for field, val in d.items():
                fh.write(f"{k}\t{field}\t{float(val)!r}\n")
    java("AugmentMotions", "--apply", aug_oos, OUT_OOS, tsv)
    java("DumpJson", OUT_OOS, out=os.path.join(work, "final.json"))
    print("wrote", OUT_OOS)


if __name__ == "__main__":
    main(sys.argv[1])
