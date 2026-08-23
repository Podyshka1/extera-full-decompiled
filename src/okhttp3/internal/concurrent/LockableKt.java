package okhttp3.internal.concurrent;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: loaded from: classes5.dex */
public final class LockableKt {
    public static final void wait(Lockable lockable) throws InterruptedException {
        Intrinsics.checkNotNullParameter(lockable, "<this>");
        lockable.wait();
    }

    public static final void notify(Lockable lockable) {
        Intrinsics.checkNotNullParameter(lockable, "<this>");
        lockable.notify();
    }

    public static final void notifyAll(Lockable lockable) {
        Intrinsics.checkNotNullParameter(lockable, "<this>");
        lockable.notifyAll();
    }

    public static final void awaitNanos(Lockable lockable, long j) throws InterruptedException {
        Intrinsics.checkNotNullParameter(lockable, "<this>");
        long j2 = j / 1000000;
        long j3 = j - (1000000 * j2);
        if (j2 > 0 || j > 0) {
            lockable.wait(j2, (int) j3);
        }
    }

    public static final void assertLockNotHeld(Lockable lockable) {
        Intrinsics.checkNotNullParameter(lockable, "<this>");
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(lockable)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + lockable);
        }
    }

    public static final void assertLockHeld(Lockable lockable) {
        Intrinsics.checkNotNullParameter(lockable, "<this>");
        if (!_UtilJvmKt.assertionsEnabled || Thread.holdsLock(lockable)) {
            return;
        }
        throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + lockable);
    }

    public static final <T> T withLock(Lockable lockable, Function0<? extends T> action) {
        T tInvoke;
        Intrinsics.checkNotNullParameter(lockable, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        synchronized (lockable) {
            try {
                tInvoke = action.invoke();
                InlineMarker.finallyStart(1);
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        InlineMarker.finallyEnd(1);
        return tInvoke;
    }
}
