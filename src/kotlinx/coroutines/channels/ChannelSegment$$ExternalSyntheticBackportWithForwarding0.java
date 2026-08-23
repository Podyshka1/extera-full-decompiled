package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class ChannelSegment$$ExternalSyntheticBackportWithForwarding0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ boolean m1091m(AtomicReferenceArray atomicReferenceArray, int i, Object obj, Object obj2) {
        while (!atomicReferenceArray.compareAndSet(i, obj, obj2)) {
            if (atomicReferenceArray.get(i) != obj) {
                return false;
            }
        }
        return true;
    }
}
