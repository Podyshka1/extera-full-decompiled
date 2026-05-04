package androidx.camera.camera2.pipe.compat;

import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;

/* JADX INFO: loaded from: classes3.dex */
public final class RequestCloseAll extends CameraRequest {
    private final CompletableDeferred deferred;

    public RequestCloseAll() {
        super(null);
        this.deferred = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
    }

    public final CompletableDeferred getDeferred() {
        return this.deferred;
    }

    public String toString() {
        return "RequestCloseAll";
    }
}
