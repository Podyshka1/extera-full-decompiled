package com.google.common.util.concurrent;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Futures extends GwtFuturesCatchingSpecialization {
    public static void addCallback(ListenableFuture listenableFuture, FutureCallback futureCallback, Executor executor) {
        Preconditions.checkNotNull(futureCallback);
        listenableFuture.addListener(new CallbackListener(listenableFuture, futureCallback), executor);
    }

    private static final class CallbackListener implements Runnable {
        final FutureCallback callback;
        final Future future;

        CallbackListener(Future future, FutureCallback futureCallback) {
            this.future = future;
            this.callback = futureCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.callback.onSuccess(Futures.getDone(this.future));
            } catch (ExecutionException e) {
                this.callback.onFailure(e.getCause());
            } catch (Throwable th) {
                this.callback.onFailure(th);
            }
        }

        public String toString() {
            return MoreObjects.toStringHelper(this).addValue(this.callback).toString();
        }
    }

    public static Object getDone(Future future) {
        Preconditions.checkState(future.isDone(), "Future was expected to be done: %s", future);
        return Uninterruptibles.getUninterruptibly(future);
    }
}
