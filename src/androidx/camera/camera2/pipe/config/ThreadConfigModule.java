package androidx.camera.camera2.pipe.config;

import android.os.Handler;
import android.os.HandlerThread;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.AndroidThreads;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes3.dex */
public final class ThreadConfigModule {
    private final int backgroundThreadCount;
    private final int cameraThreadPriority;
    private final int defaultThreadPriority;
    private final int lightweightThreadCount;
    private final CameraPipe.ThreadConfig threadConfig;

    public ThreadConfigModule(CameraPipe.ThreadConfig threadConfig) {
        Intrinsics.checkNotNullParameter(threadConfig, "threadConfig");
        this.threadConfig = threadConfig;
        this.lightweightThreadCount = Math.max(4, Runtime.getRuntime().availableProcessors() - 2);
        this.backgroundThreadCount = 4;
        this.cameraThreadPriority = -3;
        this.defaultThreadPriority = -1;
    }

    public final Threads provideThreads(final CameraPipeLifetime cameraPipeLifetime, Job cameraPipeJob) {
        Intrinsics.checkNotNullParameter(cameraPipeLifetime, "cameraPipeLifetime");
        Intrinsics.checkNotNullParameter(cameraPipeJob, "cameraPipeJob");
        final ArrayList arrayList = new ArrayList();
        Executor defaultBlockingExecutor = this.threadConfig.getDefaultBlockingExecutor();
        if (defaultBlockingExecutor == null) {
            AndroidThreads androidThreads = AndroidThreads.INSTANCE;
            defaultBlockingExecutor = androidThreads.asScheduledThreadPool(androidThreads.withAndroidPriority(androidThreads.withPrefix(androidThreads.getFactory(), "CXCP-IO-"), this.defaultThreadPriority), 8);
            arrayList.add(defaultBlockingExecutor);
        }
        Executor executor = defaultBlockingExecutor;
        CoroutineDispatcher coroutineDispatcherFrom = ExecutorsKt.from(executor);
        Executor defaultBackgroundExecutor = this.threadConfig.getDefaultBackgroundExecutor();
        if (defaultBackgroundExecutor == null) {
            AndroidThreads androidThreads2 = AndroidThreads.INSTANCE;
            defaultBackgroundExecutor = androidThreads2.asScheduledThreadPool(androidThreads2.withAndroidPriority(androidThreads2.withPrefix(androidThreads2.getFactory(), "CXCP-BG-"), this.defaultThreadPriority), this.backgroundThreadCount);
            arrayList.add(defaultBackgroundExecutor);
        }
        Executor executor2 = defaultBackgroundExecutor;
        CoroutineDispatcher coroutineDispatcherFrom2 = ExecutorsKt.from(executor2);
        Executor defaultLightweightExecutor = this.threadConfig.getDefaultLightweightExecutor();
        if (defaultLightweightExecutor == null) {
            AndroidThreads androidThreads3 = AndroidThreads.INSTANCE;
            defaultLightweightExecutor = androidThreads3.asScheduledThreadPool(androidThreads3.withAndroidPriority(androidThreads3.withPrefix(androidThreads3.getFactory(), "CXCP-"), this.cameraThreadPriority), this.lightweightThreadCount);
            arrayList.add(defaultLightweightExecutor);
        }
        Executor executor3 = defaultLightweightExecutor;
        CoroutineDispatcher coroutineDispatcherFrom3 = ExecutorsKt.from(executor3);
        cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.THREAD, new Runnable() { // from class: androidx.camera.camera2.pipe.config.ThreadConfigModule$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws InterruptedException {
                ThreadConfigModule.provideThreads$lambda$3(arrayList);
            }
        });
        Function0 defaultCameraHandlerFn = this.threadConfig.getDefaultCameraHandlerFn();
        if (defaultCameraHandlerFn == null) {
            defaultCameraHandlerFn = new Function0() { // from class: androidx.camera.camera2.pipe.config.ThreadConfigModule$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ThreadConfigModule.provideThreads$lambda$4(this.f$0, cameraPipeLifetime);
                }
            };
        }
        Function0 function0 = defaultCameraHandlerFn;
        Function0 function02 = new Function0() { // from class: androidx.camera.camera2.pipe.config.ThreadConfigModule$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ThreadConfigModule.provideThreads$lambda$5(this.f$0, cameraPipeLifetime);
            }
        };
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        if (this.threadConfig.getTestOnlyScope() != null) {
            ref$ObjectRef.element = this.threadConfig.getTestOnlyScope();
            ref$ObjectRef2.element = this.threadConfig.getTestOnlyScope();
        } else {
            ref$ObjectRef.element = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob(cameraPipeJob).plus(coroutineDispatcherFrom3).plus(new CoroutineName("CXCP")));
            ref$ObjectRef2.element = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob(cameraPipeJob).plus(new CoroutineName("CXCP-Dispatch")));
            cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.SCOPE, new Runnable() { // from class: androidx.camera.camera2.pipe.config.ThreadConfigModule$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ThreadConfigModule.provideThreads$lambda$6(ref$ObjectRef, ref$ObjectRef2);
                }
            });
        }
        return new Threads((CoroutineScope) ref$ObjectRef.element, (CoroutineScope) ref$ObjectRef2.element, executor, coroutineDispatcherFrom, executor2, coroutineDispatcherFrom2, executor3, coroutineDispatcherFrom3, function0, function02);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void provideThreads$lambda$3(List list) throws InterruptedException {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((ExecutorService) it.next()).shutdownNow();
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((ExecutorService) it2.next()).awaitTermination(1L, TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler provideThreads$lambda$4(ThreadConfigModule threadConfigModule, CameraPipeLifetime cameraPipeLifetime) {
        if (threadConfigModule.threadConfig.getDefaultCameraHandler() == null) {
            final HandlerThread handlerThread = new HandlerThread("CXCP-Camera-H", threadConfigModule.cameraThreadPriority);
            handlerThread.start();
            cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.THREAD, new Runnable() { // from class: androidx.camera.camera2.pipe.config.ThreadConfigModule$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() throws InterruptedException {
                    ThreadConfigModule.provideThreads$lambda$4$1(handlerThread);
                }
            });
            return new Handler(handlerThread.getLooper());
        }
        return threadConfigModule.threadConfig.getDefaultCameraHandler();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void provideThreads$lambda$4$1(HandlerThread handlerThread) throws InterruptedException {
        handlerThread.quit();
        handlerThread.join(1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Executor provideThreads$lambda$5(ThreadConfigModule threadConfigModule, CameraPipeLifetime cameraPipeLifetime) {
        if (threadConfigModule.threadConfig.getDefaultCameraExecutor() == null) {
            AndroidThreads androidThreads = AndroidThreads.INSTANCE;
            final ExecutorService executorServiceAsFixedSizeThreadPool = androidThreads.asFixedSizeThreadPool(androidThreads.withAndroidPriority(androidThreads.withPrefix(androidThreads.getFactory(), "CXCP-Camera-E"), threadConfigModule.cameraThreadPriority), 1);
            cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.THREAD, new Runnable() { // from class: androidx.camera.camera2.pipe.config.ThreadConfigModule$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() throws InterruptedException {
                    ThreadConfigModule.provideThreads$lambda$5$0(executorServiceAsFixedSizeThreadPool);
                }
            });
            return executorServiceAsFixedSizeThreadPool;
        }
        return threadConfigModule.threadConfig.getDefaultCameraExecutor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void provideThreads$lambda$5$0(ExecutorService executorService) throws InterruptedException {
        executorService.shutdownNow();
        executorService.awaitTermination(1L, TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void provideThreads$lambda$6(Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2) {
        CoroutineScopeKt.cancel$default((CoroutineScope) ref$ObjectRef.element, null, 1, null);
        CoroutineScopeKt.cancel$default((CoroutineScope) ref$ObjectRef2.element, null, 1, null);
    }
}
