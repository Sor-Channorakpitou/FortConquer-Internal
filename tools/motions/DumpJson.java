import com.droidhen.andplugin.FlashMotionCache.KeyFrameInfo;
import com.droidhen.andplugin.FlashMotionCache.MotionInfo;
import java.io.*;
import java.util.*;

/** Usage: DumpJson <in.oos> — prints every MotionInfo (with keyframes) as JSON. */
public class DumpJson {
    public static void main(String[] args) throws Exception {
        HashMap<String, MotionInfo> map = AugmentMotions.read(args[0]);
        StringBuilder sb = new StringBuilder("{");
        boolean first = true;
        for (Map.Entry<String, MotionInfo> e : new TreeMap<>(map).entrySet()) {
            MotionInfo m = e.getValue();
            if (!first) sb.append(",\n");
            first = false;
            sb.append(String.format(Locale.ROOT,
                "\"%s\":{\"w\":%f,\"h\":%f,\"left\":%f,\"top\":%f,\"gx\":%f,\"gy\":%f,\"px\":%f,\"py\":%f,\"rot\":%f,\"sx\":%f,\"sy\":%f,\"kf\":[",
                e.getKey(), m.width, m.height, m.left, m.top, m.geomPointX, m.geomPointY, m.pX, m.pY, m.pRotation, m.pScaleX, m.pScaleY));
            if (m.keyFrameCache != null) {
                for (int i = 0; i < m.keyFrameCache.size(); i++) {
                    KeyFrameInfo k = m.keyFrameCache.get(i);
                    if (i > 0) sb.append(',');
                    sb.append(String.format(Locale.ROOT,
                        "{\"i\":%d,\"ff\":%d,\"blank\":%b,\"x\":%f,\"y\":%f,\"r\":%f,\"sx\":%f,\"sy\":%f}",
                        k.index, k.firstFrame, k.bBlank, k.pX, k.pY, k.rotation, k.pScaleX, k.pScaleY));
                }
            }
            sb.append("]}");
        }
        System.out.println(sb.append("}"));
    }
}
