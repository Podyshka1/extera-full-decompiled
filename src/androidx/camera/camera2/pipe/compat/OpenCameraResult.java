package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0080\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Landroidx/camera/camera2/pipe/compat/OpenCameraResult;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/compat/AndroidCameraState;", "cameraState", "Landroidx/camera/camera2/pipe/CameraError;", "errorCode", "<init>", "(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Landroidx/camera/camera2/pipe/compat/AndroidCameraState;", "getCameraState", "()Landroidx/camera/camera2/pipe/compat/AndroidCameraState;", "Landroidx/camera/camera2/pipe/CameraError;", "getErrorCode-mVEW8x0", "()Landroidx/camera/camera2/pipe/CameraError;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class OpenCameraResult {
    private final AndroidCameraState cameraState;
    private final CameraError errorCode;

    public /* synthetic */ OpenCameraResult(AndroidCameraState androidCameraState, CameraError cameraError, DefaultConstructorMarker defaultConstructorMarker) {
        this(androidCameraState, cameraError);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OpenCameraResult)) {
            return false;
        }
        OpenCameraResult openCameraResult = (OpenCameraResult) other;
        return Intrinsics.areEqual(this.cameraState, openCameraResult.cameraState) && Intrinsics.areEqual(this.errorCode, openCameraResult.errorCode);
    }

    public int hashCode() {
        AndroidCameraState androidCameraState = this.cameraState;
        int iHashCode = (androidCameraState == null ? 0 : androidCameraState.hashCode()) * 31;
        CameraError cameraError = this.errorCode;
        return iHashCode + (cameraError != null ? CameraError.m1303hashCodeimpl(cameraError.getValue()) : 0);
    }

    public String toString() {
        return "OpenCameraResult(cameraState=" + this.cameraState + ", errorCode=" + this.errorCode + ')';
    }

    private OpenCameraResult(AndroidCameraState androidCameraState, CameraError cameraError) {
        this.cameraState = androidCameraState;
        this.errorCode = cameraError;
    }

    public /* synthetic */ OpenCameraResult(AndroidCameraState androidCameraState, CameraError cameraError, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : androidCameraState, (i & 2) != 0 ? null : cameraError, null);
    }

    public final AndroidCameraState getCameraState() {
        return this.cameraState;
    }

    /* JADX INFO: renamed from: getErrorCode-mVEW8x0, reason: not valid java name and from getter */
    public final CameraError getErrorCode() {
        return this.errorCode;
    }
}
