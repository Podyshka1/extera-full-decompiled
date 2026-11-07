package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
abstract class Platform {
    public static boolean isInstanceOfThrowableClass(Throwable th, Class<? extends Throwable> cls) {
        return cls.isInstance(th);
    }

    public static void restoreInterruptIfIsInterruptedException(Throwable th) {
        Preconditions.checkNotNull(th);
        if (th instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
    }

    public static void interruptCurrentThread() {
        Thread.currentThread().interrupt();
    }

    public static void rethrowIfErrorOtherThanStackOverflow(Throwable th) {
        Preconditions.checkNotNull(th);
        if ((th instanceof Error) && !(th instanceof StackOverflowError)) {
            throw ((Error) th);
        }
    }

    public static <V> V get(AbstractFuture<V> abstractFuture) {
        return abstractFuture.blockingGet();
    }

    public static <V> V get(AbstractFuture<V> abstractFuture, long j, TimeUnit timeUnit) {
        return abstractFuture.blockingGet(j, timeUnit);
    }
}
