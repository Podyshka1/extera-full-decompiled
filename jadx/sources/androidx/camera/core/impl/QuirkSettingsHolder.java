package androidx.camera.core.impl;

import androidx.camera.core.Logger;
import androidx.camera.core.impl.Observable;
import androidx.core.util.Consumer;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class QuirkSettingsHolder {
    public static final QuirkSettings DEFAULT = QuirkSettings.withDefaultBehavior();
    private static final QuirkSettingsHolder sInstance = new QuirkSettingsHolder();
    private final MutableStateObservable mObservable = MutableStateObservable.withInitialState(DEFAULT);

    public static QuirkSettingsHolder instance() {
        return sInstance;
    }

    public QuirkSettings get() {
        try {
            return (QuirkSettings) this.mObservable.fetchData().get();
        } catch (InterruptedException | ExecutionException e) {
            throw new AssertionError("Unexpected error in QuirkSettings StateObservable", e);
        }
    }

    public void set(QuirkSettings quirkSettings) {
        this.mObservable.setState(quirkSettings);
    }

    public void observe(Executor executor, Consumer consumer) {
        this.mObservable.addObserver(executor, new ObserverToConsumerAdapter(consumer));
    }

    private static class ObserverToConsumerAdapter implements Observable.Observer {
        private final Consumer mDelegate;

        ObserverToConsumerAdapter(Consumer consumer) {
            this.mDelegate = consumer;
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onNewData(Object obj) {
            this.mDelegate.accept(obj);
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onError(Throwable th) {
            Logger.m79e("ObserverToConsumerAdapter", "Unexpected error in Observable", th);
        }
    }
}
