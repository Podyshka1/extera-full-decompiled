package org.webrtc;

import java.util.concurrent.atomic.AtomicInteger;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes8.dex */
class RefCountDelegate implements RefCounted {
    private final AtomicInteger refCount = new AtomicInteger(1);
    private final Runnable releaseCallback;

    public RefCountDelegate(Runnable runnable) {
        this.releaseCallback = runnable;
    }

    @Override // org.webrtc.RefCounted
    public void retain() {
        if (this.refCount.incrementAndGet() >= 2) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("retain() called on an object with refcount < 1");
    }

    @Override // org.webrtc.RefCounted
    public void release() {
        Runnable runnable;
        int iDecrementAndGet = this.refCount.decrementAndGet();
        if (iDecrementAndGet < 0) {
            Segment$$ExternalSyntheticBUOutline1.m973m("release() called on an object with refcount < 1");
        } else {
            if (iDecrementAndGet != 0 || (runnable = this.releaseCallback) == null) {
                return;
            }
            runnable.run();
        }
    }

    public boolean safeRetain() {
        int i = this.refCount.get();
        while (i != 0) {
            if (this.refCount.weakCompareAndSet(i, i + 1)) {
                return true;
            }
            i = this.refCount.get();
        }
        return false;
    }
}
