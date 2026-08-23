package androidx.camera.core.impl.utils.futures;

/* JADX INFO: loaded from: classes3.dex */
public interface FutureCallback<V> {
    void onFailure(Throwable th);

    void onSuccess(V v);
}
