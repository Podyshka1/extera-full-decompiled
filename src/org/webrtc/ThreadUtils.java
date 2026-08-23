package org.webrtc;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public class ThreadUtils {

    /* JADX INFO: renamed from: org.webrtc.ThreadUtils$1CaughtException, reason: invalid class name */
    public class C1CaughtException {

        /* JADX INFO: renamed from: e */
        Exception f1092e;
    }

    /* JADX INFO: renamed from: org.webrtc.ThreadUtils$1Result, reason: invalid class name */
    public class C1Result {
        public V value;
    }

    public interface BlockingOperation {
        void run();
    }

    public static class ThreadChecker {
        private Thread thread = Thread.currentThread();

        public void checkIsOnValidThread() {
            if (this.thread == null) {
                this.thread = Thread.currentThread();
            }
            if (Thread.currentThread() == this.thread) {
                return;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("Wrong thread");
        }

        public void detachThread() {
            this.thread = null;
        }
    }

    public static void checkIsOnMainThread() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("Not on main thread!");
    }

    public static void executeUninterruptibly(BlockingOperation blockingOperation) {
        boolean z = false;
        while (true) {
            try {
                blockingOperation.run();
                break;
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public static boolean joinUninterruptibly(Thread thread, long j) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = false;
        long jElapsedRealtime2 = j;
        while (jElapsedRealtime2 > 0) {
            try {
                thread.join(jElapsedRealtime2);
                break;
            } catch (InterruptedException unused) {
                jElapsedRealtime2 = j - (SystemClock.elapsedRealtime() - jElapsedRealtime);
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return !thread.isAlive();
    }

    public static void joinUninterruptibly(final Thread thread) {
        executeUninterruptibly(new BlockingOperation() { // from class: org.webrtc.ThreadUtils.1
            @Override // org.webrtc.ThreadUtils.BlockingOperation
            public void run() throws InterruptedException {
                thread.join();
            }
        });
    }

    public static void awaitUninterruptibly(final CountDownLatch countDownLatch) {
        executeUninterruptibly(new BlockingOperation() { // from class: org.webrtc.ThreadUtils.2
            @Override // org.webrtc.ThreadUtils.BlockingOperation
            public void run() throws InterruptedException {
                countDownLatch.await();
            }
        });
    }

    public static boolean awaitUninterruptibly(CountDownLatch countDownLatch, long j) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zAwait = false;
        long jElapsedRealtime2 = j;
        boolean z = false;
        while (true) {
            try {
                zAwait = countDownLatch.await(jElapsedRealtime2, TimeUnit.MILLISECONDS);
                break;
            } catch (InterruptedException unused) {
                jElapsedRealtime2 = j - (SystemClock.elapsedRealtime() - jElapsedRealtime);
                if (jElapsedRealtime2 <= 0) {
                    z = true;
                    break;
                }
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return zAwait;
    }

    public static <V> V invokeAtFrontUninterruptibly(Handler handler, final Callable<V> callable) {
        if (handler.getLooper().getThread() == Thread.currentThread()) {
            try {
                return callable.call();
            } catch (Exception e) {
                HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
                return null;
            }
        }
        final C1Result c1Result = new C1Result();
        final C1CaughtException c1CaughtException = new C1CaughtException();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        handler.post(new Runnable() { // from class: org.webrtc.ThreadUtils.3
            /* JADX WARN: Type inference failed for: r1v2, types: [V, java.lang.Object] */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    c1Result.value = callable.call();
                } catch (Exception e2) {
                    c1CaughtException.f1092e = e2;
                }
                countDownLatch.countDown();
            }
        });
        awaitUninterruptibly(countDownLatch);
        Exception exc = c1CaughtException.f1092e;
        if (exc != null) {
            RuntimeException runtimeException = new RuntimeException(exc);
            runtimeException.setStackTrace(concatStackTraces(c1CaughtException.f1092e.getStackTrace(), runtimeException.getStackTrace()));
            throw runtimeException;
        }
        return c1Result.value;
    }

    public static void invokeAtFrontUninterruptibly(Handler handler, final Runnable runnable) {
        invokeAtFrontUninterruptibly(handler, new Callable<Void>() { // from class: org.webrtc.ThreadUtils.4
            @Override // java.util.concurrent.Callable
            public Void call() {
                runnable.run();
                return null;
            }
        });
    }

    public static StackTraceElement[] concatStackTraces(StackTraceElement[] stackTraceElementArr, StackTraceElement[] stackTraceElementArr2) {
        StackTraceElement[] stackTraceElementArr3 = new StackTraceElement[stackTraceElementArr.length + stackTraceElementArr2.length];
        System.arraycopy(stackTraceElementArr, 0, stackTraceElementArr3, 0, stackTraceElementArr.length);
        System.arraycopy(stackTraceElementArr2, 0, stackTraceElementArr3, stackTraceElementArr.length, stackTraceElementArr2.length);
        return stackTraceElementArr3;
    }
}
