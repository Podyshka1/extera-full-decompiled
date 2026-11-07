package androidx.media3.exoplayer.mediacodec;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecBufferEnqueuer$$ExternalSyntheticBackportWithForwarding0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0748xa830b2f {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ boolean m184m(AtomicReference atomicReference, Object obj, Object obj2) {
        while (!atomicReference.compareAndSet(obj, obj2)) {
            if (atomicReference.get() != obj) {
                return false;
            }
        }
        return true;
    }
}
