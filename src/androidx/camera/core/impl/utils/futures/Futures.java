package androidx.camera.core.impl.utils.futures;

import androidx.arch.core.util.Function;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.ImmediateFuture;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Futures {
    private static final Function IDENTITY_FUNCTION = new Function() { // from class: androidx.camera.core.impl.utils.futures.Futures.2
        @Override // androidx.arch.core.util.Function
        public Object apply(Object obj) {
            return obj;
        }
    };

    public static ListenableFuture immediateFuture(Object obj) {
        if (obj == null) {
            return ImmediateFuture.nullFuture();
        }
        return new ImmediateFuture.ImmediateSuccessfulFuture(obj);
    }

    public static ListenableFuture immediateFailedFuture(Throwable th) {
        return new ImmediateFuture.ImmediateFailedFuture(th);
    }

    public static ScheduledFuture immediateFailedScheduledFuture(Throwable th) {
        return new ImmediateFuture.ImmediateFailedScheduledFuture(th);
    }

    public static ListenableFuture transformAsync(ListenableFuture listenableFuture, AsyncFunction asyncFunction, Executor executor) {
        ChainingListenableFuture chainingListenableFuture = new ChainingListenableFuture(asyncFunction, listenableFuture);
        listenableFuture.addListener(chainingListenableFuture, executor);
        return chainingListenableFuture;
    }

    public static ListenableFuture transform(ListenableFuture listenableFuture, final Function function, Executor executor) {
        Preconditions.checkNotNull(function);
        return transformAsync(listenableFuture, new AsyncFunction() { // from class: androidx.camera.core.impl.utils.futures.Futures.1
            @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
            public ListenableFuture apply(Object obj) {
                return Futures.immediateFuture(function.apply(obj));
            }
        }, executor);
    }

    public static void propagate(ListenableFuture listenableFuture, CallbackToFutureAdapter.Completer completer) {
        propagateTransform(listenableFuture, IDENTITY_FUNCTION, completer, CameraXExecutors.directExecutor());
    }

    public static void propagateTransform(ListenableFuture listenableFuture, Function function, CallbackToFutureAdapter.Completer completer, Executor executor) {
        propagateTransform(true, listenableFuture, function, completer, executor);
    }

    private static void propagateTransform(boolean z, final ListenableFuture listenableFuture, final Function function, final CallbackToFutureAdapter.Completer completer, Executor executor) {
        Preconditions.checkNotNull(listenableFuture);
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(completer);
        Preconditions.checkNotNull(executor);
        addCallback(listenableFuture, new FutureCallback() { // from class: androidx.camera.core.impl.utils.futures.Futures.3
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(Object obj) {
                try {
                    completer.set(function.apply(obj));
                } catch (Throwable th) {
                    completer.setException(th);
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th) {
                completer.setException(th);
            }
        }, executor);
        if (z) {
            completer.addCancellationListener(new Runnable() { // from class: androidx.camera.core.impl.utils.futures.Futures.4
                @Override // java.lang.Runnable
                public void run() {
                    listenableFuture.cancel(true);
                }
            }, CameraXExecutors.directExecutor());
        }
    }

    public static ListenableFuture nonCancellationPropagating(final ListenableFuture listenableFuture) {
        Preconditions.checkNotNull(listenableFuture);
        return listenableFuture.isDone() ? listenableFuture : CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.impl.utils.futures.Futures$$ExternalSyntheticLambda0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return Futures.$r8$lambda$XTux3ACV68DNtllDeHhwL_zb7Yw(listenableFuture, completer);
            }
        });
    }

    public static /* synthetic */ Object $r8$lambda$XTux3ACV68DNtllDeHhwL_zb7Yw(ListenableFuture listenableFuture, CallbackToFutureAdapter.Completer completer) {
        propagateTransform(false, listenableFuture, IDENTITY_FUNCTION, completer, CameraXExecutors.directExecutor());
        return "nonCancellationPropagating[" + listenableFuture + "]";
    }

    public static ListenableFuture successfulAsList(Collection collection) {
        return new ListFuture(new ArrayList(collection), false, CameraXExecutors.directExecutor());
    }

    public static ListenableFuture allAsList(Collection collection) {
        return new ListFuture(new ArrayList(collection), true, CameraXExecutors.directExecutor());
    }

    public static void addCallback(ListenableFuture listenableFuture, FutureCallback futureCallback, Executor executor) {
        Preconditions.checkNotNull(futureCallback);
        listenableFuture.addListener(new CallbackListener(listenableFuture, futureCallback), executor);
    }

    private static final class CallbackListener implements Runnable {
        final FutureCallback mCallback;
        final Future mFuture;

        CallbackListener(Future future, FutureCallback futureCallback) {
            this.mFuture = future;
            this.mCallback = futureCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.mCallback.onSuccess(Futures.getDone(this.mFuture));
            } catch (Error e) {
                e = e;
                this.mCallback.onFailure(e);
            } catch (RuntimeException e2) {
                e = e2;
                this.mCallback.onFailure(e);
            } catch (ExecutionException e3) {
                Throwable cause = e3.getCause();
                if (cause == null) {
                    this.mCallback.onFailure(e3);
                } else {
                    this.mCallback.onFailure(cause);
                }
            }
        }

        public String toString() {
            return CallbackListener.class.getSimpleName() + "," + this.mCallback;
        }
    }

    public static Object getDone(Future future) {
        Preconditions.checkState(future.isDone(), "Future was expected to be done, " + future);
        return getUninterruptibly(future);
    }

    public static Object getUninterruptibly(Future future) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }
}
