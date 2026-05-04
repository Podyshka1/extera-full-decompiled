package retrofit2;

import okhttp3.Request;

/* JADX INFO: loaded from: classes3.dex */
public interface Call<T> extends Cloneable {
    void cancel();

    /* JADX INFO: renamed from: clone */
    Call mo21022clone();

    void enqueue(Callback callback);

    boolean isCanceled();

    Request request();
}
