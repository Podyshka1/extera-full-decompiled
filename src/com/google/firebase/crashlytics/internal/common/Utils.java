package com.google.firebase.crashlytics.internal.common;

import android.os.Looper;
import com.google.android.gms.internal.cast.zzaak$$ExternalSyntheticBUOutline0;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Utils {
    private static final ExecutorService TASK_CONTINUATION_EXECUTOR_SERVICE = ExecutorUtils.buildSingleThreadExecutorService("awaitEvenIfOnMainThread task continuation executor");

    @Deprecated
    public static <T> T awaitEvenIfOnMainThread(Task<T> task) throws InterruptedException, TimeoutException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        task.continueWith(TASK_CONTINUATION_EXECUTOR_SERVICE, new Continuation() { // from class: com.google.firebase.crashlytics.internal.common.Utils$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return Utils.m3221$r8$lambda$4ODRW4YtgOypI4EnuCu0xhdi2o(countDownLatch, task2);
            }
        });
        Looper mainLooper = Looper.getMainLooper();
        Looper looperMyLooper = Looper.myLooper();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (mainLooper == looperMyLooper) {
            countDownLatch.await(3000L, timeUnit);
        } else {
            countDownLatch.await(4000L, timeUnit);
        }
        if (task.isSuccessful()) {
            return task.getResult();
        }
        if (task.isCanceled()) {
            throw new CancellationException("Task is already canceled");
        }
        if (task.isComplete()) {
            zzaak$$ExternalSyntheticBUOutline0.m304m(task.getException());
            return null;
        }
        throw new TimeoutException();
    }

    /* JADX INFO: renamed from: $r8$lambda$4ODRW-4YtgOypI4EnuCu0xhdi2o, reason: not valid java name */
    public static /* synthetic */ Object m3221$r8$lambda$4ODRW4YtgOypI4EnuCu0xhdi2o(CountDownLatch countDownLatch, Task task) {
        countDownLatch.countDown();
        return null;
    }

    public static boolean awaitUninterruptibly(CountDownLatch countDownLatch, long j, TimeUnit timeUnit) {
        boolean z = false;
        try {
            long nanos = timeUnit.toNanos(j);
            while (true) {
                try {
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                    nanos = (System.nanoTime() + nanos) - System.nanoTime();
                }
            }
            return countDownLatch.await(nanos, TimeUnit.NANOSECONDS);
        } finally {
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
