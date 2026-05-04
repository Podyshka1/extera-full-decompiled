package com.yandex.runtime.view.internal;

import android.view.Surface;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class PlatformVulkanRenderer {
    private NativeObject nativeObject;

    private static native NativeObject createNative(boolean z);

    public native boolean isDebugModeEnabled();

    public native void surfaceChanged(Surface surface, int i, int i2);

    public native void surfaceCreated(Surface surface, int i, int i2);

    public native void surfaceDestroyed(Surface surface);

    public PlatformVulkanRenderer(boolean z) {
        this.nativeObject = null;
        this.nativeObject = createNative(z);
    }
}
