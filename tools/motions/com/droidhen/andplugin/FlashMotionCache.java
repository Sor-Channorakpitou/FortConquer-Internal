package com.droidhen.andplugin;

import java.io.Serializable;
import java.util.ArrayList;

// Field-for-field mirror of the game's classes so Java serialization matches the APK.
public class FlashMotionCache {
    public static class MotionInfo implements Serializable {
        private static final long serialVersionUID = 0x30ec5fb14c5b6aabL;
        public int duration;
        public String elementType;
        public String fileFullPath;
        public int frameRate;
        public float geomPointX;
        public float geomPointY;
        public float height;
        public ArrayList<KeyFrameInfo> keyFrameCache;
        public float left;
        public float pRotation;
        public float pScaleX;
        public float pScaleY;
        public float pX;
        public float pY;
        public float top;
        public float width;
    }

    public static class KeyFrameInfo implements Serializable {
        private static final long serialVersionUID = 0x0fdf30eb971eb338L;
        public boolean bBlank;
        public float ease;
        public int firstFrame;
        public int index;
        public float pScaleX;
        public float pScaleY;
        public float pX;
        public float pY;
        public float rotation;
    }
}
