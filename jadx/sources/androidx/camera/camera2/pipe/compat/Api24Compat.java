package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.params.InputConfiguration;
import android.os.Handler;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Api24Compat {
    public static final Api24Compat INSTANCE = new Api24Compat();

    private Api24Compat() {
    }

    public static final void createCaptureSessionByOutputConfigurations(CameraDevice cameraDevice, List outputConfig, CameraCaptureSession.StateCallback stateCallback, Handler handler) throws CameraAccessException {
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        Intrinsics.checkNotNullParameter(outputConfig, "outputConfig");
        Intrinsics.checkNotNullParameter(stateCallback, "stateCallback");
        cameraDevice.createCaptureSessionByOutputConfigurations(outputConfig, stateCallback, handler);
    }

    public static final void createReprocessableCaptureSessionByConfigurations(CameraDevice cameraDevice, InputConfiguration inputConfig, List outputs, CameraCaptureSession.StateCallback stateCallback, Handler handler) throws CameraAccessException {
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        Intrinsics.checkNotNullParameter(inputConfig, "inputConfig");
        Intrinsics.checkNotNullParameter(outputs, "outputs");
        Intrinsics.checkNotNullParameter(stateCallback, "stateCallback");
        cameraDevice.createReprocessableCaptureSessionByConfigurations(inputConfig, outputs, stateCallback, handler);
    }
}
