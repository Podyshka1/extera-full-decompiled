package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraId;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;

/* JADX INFO: loaded from: classes3.dex */
public final class RequestCloseById extends CameraRequest {
    private final String activeCameraId;
    private final CompletableDeferred deferred;

    public /* synthetic */ RequestCloseById(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private RequestCloseById(String activeCameraId) {
        super(null);
        Intrinsics.checkNotNullParameter(activeCameraId, "activeCameraId");
        this.activeCameraId = activeCameraId;
        this.deferred = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
    }

    /* JADX INFO: renamed from: getActiveCameraId-Dz_R5H8, reason: not valid java name */
    public final String m1857getActiveCameraIdDz_R5H8() {
        return this.activeCameraId;
    }

    public final CompletableDeferred getDeferred() {
        return this.deferred;
    }

    public String toString() {
        return "RequestCloseById(" + ((Object) CameraId.m1607toStringimpl(this.activeCameraId)) + ')';
    }
}
