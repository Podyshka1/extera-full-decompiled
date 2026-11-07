package org.telegram;

import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1;
import java.util.Comparator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
public class DispatchQueuePriority {
    private volatile CountDownLatch pauseLatch;
    ThreadPoolExecutor threadPoolExecutor = new C25881(1, 1, 60, TimeUnit.SECONDS, new PriorityBlockingQueue(10, new Comparator<Runnable>() { // from class: org.telegram.DispatchQueuePriority.2
        @Override // java.util.Comparator
        public int compare(Runnable runnable, Runnable runnable2) {
            return (runnable2 instanceof PriorityRunnable ? ((PriorityRunnable) runnable2).priority : 1) - (runnable instanceof PriorityRunnable ? ((PriorityRunnable) runnable).priority : 1);
        }
    }));

    /* JADX INFO: renamed from: org.telegram.DispatchQueuePriority$1 */
    public class C25881 extends ThreadPoolExecutor implements AutoCloseable {
        @Override // java.lang.AutoCloseable
        public /* synthetic */ void close() {
            UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1.m25m(this);
        }

        public C25881(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue blockingQueue) {
            super(i, i2, j, timeUnit, blockingQueue);
        }

        @Override // java.util.concurrent.ThreadPoolExecutor
        public void beforeExecute(Thread thread, Runnable runnable) {
            CountDownLatch countDownLatch = DispatchQueuePriority.this.pauseLatch;
            if (countDownLatch != null) {
                try {
                    countDownLatch.await();
                } catch (InterruptedException e) {
                    FileLog.m992e(e);
                }
            }
        }
    }

    public DispatchQueuePriority(String str) {
    }

    public void postRunnable(Runnable runnable) {
        this.threadPoolExecutor.execute(runnable);
    }

    public Runnable postRunnable(Runnable runnable, int i) {
        if (i != 1) {
            runnable = new PriorityRunnable(i, runnable);
        }
        postRunnable(runnable);
        return runnable;
    }

    public void cancelRunnable(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        this.threadPoolExecutor.remove(runnable);
    }

    public void pause() {
        if (this.pauseLatch == null) {
            this.pauseLatch = new CountDownLatch(1);
        }
    }

    public void resume() {
        CountDownLatch countDownLatch = this.pauseLatch;
        if (countDownLatch != null) {
            countDownLatch.countDown();
            this.pauseLatch = null;
        }
    }

    public static class PriorityRunnable implements Runnable {
        final int priority;
        final Runnable runnable;

        private PriorityRunnable(int i, Runnable runnable) {
            this.priority = i;
            this.runnable = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.runnable.run();
        }
    }
}
