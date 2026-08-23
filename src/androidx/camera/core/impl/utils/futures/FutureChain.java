package androidx.camera.core.impl.utils.futures;

import androidx.arch.core.util.Function;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class FutureChain implements ListenableFuture {
    CallbackToFutureAdapter.Completer mCompleter;
    private final ListenableFuture mDelegate;

    public static FutureChain from(ListenableFuture listenableFuture) {
        return listenableFuture instanceof FutureChain ? (FutureChain) listenableFuture : new FutureChain(listenableFuture);
    }

    public final FutureChain transformAsync(AsyncFunction asyncFunction, Executor executor) {
        return (FutureChain) Futures.transformAsync(this, asyncFunction, executor);
    }

    public final FutureChain transform(Function function, Executor executor) {
        return (FutureChain) Futures.transform(this, function, executor);
    }

    FutureChain(ListenableFuture listenableFuture) {
        this.mDelegate = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
    }

    FutureChain() {
        this.mDelegate = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.impl.utils.futures.FutureChain.1
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Preconditions.checkState(FutureChain.this.mCompleter == null, "The result can only set once!");
                FutureChain.this.mCompleter = completer;
                return "FutureChain[" + FutureChain.this + "]";
            }
        });
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        this.mDelegate.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.mDelegate.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.mDelegate.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.mDelegate.isDone();
    }

    @Override // java.util.concurrent.Future
    public Object get() {
        return this.mDelegate.get();
    }

    @Override // java.util.concurrent.Future
    public Object get(long j, TimeUnit timeUnit) {
        return this.mDelegate.get(j, timeUnit);
    }

    boolean set(Object obj) {
        CallbackToFutureAdapter.Completer completer = this.mCompleter;
        if (completer != null) {
            return completer.set(obj);
        }
        return false;
    }

    boolean setException(Throwable th) {
        CallbackToFutureAdapter.Completer completer = this.mCompleter;
        if (completer != null) {
            return completer.setException(th);
        }
        return false;
    }
}
