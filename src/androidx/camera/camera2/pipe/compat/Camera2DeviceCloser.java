package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraDevice;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001JD\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\rH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000fÀ\u0006\u0003"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;", _UrlKt.FRAGMENT_ENCODE_SET, "closeCamera", _UrlKt.FRAGMENT_ENCODE_SET, "cameraDeviceWrapper", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "cameraDevice", "Landroid/hardware/camera2/CameraDevice;", "androidCameraState", "Landroidx/camera/camera2/pipe/compat/AndroidCameraState;", "audioRestrictionController", "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;", "shouldReopenCamera", _UrlKt.FRAGMENT_ENCODE_SET, "shouldCreateEmptyCaptureSession", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public interface Camera2DeviceCloser {
    void closeCamera(CameraDeviceWrapper cameraDeviceWrapper, CameraDevice cameraDevice, AndroidCameraState androidCameraState, AudioRestrictionController audioRestrictionController, boolean shouldReopenCamera, boolean shouldCreateEmptyCaptureSession);

    static /* synthetic */ void closeCamera$default(Camera2DeviceCloser camera2DeviceCloser, CameraDeviceWrapper cameraDeviceWrapper, CameraDevice cameraDevice, AndroidCameraState androidCameraState, AudioRestrictionController audioRestrictionController, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m968m("Super calls with default arguments not supported in this target, function: closeCamera");
            return;
        }
        if ((i & 1) != 0) {
            cameraDeviceWrapper = null;
        }
        if ((i & 2) != 0) {
            cameraDevice = null;
        }
        if ((i & 16) != 0) {
            z = false;
        }
        if ((i & 32) != 0) {
            z2 = false;
        }
        camera2DeviceCloser.closeCamera(cameraDeviceWrapper, cameraDevice, androidCameraState, audioRestrictionController, z, z2);
    }
}
