package androidx.camera.camera2.pipe.core;

import android.os.Process;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidThreads {
    public static final AndroidThreads INSTANCE = new AndroidThreads();
    private static final int[] NICE_VALUES = {19, 16, 13, 10, 0, -2, -4, -5, -6, -8};
    private static final ThreadFactory factory;

    private AndroidThreads() {
    }

    static {
        ThreadFactory threadFactoryDefaultThreadFactory = Executors.defaultThreadFactory();
        Intrinsics.checkNotNullExpressionValue(threadFactoryDefaultThreadFactory, "defaultThreadFactory(...)");
        factory = threadFactoryDefaultThreadFactory;
    }

    public final ThreadFactory getFactory() {
        return factory;
    }

    public final ThreadFactory withAndroidPriority(final ThreadFactory threadFactory, final int i) {
        Intrinsics.checkNotNullParameter(threadFactory, "<this>");
        return new ThreadFactory() { // from class: androidx.camera.camera2.pipe.core.AndroidThreads$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return AndroidThreads.withAndroidPriority$lambda$0(i, threadFactory, runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread withAndroidPriority$lambda$0(final int i, ThreadFactory threadFactory, final Runnable runnable) {
        int iAndroidToJavaPriority = INSTANCE.androidToJavaPriority(i);
        Thread threadNewThread = threadFactory.newThread(new Runnable() { // from class: androidx.camera.camera2.pipe.core.AndroidThreads$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AndroidThreads.withAndroidPriority$lambda$0$0(i, runnable);
            }
        });
        Intrinsics.checkNotNullExpressionValue(threadNewThread, "newThread(...)");
        threadNewThread.setPriority(iAndroidToJavaPriority);
        return threadNewThread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void withAndroidPriority$lambda$0$0(int i, Runnable runnable) {
        Process.setThreadPriority(i);
        runnable.run();
    }

    public final ThreadFactory withPrefix(final ThreadFactory threadFactory, final String namePrefix) {
        Intrinsics.checkNotNullParameter(threadFactory, "<this>");
        Intrinsics.checkNotNullParameter(namePrefix, "namePrefix");
        final AtomicInt atomicIntAtomic = AtomicFU.atomic(0);
        return new ThreadFactory() { // from class: androidx.camera.camera2.pipe.core.AndroidThreads$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return AndroidThreads.withPrefix$lambda$0(threadFactory, namePrefix, atomicIntAtomic, runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread withPrefix$lambda$0(ThreadFactory threadFactory, String str, AtomicInt atomicInt, Runnable runnable) {
        Thread threadNewThread = threadFactory.newThread(runnable);
        Intrinsics.checkNotNullExpressionValue(threadNewThread, "newThread(...)");
        threadNewThread.setName(str + StringsKt.padStart(String.valueOf(atomicInt.incrementAndGet()), 2, '0'));
        return threadNewThread;
    }

    public final ExecutorService asFixedSizeThreadPool(ThreadFactory threadFactory, int i) {
        Intrinsics.checkNotNullParameter(threadFactory, "<this>");
        if (i <= 0) {
            throw new IllegalArgumentException(("Threads (" + i + ") must be > 0").toString());
        }
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(i, threadFactory);
        Intrinsics.checkNotNullExpressionValue(executorServiceNewFixedThreadPool, "newFixedThreadPool(...)");
        return executorServiceNewFixedThreadPool;
    }

    public final ScheduledExecutorService asScheduledThreadPool(ThreadFactory threadFactory, int i) {
        Intrinsics.checkNotNullParameter(threadFactory, "<this>");
        if (i <= 0) {
            throw new IllegalArgumentException(("Threads (" + i + ") must be > 0").toString());
        }
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(i, threadFactory);
        Intrinsics.checkNotNullExpressionValue(scheduledExecutorServiceNewScheduledThreadPool, "newScheduledThreadPool(...)");
        return scheduledExecutorServiceNewScheduledThreadPool;
    }

    private final int androidToJavaPriority(int i) {
        int length = NICE_VALUES.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i >= NICE_VALUES[i2]) {
                return i2 + 1;
            }
        }
        return 10;
    }
}
