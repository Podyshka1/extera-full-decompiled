package androidx.camera.core.impl;

import android.os.SystemClock;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import androidx.view.MutableLiveData;
import androidx.view.Observer;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveDataObservable<T> implements Observable<T> {
    private Observer<Result<T>> mLiveDataObserver;
    final MutableLiveData<Result<T>> mLiveData = new MutableLiveData<>();
    private final Map<Observable.Observer<? super T>, Executor> mObservers = new HashMap();

    public void postValue(T t) {
        this.mLiveData.postValue(Result.fromValue(t));
    }

    @Override // androidx.camera.core.impl.Observable
    public ListenableFuture<T> fetchData() {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.impl.LiveDataObservable$$ExternalSyntheticLambda1
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return LiveDataObservable.m1669$r8$lambda$DTQl2TjsJw2q1DsAXZ5y6fSWXY(this.f$0, completer);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$DTQl2TjsJw2q-1DsAXZ5y6fSWXY, reason: not valid java name */
    public static /* synthetic */ Object m1669$r8$lambda$DTQl2TjsJw2q1DsAXZ5y6fSWXY(final LiveDataObservable liveDataObservable, final CallbackToFutureAdapter.Completer completer) {
        liveDataObservable.getClass();
        CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.LiveDataObservable$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                LiveDataObservable.$r8$lambda$sc5wmr8WXbqD092EUWP6jtN6OSA(this.f$0, completer);
            }
        });
        return liveDataObservable + " [fetch@" + SystemClock.uptimeMillis() + "]";
    }

    public static /* synthetic */ void $r8$lambda$sc5wmr8WXbqD092EUWP6jtN6OSA(LiveDataObservable liveDataObservable, CallbackToFutureAdapter.Completer completer) {
        Result<T> value = liveDataObservable.mLiveData.getValue();
        if (value == null) {
            completer.setException(new IllegalStateException("Observable has not yet been initialized with a value."));
        } else if (value.completedSuccessfully()) {
            completer.set(value.getValue());
        } else {
            Preconditions.checkNotNull(value.getError());
            completer.setException(value.getError());
        }
    }

    @Override // androidx.camera.core.impl.Observable
    public void addObserver(Executor executor, final Observable.Observer<? super T> observer) {
        synchronized (this.mObservers) {
            try {
                boolean zIsEmpty = this.mObservers.isEmpty();
                this.mObservers.put(observer, executor);
                if (zIsEmpty) {
                    enableInternalObserver();
                } else {
                    executor.execute(new Runnable() { // from class: androidx.camera.core.impl.LiveDataObservable$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            LiveDataObservable.$r8$lambda$bIiLsq5VMRHUgaxTWfxQrAa_AEA(this.f$0, observer);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$bIiLsq5VMRHUgaxTWfxQrAa_AEA(LiveDataObservable liveDataObservable, Observable.Observer observer) {
        Result<T> value = liveDataObservable.mLiveData.getValue();
        if (value == null) {
            return;
        }
        if (value.completedSuccessfully()) {
            observer.onNewData(value.getValue());
        } else {
            Preconditions.checkNotNull(value.getError());
            observer.onError(value.getError());
        }
    }

    @Override // androidx.camera.core.impl.Observable
    public void removeObserver(Observable.Observer<? super T> observer) {
        synchronized (this.mObservers) {
            try {
                this.mObservers.remove(observer);
                if (this.mObservers.isEmpty()) {
                    disableInternalObserver();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void enableInternalObserver() {
        CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.LiveDataObservable$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                LiveDataObservable.$r8$lambda$LKT2v2fAl083LP0BjTe4nlYR_DU(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$LKT2v2fAl083LP0BjTe4nlYR_DU(final LiveDataObservable liveDataObservable) {
        if (liveDataObservable.mLiveDataObserver == null) {
            liveDataObservable.mLiveDataObserver = new Observer() { // from class: androidx.camera.core.impl.LiveDataObservable$$ExternalSyntheticLambda5
                @Override // androidx.view.Observer
                public final void onChanged(Object obj) {
                    LiveDataObservable.$r8$lambda$7Sc_53ASTYjdYS62VV4J0wSJfBk(this.f$0, (LiveDataObservable.Result) obj);
                }
            };
        }
        liveDataObservable.mLiveData.observeForever(liveDataObservable.mLiveDataObserver);
    }

    public static /* synthetic */ void $r8$lambda$7Sc_53ASTYjdYS62VV4J0wSJfBk(LiveDataObservable liveDataObservable, final Result result) {
        HashMap map;
        synchronized (liveDataObservable.mObservers) {
            map = new HashMap(liveDataObservable.mObservers);
        }
        for (final Map.Entry entry : map.entrySet()) {
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.core.impl.LiveDataObservable$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    LiveDataObservable.$r8$lambda$AWTQLUu3rNfTZHr0s2jqBJBGAbk(entry, result);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void $r8$lambda$AWTQLUu3rNfTZHr0s2jqBJBGAbk(Map.Entry entry, Result result) {
        Observable.Observer observer = (Observable.Observer) entry.getKey();
        if (result.completedSuccessfully()) {
            observer.onNewData(result.getValue());
        } else {
            Preconditions.checkNotNull(result.getError());
            observer.onError(result.getError());
        }
    }

    private void disableInternalObserver() {
        CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.LiveDataObservable$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                LiveDataObservable.m1670$r8$lambda$RDgtUSA8acdlq9PBbMSiiQGdR4(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$RD-gtUSA8acdlq9PBbMSiiQGdR4, reason: not valid java name */
    public static /* synthetic */ void m1670$r8$lambda$RDgtUSA8acdlq9PBbMSiiQGdR4(LiveDataObservable liveDataObservable) {
        Observer<Result<T>> observer = liveDataObservable.mLiveDataObserver;
        if (observer != null) {
            liveDataObservable.mLiveData.removeObserver(observer);
        }
    }

    public static final class Result<T> {
        private final Throwable mError;
        private final T mValue;

        private Result(T t, Throwable th) {
            this.mValue = t;
            this.mError = th;
        }

        public static <T> Result<T> fromValue(T t) {
            return new Result<>(t, null);
        }

        public boolean completedSuccessfully() {
            return this.mError == null;
        }

        public T getValue() {
            if (!completedSuccessfully()) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Result contains an error. Does not contain a value.");
                return null;
            }
            return this.mValue;
        }

        public Throwable getError() {
            return this.mError;
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder("[Result: <");
            if (completedSuccessfully()) {
                str = "Value: " + this.mValue;
            } else {
                str = "Error: " + this.mError;
            }
            sb.append(str);
            sb.append(">]");
            return sb.toString();
        }
    }
}
