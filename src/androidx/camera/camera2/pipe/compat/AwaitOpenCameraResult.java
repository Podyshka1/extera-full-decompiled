package androidx.camera.camera2.pipe.compat;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AwaitOpenCameraResult {
    private final AndroidCameraState androidCameraState;
    private final CameraDeviceWrapper cameraDeviceWrapper;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AwaitOpenCameraResult)) {
            return false;
        }
        AwaitOpenCameraResult awaitOpenCameraResult = (AwaitOpenCameraResult) obj;
        return Intrinsics.areEqual(this.cameraDeviceWrapper, awaitOpenCameraResult.cameraDeviceWrapper) && Intrinsics.areEqual(this.androidCameraState, awaitOpenCameraResult.androidCameraState);
    }

    public int hashCode() {
        CameraDeviceWrapper cameraDeviceWrapper = this.cameraDeviceWrapper;
        int iHashCode = (cameraDeviceWrapper == null ? 0 : cameraDeviceWrapper.hashCode()) * 31;
        AndroidCameraState androidCameraState = this.androidCameraState;
        return iHashCode + (androidCameraState != null ? androidCameraState.hashCode() : 0);
    }

    public String toString() {
        return "AwaitOpenCameraResult(cameraDeviceWrapper=" + this.cameraDeviceWrapper + ", androidCameraState=" + this.androidCameraState + ')';
    }

    public AwaitOpenCameraResult(CameraDeviceWrapper cameraDeviceWrapper, AndroidCameraState androidCameraState) {
        this.cameraDeviceWrapper = cameraDeviceWrapper;
        this.androidCameraState = androidCameraState;
    }

    public final CameraDeviceWrapper getCameraDeviceWrapper() {
        return this.cameraDeviceWrapper;
    }

    public final AndroidCameraState getAndroidCameraState() {
        return this.androidCameraState;
    }
}
