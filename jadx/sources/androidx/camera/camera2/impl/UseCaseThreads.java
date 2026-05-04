package androidx.camera.camera2.impl;

import android.os.Handler;
import android.os.Looper;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes3.dex */
public final class UseCaseThreads {
    private final CoroutineDispatcher backgroundDispatcher;
    private final Executor backgroundExecutor;
    private final ThreadLocal isSequentialThread;
    private final Handler mainHandler;
    private final CoroutineScope scope;
    private final CoroutineDispatcher sequentialDispatcher;
    private final Executor sequentialExecutor;
    private final Executor sequentialExecutorDelegate;
    private CoroutineScope sequentialScope;

    public UseCaseThreads(CoroutineScope scope, Executor backgroundExecutor, CoroutineDispatcher backgroundDispatcher) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(backgroundExecutor, "backgroundExecutor");
        Intrinsics.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        this.scope = scope;
        this.backgroundExecutor = backgroundExecutor;
        this.backgroundDispatcher = backgroundDispatcher;
        this.mainHandler = new Handler(Looper.getMainLooper());
        Executor executorNewSequentialExecutor = CameraXExecutors.newSequentialExecutor(backgroundExecutor);
        Intrinsics.checkNotNullExpressionValue(executorNewSequentialExecutor, "newSequentialExecutor(...)");
        this.sequentialExecutorDelegate = executorNewSequentialExecutor;
        this.isSequentialThread = new ThreadLocal();
        Executor executor = new Executor() { // from class: androidx.camera.camera2.impl.UseCaseThreads$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                UseCaseThreads.sequentialExecutor$lambda$0(this.f$0, runnable);
            }
        };
        this.sequentialExecutor = executor;
        CoroutineDispatcher coroutineDispatcherFrom = ExecutorsKt.from(executor);
        this.sequentialDispatcher = coroutineDispatcherFrom;
        this.sequentialScope = CoroutineScopeKt.CoroutineScope(scope.getCoroutineContext().plus(SupervisorKt.SupervisorJob$default(null, 1, null)).plus(coroutineDispatcherFrom));
    }

    public final CoroutineScope getScope() {
        return this.scope;
    }

    public final boolean isOnSequentialThread() {
        return Intrinsics.areEqual(this.isSequentialThread.get(), Boolean.TRUE);
    }

    public final Executor getSequentialExecutor() {
        return this.sequentialExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sequentialExecutor$lambda$0(final UseCaseThreads useCaseThreads, final Runnable runnable) {
        useCaseThreads.sequentialExecutorDelegate.execute(new Runnable() { // from class: androidx.camera.camera2.impl.UseCaseThreads$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                UseCaseThreads.sequentialExecutor$lambda$0$0(this.f$0, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sequentialExecutor$lambda$0$0(UseCaseThreads useCaseThreads, Runnable runnable) {
        useCaseThreads.isSequentialThread.set(Boolean.TRUE);
        try {
            runnable.run();
        } finally {
            useCaseThreads.isSequentialThread.remove();
        }
    }

    public final CoroutineScope getSequentialScope() {
        return this.sequentialScope;
    }

    public final void checkOnSequentialThread() {
        if (isOnSequentialThread()) {
            return;
        }
        throw new IllegalStateException(("Thread check failed: This method must be called from the UseCaseThreads sequential scope. Current thread: " + Thread.currentThread().getName()).toString());
    }
}
