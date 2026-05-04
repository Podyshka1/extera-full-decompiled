package com.google.android.exoplayer2.mediacodec;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding1 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1210xa830b30 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ boolean m228m(AtomicReference atomicReference, Object obj, Object obj2) {
        while (!atomicReference.compareAndSet(obj, obj2)) {
            if (atomicReference.get() != obj) {
                return false;
            }
        }
        return true;
    }
}
