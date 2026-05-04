package androidx.camera.core.impl.utils.executor;

import androidx.core.util.Preconditions;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes4.dex */
final class SequentialExecutor implements Executor {
    private final Executor mExecutor;
    final Deque mQueue = new ArrayDeque();
    private final QueueWorker mWorker = new QueueWorker();
    WorkerRunningState mWorkerRunningState = WorkerRunningState.IDLE;
    long mWorkerRunCount = 0;

    enum WorkerRunningState {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    SequentialExecutor(Executor executor) {
        this.mExecutor = (Executor) Preconditions.checkNotNull(executor);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0061  */
    @Override // java.util.concurrent.Executor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void execute(final Runnable runnable) {
        WorkerRunningState workerRunningState;
        boolean z;
        Preconditions.checkNotNull(runnable);
        synchronized (this.mQueue) {
            WorkerRunningState workerRunningState2 = this.mWorkerRunningState;
            if (workerRunningState2 != WorkerRunningState.RUNNING && workerRunningState2 != (workerRunningState = WorkerRunningState.QUEUED)) {
                long j = this.mWorkerRunCount;
                Runnable runnable2 = new Runnable() { // from class: androidx.camera.core.impl.utils.executor.SequentialExecutor.1
                    @Override // java.lang.Runnable
                    public void run() {
                        runnable.run();
                    }
                };
                this.mQueue.add(runnable2);
                WorkerRunningState workerRunningState3 = WorkerRunningState.QUEUING;
                this.mWorkerRunningState = workerRunningState3;
                try {
                    this.mExecutor.execute(this.mWorker);
                    if (this.mWorkerRunningState != workerRunningState3) {
                        return;
                    }
                    synchronized (this.mQueue) {
                        try {
                            if (this.mWorkerRunCount == j && this.mWorkerRunningState == workerRunningState3) {
                                this.mWorkerRunningState = workerRunningState;
                            }
                        } finally {
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.mQueue) {
                        try {
                            WorkerRunningState workerRunningState4 = this.mWorkerRunningState;
                            if (workerRunningState4 == WorkerRunningState.IDLE || workerRunningState4 == WorkerRunningState.QUEUING) {
                                z = this.mQueue.removeLastOccurrence(runnable2);
                            }
                            if (!(e instanceof RejectedExecutionException) || z) {
                                throw e;
                            }
                        } finally {
                        }
                    }
                    return;
                }
            }
            this.mQueue.add(runnable);
        }
    }

    final class QueueWorker implements Runnable {
        QueueWorker() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                workOnQueue();
            } catch (Error e) {
                synchronized (SequentialExecutor.this.mQueue) {
                    SequentialExecutor.this.mWorkerRunningState = WorkerRunningState.IDLE;
                    throw e;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x003b, code lost:
        
            if (r1 == false) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0044, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0045, code lost:
        
            r3.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x004b, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x004c, code lost:
        
            androidx.camera.core.Logger.m79e("SequentialExecutor", "Exception while executing runnable " + r3, r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:?, code lost:
        
            return;
         */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0034 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void workOnQueue() {
            Runnable runnable;
            boolean z = false;
            boolean zInterrupted = false;
            while (true) {
                try {
                    synchronized (SequentialExecutor.this.mQueue) {
                        if (!z) {
                            SequentialExecutor sequentialExecutor = SequentialExecutor.this;
                            WorkerRunningState workerRunningState = sequentialExecutor.mWorkerRunningState;
                            WorkerRunningState workerRunningState2 = WorkerRunningState.RUNNING;
                            if (workerRunningState != workerRunningState2) {
                                sequentialExecutor.mWorkerRunCount++;
                                sequentialExecutor.mWorkerRunningState = workerRunningState2;
                                z = true;
                                runnable = (Runnable) SequentialExecutor.this.mQueue.poll();
                                if (runnable != null) {
                                    SequentialExecutor.this.mWorkerRunningState = WorkerRunningState.IDLE;
                                }
                            }
                        } else {
                            runnable = (Runnable) SequentialExecutor.this.mQueue.poll();
                            if (runnable != null) {
                            }
                        }
                    }
                    if (!zInterrupted) {
                        return;
                    }
                } finally {
                    if (zInterrupted) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
    }
}
