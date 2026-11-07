package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraId;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u000e\u001a\u00020\u000fH\u0016R\u0013\u0010\u0002\u001a\u00020\u0003¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Landroidx/camera/camera2/pipe/compat/RequestCloseById;", "Landroidx/camera/camera2/pipe/compat/CameraRequest;", "activeCameraId", "Landroidx/camera/camera2/pipe/CameraId;", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getActiveCameraId-Dz_R5H8", "()Ljava/lang/String;", "Ljava/lang/String;", "deferred", "Lkotlinx/coroutines/CompletableDeferred;", _UrlKt.FRAGMENT_ENCODE_SET, "getDeferred", "()Lkotlinx/coroutines/CompletableDeferred;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class RequestCloseById extends CameraRequest {
    private final String activeCameraId;
    private final CompletableDeferred<Unit> deferred;

    public /* synthetic */ RequestCloseById(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    private RequestCloseById(String str) {
        super(null);
        this.activeCameraId = str;
        this.deferred = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
    }

    /* JADX INFO: renamed from: getActiveCameraId-Dz_R5H8, reason: not valid java name and from getter */
    public final String getActiveCameraId() {
        return this.activeCameraId;
    }

    public final CompletableDeferred<Unit> getDeferred() {
        return this.deferred;
    }

    public String toString() {
        return "RequestCloseById(" + ((Object) CameraId.m1303toStringimpl(this.activeCameraId)) + ')';
    }
}
