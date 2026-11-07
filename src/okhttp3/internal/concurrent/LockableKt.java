package okhttp3.internal.concurrent;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticBUOutline1;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0080\b\u001a\r\u0010\b\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\r\u0010\t\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a6\u0010\n\u001a\u0002H\u000b\"\u0004\b\u0000\u0010\u000b*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\rH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u000e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000f"}, d2 = {"wait", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/concurrent/Lockable;", "notify", "notifyAll", "awaitNanos", "nanos", _UrlKt.FRAGMENT_ENCODE_SET, "assertLockNotHeld", "assertLockHeld", "withLock", "T", "action", "Lkotlin/Function0;", "(Lokhttp3/internal/concurrent/Lockable;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "okhttp"}, m910k = 2, mv = {2, 2, 0}, xi = 48)
public final class LockableKt {
    public static final void wait(Lockable lockable) throws InterruptedException {
        lockable.wait();
    }

    public static final void notify(Lockable lockable) {
        lockable.notify();
    }

    public static final void notifyAll(Lockable lockable) {
        lockable.notifyAll();
    }

    public static final void awaitNanos(Lockable lockable, long j) throws InterruptedException {
        long j2 = j / 1000000;
        long j3 = j - (1000000 * j2);
        if (j2 > 0 || j > 0) {
            lockable.wait(j2, (int) j3);
        }
    }

    public static final void assertLockNotHeld(Lockable lockable) {
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(lockable)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline1.m957m(Thread.currentThread().getName(), " MUST NOT hold lock on ", lockable);
        }
    }

    public static final void assertLockHeld(Lockable lockable) {
        if (!_UtilJvmKt.assertionsEnabled || Thread.holdsLock(lockable)) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticBUOutline1.m957m(Thread.currentThread().getName(), " MUST hold lock on ", lockable);
    }

    public static final <T> T withLock(Lockable lockable, Function0<? extends T> function0) {
        T tInvoke;
        synchronized (lockable) {
            try {
                tInvoke = function0.invoke();
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
