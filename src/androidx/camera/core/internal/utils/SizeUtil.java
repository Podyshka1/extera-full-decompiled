package androidx.camera.core.internal.utils;

import android.util.Size;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SizeUtil {
    public static final Size RESOLUTION_ZERO = new Size(0, 0);
    public static final Size RESOLUTION_QVGA = new Size(320, 240);
    public static final Size RESOLUTION_VGA = new Size(640, 480);
    public static final Size RESOLUTION_480P = new Size(720, 480);
    public static final Size RESOLUTION_720P = new Size(1280, 720);
    public static final Size RESOLUTION_1080P = new Size(1920, 1080);
    public static final Size RESOLUTION_1440P = new Size(1920, 1440);
    public static final Size RESOLUTION_1440P_16_9 = new Size(2560, 1440);
    public static final Size RESOLUTION_UHD = new Size(3840, 2160);

    public static int getArea(int i, int i2) {
        return i * i2;
    }

    public static int getArea(Size size) {
        return getArea(size.getWidth(), size.getHeight());
    }

    public static boolean isSmallerByArea(Size size, Size size2) {
        return getArea(size) < getArea(size2);
    }

    public static Object findNearestHigherFor(Size size, TreeMap treeMap) {
        Map.Entry entryCeilingEntry = treeMap.ceilingEntry(size);
        if (entryCeilingEntry != null) {
            return entryCeilingEntry.getValue();
        }
        Map.Entry entryFloorEntry = treeMap.floorEntry(size);
        if (entryFloorEntry != null) {
            return entryFloorEntry.getValue();
        }
        return null;
    }
}
