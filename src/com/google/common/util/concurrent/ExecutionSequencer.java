package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class ExecutionSequencer {
    private final AtomicReference<ListenableFuture<Void>> ref = new AtomicReference<>(Futures.immediateVoidFuture());
    private ThreadConfinedTaskQueue latestTaskQueue = new ThreadConfinedTaskQueue(null);

    /* JADX INFO: renamed from: com.google.common.util.concurrent.ExecutionSequencer$1 */
    abstract class AbstractC19861 implements AsyncCallable<Object> {
    }

    public enum RunningState {
        NOT_RUN,
        WILL_NOT_RUN,
        STARTED
    }

    private ExecutionSequencer() {
    }

    public static ExecutionSequencer create() {
        return new ExecutionSequencer();
    }

    public static final class ThreadConfinedTaskQueue {
        Executor nextExecutor;
        TrustedListenableFutureTask<?> nextTask;
        Thread thread;

        private ThreadConfinedTaskQueue() {
        }

        public /* synthetic */ ThreadConfinedTaskQueue(AbstractC19861 abstractC19861) {
            this();
        }
    }

    public <T> ListenableFuture<T> submitAsync(final AsyncCallable<T> asyncCallable, Executor executor) {
        Preconditions.checkNotNull(asyncCallable);
        Preconditions.checkNotNull(executor);
        final TaskNonReentrantExecutor taskNonReentrantExecutor = new TaskNonReentrantExecutor(executor, this, null);
        AsyncCallable<T> asyncCallable2 = new AsyncCallable<T>(this) { // from class: com.google.common.util.concurrent.ExecutionSequencer.2
            final /* synthetic */ ExecutionSequencer this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.common.util.concurrent.AsyncCallable
            public ListenableFuture<T> call() {
                if (!taskNonReentrantExecutor.trySetStarted()) {
                    return Futures.immediateCancelledFuture();
                }
                return asyncCallable.call();
            }

            public String toString() {
                return asyncCallable.toString();
            }
        };
        final SettableFuture settableFutureCreate = SettableFuture.create();
        final ListenableFuture<Void> andSet = this.ref.getAndSet(settableFutureCreate);
        final TrustedListenableFutureTask trustedListenableFutureTaskCreate = TrustedListenableFutureTask.create(asyncCallable2);
        andSet.addListener(trustedListenableFutureTaskCreate, taskNonReentrantExecutor);
        final ListenableFuture<T> listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(trustedListenableFutureTaskCreate);
        Runnable runnable = new Runnable() { // from class: com.google.common.util.concurrent.ExecutionSequencer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ExecutionSequencer.$r8$lambda$G1fYN83GH2L7tHBoC2wSsN1KFkk(trustedListenableFutureTaskCreate, settableFutureCreate, andSet, listenableFutureNonCancellationPropagating, taskNonReentrantExecutor);
            }
        };
        listenableFutureNonCancellationPropagating.addListener(runnable, MoreExecutors.directExecutor());
        trustedListenableFutureTaskCreate.addListener(runnable, MoreExecutors.directExecutor());
        return listenableFutureNonCancellationPropagating;
    }

    public static /* synthetic */ void $r8$lambda$G1fYN83GH2L7tHBoC2wSsN1KFkk(TrustedListenableFutureTask trustedListenableFutureTask, SettableFuture settableFuture, ListenableFuture listenableFuture, ListenableFuture listenableFuture2, TaskNonReentrantExecutor taskNonReentrantExecutor) {
        if (trustedListenableFutureTask.isDone()) {
            settableFuture.setFutureInternal(listenableFuture);
        } else if (listenableFuture2.isCancelled() && taskNonReentrantExecutor.trySetCancelled()) {
            trustedListenableFutureTask.cancel(false);
        }
    }

    public static final class TaskNonReentrantExecutor extends AtomicReference<RunningState> implements Executor, Runnable {
        Executor delegate;
        ExecutionSequencer sequencer;
        Thread submitting;
        TrustedListenableFutureTask<?> task;

        public /* synthetic */ TaskNonReentrantExecutor(Executor executor, ExecutionSequencer executionSequencer, AbstractC19861 abstractC19861) {
            this(executor, executionSequencer);
        }

        private TaskNonReentrantExecutor(Executor executor, ExecutionSequencer executionSequencer) {
            super(RunningState.NOT_RUN);
            this.delegate = executor;
            this.sequencer = executionSequencer;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (get() == RunningState.WILL_NOT_RUN) {
                this.delegate = null;
                this.sequencer = null;
                return;
            }
            this.submitting = Thread.currentThread();
            TrustedListenableFutureTask<?> trustedListenableFutureTask = (TrustedListenableFutureTask) runnable;
            try {
                ExecutionSequencer executionSequencer = this.sequencer;
                Objects.requireNonNull(executionSequencer);
                ThreadConfinedTaskQueue threadConfinedTaskQueue = executionSequencer.latestTaskQueue;
                if (threadConfinedTaskQueue.thread == this.submitting) {
                    this.sequencer = null;
                    Preconditions.checkState(threadConfinedTaskQueue.nextTask == null);
                    threadConfinedTaskQueue.nextTask = trustedListenableFutureTask;
                    Executor executor = this.delegate;
                    Objects.requireNonNull(executor);
                    threadConfinedTaskQueue.nextExecutor = executor;
                    this.delegate = null;
                } else {
                    Executor executor2 = this.delegate;
                    Objects.requireNonNull(executor2);
                    Executor executor3 = executor2;
                    this.delegate = null;
                    this.task = trustedListenableFutureTask;
                    try {
                        executor3.execute(this);
                    } catch (RejectedExecutionException e) {
                        trySetCancelled();
                        trustedListenableFutureTask.setExceptionInternal(e);
                    }
                }
                this.submitting = null;
            } catch (Throwable th) {
                this.submitting = null;
                throw th;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Executor executor;
            Thread threadCurrentThread = Thread.currentThread();
            Thread thread = null;
            Object[] objArr = 0;
            if (threadCurrentThread != this.submitting) {
                TrustedListenableFutureTask<?> trustedListenableFutureTask = this.task;
                Objects.requireNonNull(trustedListenableFutureTask);
                this.task = null;
                trustedListenableFutureTask.run();
                return;
            }
            ThreadConfinedTaskQueue threadConfinedTaskQueue = new ThreadConfinedTaskQueue(objArr == true ? 1 : 0);
            threadConfinedTaskQueue.thread = threadCurrentThread;
            ExecutionSequencer executionSequencer = this.sequencer;
            Objects.requireNonNull(executionSequencer);
            executionSequencer.latestTaskQueue = threadConfinedTaskQueue;
            this.sequencer = null;
            try {
                TrustedListenableFutureTask<?> trustedListenableFutureTask2 = this.task;
                Objects.requireNonNull(trustedListenableFutureTask2);
                this.task = null;
                trustedListenableFutureTask2.run();
                while (true) {
                    TrustedListenableFutureTask<?> trustedListenableFutureTask3 = threadConfinedTaskQueue.nextTask;
                    if (trustedListenableFutureTask3 == null || (executor = threadConfinedTaskQueue.nextExecutor) == null) {
                        break;
                    }
                    threadConfinedTaskQueue.nextTask = null;
                    threadConfinedTaskQueue.nextExecutor = null;
                    try {
                        executor.execute(trustedListenableFutureTask3);
                    } catch (RejectedExecutionException e) {
                        trustedListenableFutureTask3.setExceptionInternal(e);
                    }
                }
            } finally {
                threadConfinedTaskQueue.thread = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean trySetStarted() {
            return compareAndSet(RunningState.NOT_RUN, RunningState.STARTED);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean trySetCancelled() {
            return compareAndSet(RunningState.NOT_RUN, RunningState.WILL_NOT_RUN);
        }
    }
}
