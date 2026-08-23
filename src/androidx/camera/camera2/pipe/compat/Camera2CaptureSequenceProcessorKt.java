package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.RequestNumber;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.atomicfu.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Camera2CaptureSequenceProcessorKt {
    private static final AtomicInt captureSequenceProcessorDebugIds = AtomicFU.atomic(0);
    private static final AtomicLong captureSequenceDebugIds = AtomicFU.atomic(0L);
    private static final AtomicLong requestTags = AtomicFU.atomic(0L);

    public static final AtomicInt getCaptureSequenceProcessorDebugIds() {
        return captureSequenceProcessorDebugIds;
    }

    public static final AtomicLong getCaptureSequenceDebugIds() {
        return captureSequenceDebugIds;
    }

    public static final long nextRequestNumber() {
        return RequestNumber.m1748constructorimpl(requestTags.incrementAndGet());
    }
}
