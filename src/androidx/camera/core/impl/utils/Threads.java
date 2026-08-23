package androidx.camera.core.impl.utils;

import android.os.Handler;
import android.os.Looper;
import androidx.core.util.Preconditions;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Threads {
    public static boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public static void checkMainThread() {
        Preconditions.checkState(isMainThread(), "Not in application's main thread");
    }

    public static void runOnMain(Runnable runnable) {
        if (isMainThread()) {
            runnable.run();
        } else {
            Preconditions.checkState(getMainHandler().post(runnable), "Unable to post to main thread");
        }
    }

    public static void runOnMainSync(final Runnable runnable) {
        if (isMainThread()) {
            runnable.run();
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        Preconditions.checkState(getMainHandler().post(new Runnable() { // from class: androidx.camera.core.impl.utils.Threads$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Threads.$r8$lambda$QhFdgKsW1QVHuVXVeUeDa68bDs0(runnable, countDownLatch);
            }
        }), "Unable to post to main thread");
        try {
            if (countDownLatch.await(30000L, TimeUnit.MILLISECONDS)) {
            } else {
                throw new IllegalStateException("Timeout to wait main thread execution");
            }
        } catch (InterruptedException e) {
            throw new InterruptedRuntimeException(e);
        }
    }

    public static /* synthetic */ void $r8$lambda$QhFdgKsW1QVHuVXVeUeDa68bDs0(Runnable runnable, CountDownLatch countDownLatch) {
        try {
            runnable.run();
        } finally {
            countDownLatch.countDown();
        }
    }

    private static Handler getMainHandler() {
        return new Handler(Looper.getMainLooper());
    }
}
