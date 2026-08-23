package androidx.work;

import androidx.tracing.Trace;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class ConfigurationKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Executor createDefaultExecutor(final boolean z) {
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactory() { // from class: androidx.work.ConfigurationKt$createDefaultExecutor$factory$1
            private final AtomicInteger threadCount = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Intrinsics.checkNotNullParameter(runnable, "runnable");
                return new Thread(runnable, (z ? "WM.task-" : "androidx.work-") + this.threadCount.incrementAndGet());
            }
        });
        Intrinsics.checkNotNullExpressionValue(executorServiceNewFixedThreadPool, "newFixedThreadPool(...)");
        return executorServiceNewFixedThreadPool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Tracer createDefaultTracer() {
        return new Tracer() { // from class: androidx.work.ConfigurationKt$createDefaultTracer$tracer$1
            @Override // androidx.work.Tracer
            public boolean isEnabled() {
                return Trace.isEnabled();
            }

            @Override // androidx.work.Tracer
            public void beginSection(String label) {
                Intrinsics.checkNotNullParameter(label, "label");
                Trace.beginSection(label);
            }

            @Override // androidx.work.Tracer
            public void endSection() {
                Trace.endSection();
            }

            @Override // androidx.work.Tracer
            public void beginAsyncSection(String methodName, int i) throws Throwable {
                Intrinsics.checkNotNullParameter(methodName, "methodName");
                Trace.beginAsyncSection(methodName, i);
            }

            @Override // androidx.work.Tracer
            public void endAsyncSection(String methodName, int i) throws Throwable {
                Intrinsics.checkNotNullParameter(methodName, "methodName");
                Trace.endAsyncSection(methodName, i);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Executor asExecutor(CoroutineContext coroutineContext) {
        ContinuationInterceptor continuationInterceptor = coroutineContext != null ? (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.Key) : null;
        CoroutineDispatcher coroutineDispatcher = continuationInterceptor instanceof CoroutineDispatcher ? (CoroutineDispatcher) continuationInterceptor : null;
        if (coroutineDispatcher != null) {
            return ExecutorsKt.asExecutor(coroutineDispatcher);
        }
        return null;
    }
}
