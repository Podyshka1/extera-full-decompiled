package kotlinx.coroutines.sync;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public interface Semaphore {
    Object acquire(Continuation continuation);

    int getAvailablePermits();

    void release();
}
