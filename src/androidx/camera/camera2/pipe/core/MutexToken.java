package androidx.camera.camera2.pipe.core;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes3.dex */
public final class MutexToken implements Token {
    private final AtomicBoolean _released;
    private final Mutex mutex;

    public MutexToken(Mutex mutex) {
        Intrinsics.checkNotNullParameter(mutex, "mutex");
        this.mutex = mutex;
        this._released = AtomicFU.atomic(false);
    }

    @Override // androidx.camera.camera2.pipe.core.Token
    public boolean getReleased() {
        return this._released.getValue();
    }

    @Override // androidx.camera.camera2.pipe.core.Token
    public boolean release() {
        if (!this._released.compareAndSet(false, true)) {
            return false;
        }
        Mutex.DefaultImpls.unlock$default(this.mutex, null, 1, null);
        return true;
    }
}
