package androidx.camera.core.impl.utils;

import android.view.Surface;

/* JADX INFO: loaded from: classes3.dex */
public class SurfaceUtil {
    private static native int[] nativeGetSurfaceInfo(Surface surface);

    static {
        System.loadLibrary("surface_util_jni");
    }
}
