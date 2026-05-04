package androidx.camera.core.impl.utils.futures;

/* JADX INFO: loaded from: classes4.dex */
public interface FutureCallback {
    void onFailure(Throwable th);

    void onSuccess(Object obj);
}
