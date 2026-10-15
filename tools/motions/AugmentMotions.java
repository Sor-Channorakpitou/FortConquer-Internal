import com.droidhen.andplugin.FlashMotionCache.KeyFrameInfo;
import com.droidhen.andplugin.FlashMotionCache.MotionInfo;

import java.io.*;
import java.util.*;

/**
 * Usage: AugmentMotions <in.oos> <out.oos>          augment with new dragons
 *        AugmentMotions --roundtrip <in.oos> <out.oos>  rewrite unchanged (format check)
 *        AugmentMotions --dump <in.oos> <prefix>         print entries for a race prefix
 */
public class AugmentMotions {
    static final String[][] CLONES = {
        {"Earth Dragon",  "Desert Dragon"},
        {"Light Dragon",  "Ice Dragon"},
        {"Poison Dragon", "Swamp dragon"},
        {"Storm Dragon",  "Fire Dragon"},
    };

    @SuppressWarnings("unchecked")
    static HashMap<String, MotionInfo> read(String path) throws Exception {
        try (ObjectInputStream in = new ObjectInputStream(new BufferedInputStream(new FileInputStream(path)))) {
            return (HashMap<String, MotionInfo>) in.readObject();
        }
    }

    static void write(String path, HashMap<String, MotionInfo> map) throws Exception {
        try (ObjectOutputStream out = new ObjectOutputStream(new BufferedOutputStream(new FileOutputStream(path)))) {
            out.writeObject(map);
        }
    }

    static MotionInfo copy(MotionInfo s) {
        MotionInfo d = new MotionInfo();
        d.duration = s.duration; d.elementType = s.elementType; d.fileFullPath = s.fileFullPath;
        d.frameRate = s.frameRate; d.geomPointX = s.geomPointX; d.geomPointY = s.geomPointY;
        d.height = s.height; d.left = s.left; d.pRotation = s.pRotation; d.pScaleX = s.pScaleX;
        d.pScaleY = s.pScaleY; d.pX = s.pX; d.pY = s.pY; d.top = s.top; d.width = s.width;
        if (s.keyFrameCache != null) {
            d.keyFrameCache = new ArrayList<>();
            for (KeyFrameInfo k : s.keyFrameCache) {
                KeyFrameInfo n = new KeyFrameInfo();
                n.bBlank = k.bBlank; n.ease = k.ease; n.firstFrame = k.firstFrame; n.index = k.index;
                n.pScaleX = k.pScaleX; n.pScaleY = k.pScaleY; n.pX = k.pX; n.pY = k.pY; n.rotation = k.rotation;
                d.keyFrameCache.add(n);
            }
        }
        return d;
    }

    public static void main(String[] args) throws Exception {
        if (args[0].equals("--roundtrip")) {
            write(args[2], read(args[1]));
            return;
        }
        if (args[0].equals("--apply")) {
            // --apply <in.oos> <out.oos> <overrides.tsv>; lines: key<TAB>field<TAB>value
            HashMap<String, MotionInfo> map = read(args[1]);
            int n = 0;
            for (String line : java.nio.file.Files.readAllLines(new File(args[3]).toPath())) {
                if (line.isBlank()) continue;
                String[] p = line.split("\t");
                MotionInfo m = map.get(p[0]);
                if (m == null) throw new IllegalStateException("no entry " + p[0]);
                float v = Float.parseFloat(p[2]);
                switch (p[1]) {
                    case "w": m.width = v; break;
                    case "h": m.height = v; break;
                    case "left": m.left = v; break;
                    case "top": m.top = v; break;
                    case "px": m.pX = v; break;
                    case "py": m.pY = v; break;
                    case "sx": m.pScaleX = v; break;
                    case "sy": m.pScaleY = v; break;
                    case "rot": m.pRotation = v; break;
                    case "kfstill":  // hold the part still: no keyframe rotation/offset
                        for (KeyFrameInfo k : m.keyFrameCache) { k.rotation = 0f; k.pX = 0f; k.pY = 0f; }
                        break;
                    default: throw new IllegalArgumentException("field " + p[1]);
                }
                n++;
            }
            write(args[2], map);
            System.out.println("applied " + n + " field overrides");
            return;
        }
        if (args[0].equals("--dump")) {
            TreeMap<String, MotionInfo> sorted = new TreeMap<>(read(args[1]));
            for (Map.Entry<String, MotionInfo> e : sorted.entrySet()) {
                if (!e.getKey().startsWith(args[2])) continue;
                MotionInfo m = e.getValue();
                System.out.printf("%s w=%.1f h=%.1f left=%.1f top=%.1f geom=(%.3f,%.3f) p=(%.1f,%.1f) kf=%d path=%s%n",
                    e.getKey(), m.width, m.height, m.left, m.top, m.geomPointX, m.geomPointY, m.pX, m.pY,
                    m.keyFrameCache == null ? -1 : m.keyFrameCache.size(), m.fileFullPath);
            }
            return;
        }
        HashMap<String, MotionInfo> map = read(args[0]);
        int before = map.size();
        for (String[] c : CLONES) {
            String dst = c[0] + "_", src = c[1] + "_";
            for (String k : map.keySet()) {
                if (k.startsWith(dst)) throw new IllegalStateException("already augmented: " + k);
            }
            int n = 0;
            for (Map.Entry<String, MotionInfo> e : new ArrayList<>(map.entrySet())) {
                if (!e.getKey().startsWith(src)) continue;
                map.put(dst + e.getKey().substring(src.length()), copy(e.getValue()));
                n++;
            }
            if (n == 0) throw new IllegalStateException("no entries for " + src);
            System.out.println(c[1] + " -> " + c[0] + ": " + n + " entries");
        }
        write(args[1], map);
        System.out.println("entries " + before + " -> " + map.size());
    }
}
