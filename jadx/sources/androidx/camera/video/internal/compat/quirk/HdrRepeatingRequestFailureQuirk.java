package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.Quirk;

/* JADX INFO: loaded from: classes4.dex */
public class HdrRepeatingRequestFailureQuirk implements Quirk {
    static boolean load() {
        return isSamsungS25Ultra();
    }

    private static boolean isSamsungS25Ultra() {
        return "samsung".equalsIgnoreCase(Build.BRAND) && "pa3q".equalsIgnoreCase(Build.DEVICE);
    }

    public boolean workaroundBySurfaceProcessing(DynamicRange dynamicRange) {
        return isSamsungS25Ultra() && (dynamicRange != DynamicRange.SDR);
    }
}
