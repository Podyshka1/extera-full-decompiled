package androidx.camera.camera2.impl;

import android.os.Handler;
import android.os.Looper;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.SupervisorKt;
import okhttp3.OkHttpClient$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001a\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u0013R\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00020\n0\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0017\u0010\"\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\"\u0010\u0013\u001a\u0004\b#\u0010\u0015R\u0014\u0010$\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010\u0016R\"\u0010%\u001a\u00020\u00028\u0006@\u0007X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\u0010\u001a\u0004\b&\u0010\u0012\"\u0004\b'\u0010(¨\u0006)"}, d2 = {"Landroidx/camera/camera2/impl/UseCaseThreads;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;", "scope", "Ljava/util/concurrent/Executor;", "backgroundExecutor", "Lkotlinx/coroutines/CoroutineDispatcher;", "backgroundDispatcher", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;)V", _UrlKt.FRAGMENT_ENCODE_SET, "isOnSequentialThread", "()Z", _UrlKt.FRAGMENT_ENCODE_SET, "checkOnSequentialThread", "()V", "Lkotlinx/coroutines/CoroutineScope;", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "Ljava/util/concurrent/Executor;", "getBackgroundExecutor", "()Ljava/util/concurrent/Executor;", "Lkotlinx/coroutines/CoroutineDispatcher;", "getBackgroundDispatcher", "()Lkotlinx/coroutines/CoroutineDispatcher;", "Landroid/os/Handler;", "mainHandler", "Landroid/os/Handler;", "getMainHandler", "()Landroid/os/Handler;", "sequentialExecutorDelegate", "Ljava/lang/ThreadLocal;", "isSequentialThread", "Ljava/lang/ThreadLocal;", "sequentialExecutor", "getSequentialExecutor", "sequentialDispatcher", "sequentialScope", "getSequentialScope", "setSequentialScope", "(Lkotlinx/coroutines/CoroutineScope;)V", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUseCaseThreads.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseThreads.kt\nandroidx/camera/camera2/impl/UseCaseThreads\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,200:1\n1#2:201\n*E\n"})
public final class UseCaseThreads {
    private final CoroutineDispatcher backgroundDispatcher;
    private final Executor backgroundExecutor;
    private final CoroutineScope scope;
    private final CoroutineDispatcher sequentialDispatcher;
    private final Executor sequentialExecutor;
    private final Executor sequentialExecutorDelegate;
    private CoroutineScope sequentialScope;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final ThreadLocal<Boolean> isSequentialThread = new ThreadLocal<>();

    public UseCaseThreads(CoroutineScope coroutineScope, Executor executor, CoroutineDispatcher coroutineDispatcher) {
        this.scope = coroutineScope;
        this.backgroundExecutor = executor;
        this.backgroundDispatcher = coroutineDispatcher;
        this.sequentialExecutorDelegate = CameraXExecutors.newSequentialExecutor(executor);
        Executor executor2 = new Executor() { // from class: androidx.camera.camera2.impl.UseCaseThreads$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                UseCaseThreads useCaseThreads = this.f$0;
                useCaseThreads.sequentialExecutorDelegate.execute(new Runnable() { // from class: androidx.camera.camera2.impl.UseCaseThreads$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        UseCaseThreads.sequentialExecutor$lambda$0$0(useCaseThreads, runnable);
                    }
                });
            }
        };
        this.sequentialExecutor = executor2;
        CoroutineDispatcher coroutineDispatcherFrom = ExecutorsKt.from(executor2);
        this.sequentialDispatcher = coroutineDispatcherFrom;
        this.sequentialScope = CoroutineScopeKt.CoroutineScope(coroutineScope.getCoroutineContext().plus(SupervisorKt.SupervisorJob$default(null, 1, null)).plus(coroutineDispatcherFrom));
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
        OkHttpClient$$ExternalSyntheticBUOutline0.m820m("Thread check failed: This method must be called from the UseCaseThreads sequential scope. Current thread: ", Thread.currentThread().getName());
    }
}
