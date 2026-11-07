package androidx.camera.core.impl;

import com.exteragram.messenger.plugins.PluginsConstants;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraMode {
    public static String toLabelString(int i) {
        if (i == 1) {
            return "CONCURRENT_CAMERA";
        }
        if (i == 2) {
            return "ULTRA_HIGH_RESOLUTION_CAMERA";
        }
        return PluginsConstants.Strategy.DEFAULT;
    }
}
