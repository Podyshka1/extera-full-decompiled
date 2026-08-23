package androidx.camera.core.impl;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public interface Observable<T> {

    public interface Observer<T> {
        void onError(Throwable th);

        void onNewData(T t);
    }

    void addObserver(Executor executor, Observer<? super T> observer);

    ListenableFuture<T> fetchData();

    void removeObserver(Observer<? super T> observer);
}
