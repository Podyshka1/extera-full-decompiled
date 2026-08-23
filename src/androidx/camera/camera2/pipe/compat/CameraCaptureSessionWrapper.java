package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.view.Surface;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraCaptureSessionWrapper extends UnsafeWrapper, AutoCloseable {

    public interface StateCallback extends SessionStateCallback {
        void onActive(CameraCaptureSessionWrapper cameraCaptureSessionWrapper);

        void onCaptureQueueEmpty(CameraCaptureSessionWrapper cameraCaptureSessionWrapper);

        void onClosed(CameraCaptureSessionWrapper cameraCaptureSessionWrapper);

        void onConfigureFailed(CameraCaptureSessionWrapper cameraCaptureSessionWrapper);

        void onConfigured(CameraCaptureSessionWrapper cameraCaptureSessionWrapper);

        void onReady(CameraCaptureSessionWrapper cameraCaptureSessionWrapper);
    }

    boolean abortCaptures();

    Integer capture(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback);

    Integer captureBurst(List list, CameraCaptureSession.CaptureCallback captureCallback);

    boolean finalizeOutputConfigurations(List list);

    CameraDeviceWrapper getDevice();

    /* JADX INFO: renamed from: getId-159jkk4 */
    int mo1795getId159jkk4();

    Surface getInputSurface();

    Integer setRepeatingBurst(List list, CameraCaptureSession.CaptureCallback captureCallback);

    Integer setRepeatingRequest(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback);

    boolean stopRepeating();
}
