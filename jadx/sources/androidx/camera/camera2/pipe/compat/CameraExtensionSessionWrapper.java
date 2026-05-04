package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.UnsafeWrapper;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraExtensionSessionWrapper extends CameraCaptureSessionWrapper, UnsafeWrapper, AutoCloseable {

    public interface StateCallback extends SessionStateCallback {
        void onClosed(CameraExtensionSessionWrapper cameraExtensionSessionWrapper);

        void onConfigureFailed(CameraExtensionSessionWrapper cameraExtensionSessionWrapper);

        void onConfigured(CameraExtensionSessionWrapper cameraExtensionSessionWrapper);
    }
}
