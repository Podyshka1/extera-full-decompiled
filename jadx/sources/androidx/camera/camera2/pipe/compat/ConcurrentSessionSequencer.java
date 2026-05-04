package androidx.camera.camera2.pipe.compat;

import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes3.dex */
public final class ConcurrentSessionSequencer {
    private final Mutex sharedMutex = MutexKt.Mutex$default(false, 1, null);

    public final Mutex getSharedMutex() {
        return this.sharedMutex;
    }
}
