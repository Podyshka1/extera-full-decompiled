package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.view.Surface;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class RejectOperationCameraCaptureSession extends CameraCaptureSession {
    @Override // android.hardware.camera2.CameraCaptureSession
    public CameraDevice getDevice() {
        throw new IllegalArgumentException(createExceptionMessage("getDevice"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void prepare(Surface surface) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        throw new IllegalArgumentException(createExceptionMessage("prepare"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void finalizeOutputConfigurations(List list) {
        throw new IllegalArgumentException(createExceptionMessage("finalizeOutputConfigurations"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int capture(CaptureRequest request, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        Intrinsics.checkNotNullParameter(request, "request");
        throw new IllegalArgumentException(createExceptionMessage("capture"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int captureBurst(List requests, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        Intrinsics.checkNotNullParameter(requests, "requests");
        throw new IllegalArgumentException(createExceptionMessage("captureBurst"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int setRepeatingRequest(CaptureRequest request, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        Intrinsics.checkNotNullParameter(request, "request");
        throw new IllegalArgumentException(createExceptionMessage("setRepeatingRequest"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int setRepeatingBurst(List requests, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        Intrinsics.checkNotNullParameter(requests, "requests");
        throw new IllegalArgumentException(createExceptionMessage("setRepeatingBurst"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void stopRepeating() {
        throw new IllegalArgumentException(createExceptionMessage("stopRepeating"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void abortCaptures() {
        throw new IllegalArgumentException(createExceptionMessage("abortCaptures"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public boolean isReprocessable() {
        throw new IllegalArgumentException(createExceptionMessage("isReprocessable"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public Surface getInputSurface() {
        throw new IllegalArgumentException(createExceptionMessage("getInputSurface"));
    }

    @Override // android.hardware.camera2.CameraCaptureSession, java.lang.AutoCloseable
    public void close() {
        throw new IllegalArgumentException(createExceptionMessage("close"));
    }

    private final String createExceptionMessage(String str) {
        return "Current capture session is running on extensions mode which isn't allowed to invoke the " + str + " function!";
    }
}
