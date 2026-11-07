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
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0001\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0010¨\u0006\u0014"}, d2 = {"Landroidx/camera/camera2/pipe/config/ThreadConfigModule;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;", "threadConfig", "<init>", "(Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;)V", "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;", "cameraPipeLifetime", "Lkotlinx/coroutines/Job;", "cameraPipeJob", "Landroidx/camera/camera2/pipe/core/Threads;", "provideThreads", "(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lkotlinx/coroutines/Job;)Landroidx/camera/camera2/pipe/core/Threads;", "Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;", _UrlKt.FRAGMENT_ENCODE_SET, "lightweightThreadCount", "I", "backgroundThreadCount", "cameraThreadPriority", "defaultThreadPriority", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nThreadConfigModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadConfigModule.kt\nandroidx/camera/camera2/pipe/config/ThreadConfigModule\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n1#2:214\n*E\n"})
public final class ThreadConfigModule {
    private final CameraPipe.ThreadConfig threadConfig;
    private final int lightweightThreadCount = Math.max(4, Runtime.getRuntime().availableProcessors() - 2);
    private final int backgroundThreadCount = 4;
    private final int cameraThreadPriority = -3;
    private final int defaultThreadPriority = -1;

    public ThreadConfigModule(CameraPipe.ThreadConfig threadConfig) {
        this.threadConfig = threadConfig;
    }

    /* JADX WARN: Type inference failed for: r13v12, types: [T, kotlinx.coroutines.CoroutineScope] */
    /* JADX WARN: Type inference failed for: r13v4, types: [T, kotlinx.coroutines.CoroutineScope] */
    /* JADX WARN: Type inference failed for: r13v7, types: [T, kotlinx.coroutines.CoroutineScope] */
    /* JADX WARN: Type inference failed for: r14v2, types: [T, kotlinx.coroutines.CoroutineScope] */
    public final Threads provideThreads(final CameraPipeLifetime cameraPipeLifetime, Job cameraPipeJob) {
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
                ThreadConfigModule.m1613$r8$lambda$jeb5Vw5LnFgi_4xpswUjpNN2h0(arrayList);
            }
        });
        Function0<Handler> defaultCameraHandlerFn = this.threadConfig.getDefaultCameraHandlerFn();
        if (defaultCameraHandlerFn == null) {
            defaultCameraHandlerFn = new Function0() { // from class: androidx.camera.camera2.pipe.config.ThreadConfigModule$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ThreadConfigModule.$r8$lambda$wABDi6HCco0H4HmkIa31ylMsIOk(this.f$0, cameraPipeLifetime);
                }
            };
        }
        Function0<Handler> function0 = defaultCameraHandlerFn;
        Function0 function02 = new Function0() { // from class: androidx.camera.camera2.pipe.config.ThreadConfigModule$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ThreadConfigModule.m1611$r8$lambda$5P1hWeb8e3yIYEHQIrJfBt4bYw(this.f$0, cameraPipeLifetime);
            }
        };
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        if (this.threadConfig.getTestOnlyScope() != null) {
            objectRef.element = this.threadConfig.getTestOnlyScope();
            objectRef2.element = this.threadConfig.getTestOnlyScope();
        } else {
            objectRef.element = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob(cameraPipeJob).plus(coroutineDispatcherFrom3).plus(new CoroutineName("CXCP")));
            objectRef2.element = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob(cameraPipeJob).plus(new CoroutineName("CXCP-Dispatch")));
            cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.SCOPE, new Runnable() { // from class: androidx.camera.camera2.pipe.config.ThreadConfigModule$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ThreadConfigModule.$r8$lambda$oEFYP5DGguYpNiMpq15Gj4l3Kb4(objectRef, objectRef2);
                }
            });
        }
        return new Threads((CoroutineScope) objectRef.element, (CoroutineScope) objectRef2.element, executor, coroutineDispatcherFrom, executor2, coroutineDispatcherFrom2, executor3, coroutineDispatcherFrom3, function0, function02);
    }

    /* JADX INFO: renamed from: $r8$lambda$jeb-5Vw5LnFgi_4xpswUjpNN2h0, reason: not valid java name */
    public static void m1613$r8$lambda$jeb5Vw5LnFgi_4xpswUjpNN2h0(List list) throws InterruptedException {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((ExecutorService) it.next()).shutdownNow();
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((ExecutorService) it2.next()).awaitTermination(1L, TimeUnit.SECONDS);
        }
    }

    public static Handler $r8$lambda$wABDi6HCco0H4HmkIa31ylMsIOk(ThreadConfigModule threadConfigModule, CameraPipeLifetime cameraPipeLifetime) {
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

    /* JADX INFO: renamed from: $r8$lambda$-5P1hWeb8e3yIYEHQIrJfBt4bYw, reason: not valid java name */
    public static Executor m1611$r8$lambda$5P1hWeb8e3yIYEHQIrJfBt4bYw(ThreadConfigModule threadConfigModule, CameraPipeLifetime cameraPipeLifetime) {
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

    public static void $r8$lambda$oEFYP5DGguYpNiMpq15Gj4l3Kb4(Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2) {
        CoroutineScopeKt.cancel$default((CoroutineScope) objectRef.element, null, 1, null);
        CoroutineScopeKt.cancel$default((CoroutineScope) objectRef2.element, null, 1, null);
    }
}
