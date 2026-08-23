package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OpenCameraResult {
    private final AndroidCameraState cameraState;
    private final CameraError errorCode;

    public /* synthetic */ OpenCameraResult(AndroidCameraState androidCameraState, CameraError cameraError, DefaultConstructorMarker defaultConstructorMarker) {
        this(androidCameraState, cameraError);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OpenCameraResult)) {
            return false;
        }
        OpenCameraResult openCameraResult = (OpenCameraResult) obj;
        return Intrinsics.areEqual(this.cameraState, openCameraResult.cameraState) && Intrinsics.areEqual(this.errorCode, openCameraResult.errorCode);
    }

    public int hashCode() {
        AndroidCameraState androidCameraState = this.cameraState;
        int iHashCode = (androidCameraState == null ? 0 : androidCameraState.hashCode()) * 31;
        CameraError cameraError = this.errorCode;
        return iHashCode + (cameraError != null ? CameraError.m1554hashCodeimpl(cameraError.m1557unboximpl()) : 0);
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

    /* JADX INFO: renamed from: getErrorCode-mVEW8x0, reason: not valid java name */
    public final CameraError m1848getErrorCodemVEW8x0() {
        return this.errorCode;
    }
}
