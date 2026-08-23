package androidx.camera.core.impl;

import androidx.camera.core.Logger;
import androidx.camera.core.impl.Observable;
import androidx.core.util.Consumer;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class QuirkSettingsHolder {
    public static final QuirkSettings DEFAULT = QuirkSettings.withDefaultBehavior();
    private static final QuirkSettingsHolder sInstance = new QuirkSettingsHolder();
    private final MutableStateObservable<QuirkSettings> mObservable = MutableStateObservable.withInitialState(DEFAULT);

    public static QuirkSettingsHolder instance() {
        return sInstance;
    }

    public QuirkSettings get() {
        try {
            return this.mObservable.fetchData().get();
        } catch (InterruptedException | ExecutionException e) {
            throw new AssertionError("Unexpected error in QuirkSettings StateObservable", e);
        }
    }

    public void set(QuirkSettings quirkSettings) {
        this.mObservable.setState(quirkSettings);
    }

    public void observe(Executor executor, Consumer<QuirkSettings> consumer) {
        this.mObservable.addObserver(executor, new ObserverToConsumerAdapter(consumer));
    }

    public static class ObserverToConsumerAdapter<T> implements Observable.Observer<T> {
        private final Consumer<T> mDelegate;

        public ObserverToConsumerAdapter(Consumer<T> consumer) {
            this.mDelegate = consumer;
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onNewData(T t) {
            this.mDelegate.accept(t);
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onError(Throwable th) {
            Logger.m78e("ObserverToConsumerAdapter", "Unexpected error in Observable", th);
        }
    }
}
