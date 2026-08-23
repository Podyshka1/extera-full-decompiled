package androidx.camera.camera2.pipe.core;

import android.os.Process;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import okhttp3.internal.url._UrlKt;
import okio.SegmentedByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\t\u001a\u00020\b*\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\b*\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u0010*\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u0013*\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0019\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Landroidx/camera/camera2/pipe/core/AndroidThreads;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "androidPriority", "androidToJavaPriority", "(I)I", "Ljava/util/concurrent/ThreadFactory;", "withAndroidPriority", "(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ThreadFactory;", _UrlKt.FRAGMENT_ENCODE_SET, "namePrefix", "withPrefix", "(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;", "threads", "Ljava/util/concurrent/ExecutorService;", "asFixedSizeThreadPool", "(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;", "Ljava/util/concurrent/ScheduledExecutorService;", "asScheduledThreadPool", "(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ScheduledExecutorService;", _UrlKt.FRAGMENT_ENCODE_SET, "NICE_VALUES", "[I", "factory", "Ljava/util/concurrent/ThreadFactory;", "getFactory", "()Ljava/util/concurrent/ThreadFactory;", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidThreads.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidThreads.kt\nandroidx/camera/camera2/pipe/core/AndroidThreads\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,115:1\n1#2:116\n*E\n"})
public final class AndroidThreads {
    public static final AndroidThreads INSTANCE = new AndroidThreads();
    private static final int[] NICE_VALUES = {19, 16, 13, 10, 0, -2, -4, -5, -6, -8};
    private static final ThreadFactory factory = Executors.defaultThreadFactory();

    private AndroidThreads() {
    }

    public final ThreadFactory getFactory() {
        return factory;
    }

    public final ThreadFactory withAndroidPriority(final ThreadFactory threadFactory, final int i) {
        return new ThreadFactory() { // from class: androidx.camera.camera2.pipe.core.AndroidThreads$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return AndroidThreads.m1473$r8$lambda$jRA0i05wL10EV15Dmt8_svRyC4(i, threadFactory, runnable);
            }
        };
    }

    /* JADX INFO: renamed from: $r8$lambda$jRA0i05wL10-EV15Dmt8_svRyC4, reason: not valid java name */
    public static Thread m1473$r8$lambda$jRA0i05wL10EV15Dmt8_svRyC4(final int i, ThreadFactory threadFactory, final Runnable runnable) {
        int iAndroidToJavaPriority = INSTANCE.androidToJavaPriority(i);
        Thread threadNewThread = threadFactory.newThread(new Runnable() { // from class: androidx.camera.camera2.pipe.core.AndroidThreads$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AndroidThreads.withAndroidPriority$lambda$0$0(i, runnable);
            }
        });
        threadNewThread.setPriority(iAndroidToJavaPriority);
        return threadNewThread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void withAndroidPriority$lambda$0$0(int i, Runnable runnable) {
        Process.setThreadPriority(i);
        runnable.run();
    }

    public final ThreadFactory withPrefix(final ThreadFactory threadFactory, final String str) {
        final AtomicInt atomicIntAtomic = AtomicFU.atomic(0);
        return new ThreadFactory() { // from class: androidx.camera.camera2.pipe.core.AndroidThreads$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return AndroidThreads.$r8$lambda$faLdKNGt__5T6WxQVV9GLghIoxw(threadFactory, str, atomicIntAtomic, runnable);
            }
        };
    }

    public static Thread $r8$lambda$faLdKNGt__5T6WxQVV9GLghIoxw(ThreadFactory threadFactory, String str, AtomicInt atomicInt, Runnable runnable) {
        Thread threadNewThread = threadFactory.newThread(runnable);
        threadNewThread.setName(str + StringsKt.padStart(String.valueOf(atomicInt.incrementAndGet()), 2, '0'));
        return threadNewThread;
    }

    public final ExecutorService asFixedSizeThreadPool(ThreadFactory threadFactory, int i) {
        if (i <= 0) {
            SegmentedByteString$$ExternalSyntheticBUOutline0.m849m("Threads (", i, ") must be > 0");
            return null;
        }
        return Executors.newFixedThreadPool(i, threadFactory);
    }

    public final ScheduledExecutorService asScheduledThreadPool(ThreadFactory threadFactory, int i) {
        if (i <= 0) {
            SegmentedByteString$$ExternalSyntheticBUOutline0.m849m("Threads (", i, ") must be > 0");
            return null;
        }
        return Executors.newScheduledThreadPool(i, threadFactory);
    }

    private final int androidToJavaPriority(int androidPriority) {
        int length = NICE_VALUES.length;
        for (int i = 0; i < length; i++) {
            if (androidPriority >= NICE_VALUES[i]) {
                return i + 1;
            }
        }
        return 10;
    }
}
