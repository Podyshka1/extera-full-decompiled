package androidx.camera.camera2.pipe.compat;

import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;

/* JADX INFO: loaded from: classes3.dex */
public abstract class VirtualCameraKt {
    private static final AtomicInt virtualCameraDebugIds = AtomicFU.atomic(0);
    private static final AtomicInt androidCameraDebugIds = AtomicFU.atomic(0);

    public static final AtomicInt getVirtualCameraDebugIds() {
        return virtualCameraDebugIds;
    }

    public static final AtomicInt getAndroidCameraDebugIds() {
        return androidCameraDebugIds;
    }
}
