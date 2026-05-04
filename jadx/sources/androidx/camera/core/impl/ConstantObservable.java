package androidx.camera.core.impl;

import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class ConstantObservable implements Observable {
    private static final ConstantObservable NULL_OBSERVABLE = new ConstantObservable(null);
    private final ListenableFuture mValueFuture;

    @Override // androidx.camera.core.impl.Observable
    public void removeObserver(Observable.Observer observer) {
    }

    public static Observable withValue(Object obj) {
        if (obj == null) {
            return NULL_OBSERVABLE;
        }
        return new ConstantObservable(obj);
    }

    private ConstantObservable(Object obj) {
        this.mValueFuture = Futures.immediateFuture(obj);
    }

    @Override // androidx.camera.core.impl.Observable
    public ListenableFuture fetchData() {
        return this.mValueFuture;
    }

    @Override // androidx.camera.core.impl.Observable
    public void addObserver(Executor executor, final Observable.Observer observer) {
        this.mValueFuture.addListener(new Runnable() { // from class: androidx.camera.core.impl.ConstantObservable$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ConstantObservable.m1980$r8$lambda$CU8tzk54coO4YN1XdH27mWLPpU(this.f$0, observer);
            }
        }, executor);
    }

    /* JADX INFO: renamed from: $r8$lambda$CU8tzk54coO4YN1XdH27mWLPp-U, reason: not valid java name */
    public static /* synthetic */ void m1980$r8$lambda$CU8tzk54coO4YN1XdH27mWLPpU(ConstantObservable constantObservable, Observable.Observer observer) {
        constantObservable.getClass();
        try {
            observer.onNewData(constantObservable.mValueFuture.get());
        } catch (InterruptedException | ExecutionException e) {
            observer.onError(e);
        }
    }
}
