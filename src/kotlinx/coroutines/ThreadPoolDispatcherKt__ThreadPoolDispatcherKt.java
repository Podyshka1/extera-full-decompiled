package kotlinx.coroutines;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.SegmentedByteString$$ExternalSyntheticBUOutline0;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, d2 = {"newFixedThreadPoolContext", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "nThreads", _UrlKt.FRAGMENT_ENCODE_SET, "name", _UrlKt.FRAGMENT_ENCODE_SET, "kotlinx-coroutines-core"}, m754k = 5, mv = {2, 1, 0}, xi = 48, xs = "kotlinx/coroutines/ThreadPoolDispatcherKt")
@SourceDebugExtension({"SMAP\nThreadPoolDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadPoolDispatcher.kt\nkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n1#2:19\n*E\n"})
abstract /* synthetic */ class ThreadPoolDispatcherKt__ThreadPoolDispatcherKt {
    public static final ExecutorCoroutineDispatcher newFixedThreadPoolContext(final int i, final String str) {
        if (i < 1) {
            SegmentedByteString$$ExternalSyntheticBUOutline0.m849m("Expected at least one thread, but ", i, " specified");
            return null;
        }
        final AtomicInteger atomicInteger = new AtomicInteger();
        return ExecutorsKt.from(Executors.unconfigurableExecutorService(Executors.newScheduledThreadPool(i, new ThreadFactory() { // from class: kotlinx.coroutines.ThreadPoolDispatcherKt__ThreadPoolDispatcherKt$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return ThreadPoolDispatcherKt__ThreadPoolDispatcherKt.m815x4b117c4c(i, str, atomicInteger, runnable);
            }
        })));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: newFixedThreadPoolContext$lambda$2$ThreadPoolDispatcherKt__ThreadPoolDispatcherKt */
    public static final Thread m815x4b117c4c(int i, String str, AtomicInteger atomicInteger, Runnable runnable) {
        if (i != 1) {
            str = str + SignatureVisitor.SUPER + atomicInteger.incrementAndGet();
        }
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(true);
        return thread;
    }
}
