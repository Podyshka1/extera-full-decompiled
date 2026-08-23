package androidx.camera.core;

import android.os.Process;
import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1;
import androidx.camera.core.CameraExecutor;
import androidx.camera.core.impl.CameraFactory;
import androidx.core.util.Preconditions;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class CameraExecutor implements Executor, ScheduledExecutorService, AutoCloseable {
    private static final ThreadFactory THREAD_FACTORY = new ThreadFactoryC02461();
    private final Object mExecutorLock = new Object();
    private ScheduledThreadPoolExecutor mThreadPoolExecutor = createExecutor();

    @Override // java.lang.AutoCloseable
    public /* synthetic */ void close() {
        UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1.m23m(this);
    }

    /* JADX INFO: renamed from: androidx.camera.core.CameraExecutor$1 */
    class ThreadFactoryC02461 implements ThreadFactory {
        private final AtomicInteger mThreadId = new AtomicInteger(0);

        ThreadFactoryC02461() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(final Runnable runnable) {
            Thread thread = new Thread(new Runnable() { // from class: androidx.camera.core.CameraExecutor$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CameraExecutor.ThreadFactoryC02461.$r8$lambda$aeeeXmCRyKT8UqtEOW_p1AJz2G8(runnable);
                }
            });
            thread.setPriority(7);
            thread.setName(String.format(Locale.US, "CameraX-core_camera_%d", Integer.valueOf(this.mThreadId.getAndIncrement())));
            return thread;
        }

        public static /* synthetic */ void $r8$lambda$aeeeXmCRyKT8UqtEOW_p1AJz2G8(Runnable runnable) {
            Process.setThreadPriority(-3);
            runnable.run();
        }
    }

    void init(CameraFactory cameraFactory) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        Preconditions.checkNotNull(cameraFactory);
        synchronized (this.mExecutorLock) {
            try {
                if (this.mThreadPoolExecutor.isShutdown()) {
                    this.mThreadPoolExecutor = createExecutor();
                }
                scheduledThreadPoolExecutor = this.mThreadPoolExecutor;
            } catch (Throwable th) {
                throw th;
            }
        }
        scheduledThreadPoolExecutor.setCorePoolSize(Math.max(1, cameraFactory.getAvailableCameraIds().size()));
    }

    void deinit() {
        synchronized (this.mExecutorLock) {
            try {
                if (!this.mThreadPoolExecutor.isShutdown()) {
                    this.mThreadPoolExecutor.shutdown();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        synchronized (this.mExecutorLock) {
            this.mThreadPoolExecutor.execute(runnable);
        }
    }

    private static ScheduledThreadPoolExecutor createExecutor() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, THREAD_FACTORY);
        scheduledThreadPoolExecutor.setKeepAliveTime(0L, TimeUnit.MILLISECONDS);
        scheduledThreadPoolExecutor.setRejectedExecutionHandler(new RejectedExecutionHandler() { // from class: androidx.camera.core.CameraExecutor$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                Logger.m81w("CameraExecutor", "A rejected execution occurred in CameraExecutor!");
            }
        });
        return scheduledThreadPoolExecutor;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledFuture<?> scheduledFutureSchedule;
        synchronized (this.mExecutorLock) {
            scheduledFutureSchedule = this.mThreadPoolExecutor.schedule(runnable, j, timeUnit);
        }
        return scheduledFutureSchedule;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        ScheduledFuture scheduledFutureSchedule;
        synchronized (this.mExecutorLock) {
            scheduledFutureSchedule = this.mThreadPoolExecutor.schedule(callable, j, timeUnit);
        }
        return scheduledFutureSchedule;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        ScheduledFuture<?> scheduledFutureScheduleAtFixedRate;
        synchronized (this.mExecutorLock) {
            scheduledFutureScheduleAtFixedRate = this.mThreadPoolExecutor.scheduleAtFixedRate(runnable, j, j2, timeUnit);
        }
        return scheduledFutureScheduleAtFixedRate;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
        synchronized (this.mExecutorLock) {
            scheduledFutureScheduleWithFixedDelay = this.mThreadPoolExecutor.scheduleWithFixedDelay(runnable, j, j2, timeUnit);
        }
        return scheduledFutureScheduleWithFixedDelay;
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        synchronized (this.mExecutorLock) {
            this.mThreadPoolExecutor.shutdown();
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public List shutdownNow() {
        List<Runnable> listShutdownNow;
        synchronized (this.mExecutorLock) {
            listShutdownNow = this.mThreadPoolExecutor.shutdownNow();
        }
        return listShutdownNow;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        boolean zIsShutdown;
        synchronized (this.mExecutorLock) {
            zIsShutdown = this.mThreadPoolExecutor.isShutdown();
        }
        return zIsShutdown;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        boolean zIsTerminated;
        synchronized (this.mExecutorLock) {
            zIsTerminated = this.mThreadPoolExecutor.isTerminated();
        }
        return zIsTerminated;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, TimeUnit timeUnit) {
        boolean zAwaitTermination;
        synchronized (this.mExecutorLock) {
            zAwaitTermination = this.mThreadPoolExecutor.awaitTermination(j, timeUnit);
        }
        return zAwaitTermination;
    }

    @Override // java.util.concurrent.ExecutorService
    public Future submit(Callable callable) {
        Future futureSubmit;
        synchronized (this.mExecutorLock) {
            futureSubmit = this.mThreadPoolExecutor.submit(callable);
        }
        return futureSubmit;
    }

    @Override // java.util.concurrent.ExecutorService
    public Future submit(Runnable runnable, Object obj) {
        Future futureSubmit;
        synchronized (this.mExecutorLock) {
            futureSubmit = this.mThreadPoolExecutor.submit(runnable, obj);
        }
        return futureSubmit;
    }

    @Override // java.util.concurrent.ExecutorService
    public Future submit(Runnable runnable) {
        Future<?> futureSubmit;
        synchronized (this.mExecutorLock) {
            futureSubmit = this.mThreadPoolExecutor.submit(runnable);
        }
        return futureSubmit;
    }

    @Override // java.util.concurrent.ExecutorService
    public List invokeAll(Collection collection) {
        List listInvokeAll;
        synchronized (this.mExecutorLock) {
            listInvokeAll = this.mThreadPoolExecutor.invokeAll(collection);
        }
        return listInvokeAll;
    }

    @Override // java.util.concurrent.ExecutorService
    public List invokeAll(Collection collection, long j, TimeUnit timeUnit) {
        List listInvokeAll;
        synchronized (this.mExecutorLock) {
            listInvokeAll = this.mThreadPoolExecutor.invokeAll(collection, j, timeUnit);
        }
        return listInvokeAll;
    }

    @Override // java.util.concurrent.ExecutorService
    public Object invokeAny(Collection collection) {
        Object objInvokeAny;
        synchronized (this.mExecutorLock) {
            objInvokeAny = this.mThreadPoolExecutor.invokeAny(collection);
        }
        return objInvokeAny;
    }

    @Override // java.util.concurrent.ExecutorService
    public Object invokeAny(Collection collection, long j, TimeUnit timeUnit) {
        Object objInvokeAny;
        synchronized (this.mExecutorLock) {
            objInvokeAny = this.mThreadPoolExecutor.invokeAny(collection, j, timeUnit);
        }
        return objInvokeAny;
    }
}
