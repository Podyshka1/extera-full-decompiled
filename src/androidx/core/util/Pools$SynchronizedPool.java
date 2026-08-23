package androidx.core.util;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class Pools$SynchronizedPool extends Pools$SimplePool {
    private final Object lock;

    public Pools$SynchronizedPool(int i) {
        super(i);
        this.lock = new Object();
    }

    @Override // androidx.core.util.Pools$SimplePool, androidx.core.util.Pools$Pool
    public Object acquire() {
        Object objAcquire;
        synchronized (this.lock) {
            objAcquire = super.acquire();
        }
        return objAcquire;
    }

    @Override // androidx.core.util.Pools$SimplePool, androidx.core.util.Pools$Pool
    public boolean release(Object instance) {
        boolean zRelease;
        Intrinsics.checkNotNullParameter(instance, "instance");
        synchronized (this.lock) {
            zRelease = super.release(instance);
        }
        return zRelease;
    }
}
