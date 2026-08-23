package androidx.camera.camera2.pipe.compat;

import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CaptureSessionStateKt {
    private static final AtomicInt captureSessionDebugIds = AtomicFU.atomic(0);

    public static final AtomicInt getCaptureSessionDebugIds() {
        return captureSessionDebugIds;
    }
}
