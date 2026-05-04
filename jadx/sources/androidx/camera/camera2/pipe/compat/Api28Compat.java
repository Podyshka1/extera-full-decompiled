package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.media.Image;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public final class Api28Compat {
    public static final Api28Compat INSTANCE = new Api28Compat();

    private Api28Compat() {
    }

    public static final void createCaptureSession(CameraDevice cameraDevice, SessionConfiguration sessionConfig) throws CameraAccessException {
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
        cameraDevice.createCaptureSession(sessionConfig);
    }

    public static final List getAvailablePhysicalCameraRequestKeys(CameraCharacteristics cameraCharacteristics) {
        Intrinsics.checkNotNullParameter(cameraCharacteristics, "cameraCharacteristics");
        return cameraCharacteristics.getAvailablePhysicalCameraRequestKeys();
    }

    public static final List getAvailableSessionKeys(CameraCharacteristics cameraCharacteristics) {
        Intrinsics.checkNotNullParameter(cameraCharacteristics, "cameraCharacteristics");
        return cameraCharacteristics.getAvailableSessionKeys();
    }

    public static final Set getPhysicalCameraIds(CameraCharacteristics cameraCharacteristics) {
        Intrinsics.checkNotNullParameter(cameraCharacteristics, "cameraCharacteristics");
        Set<String> physicalCameraIds = cameraCharacteristics.getPhysicalCameraIds();
        Intrinsics.checkNotNullExpressionValue(physicalCameraIds, "getPhysicalCameraIds(...)");
        return physicalCameraIds;
    }

    public static final Map getPhysicalCaptureResults(TotalCaptureResult totalCaptureResult) {
        Intrinsics.checkNotNullParameter(totalCaptureResult, "totalCaptureResult");
        return totalCaptureResult.getPhysicalCameraResults();
    }

    public static final SessionConfiguration newSessionConfiguration(int i, List outputs, Executor executor, CameraCaptureSession.StateCallback stateCallback) {
        Intrinsics.checkNotNullParameter(outputs, "outputs");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(stateCallback, "stateCallback");
        return Api28Compat$$ExternalSyntheticApiModelOutline0.m54m(i, outputs, executor, stateCallback);
    }

    public static final void setInputConfiguration(SessionConfiguration sessionConfig, InputConfiguration inputConfig) {
        Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
        Intrinsics.checkNotNullParameter(inputConfig, "inputConfig");
        sessionConfig.setInputConfiguration(inputConfig);
    }

    public static final void setSessionParameters(SessionConfiguration sessionConfig, CaptureRequest params) {
        Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
        Intrinsics.checkNotNullParameter(params, "params");
        sessionConfig.setSessionParameters(params);
    }

    public static final int getMaxSharedSurfaceCount(OutputConfiguration outputConfig) {
        Intrinsics.checkNotNullParameter(outputConfig, "outputConfig");
        return outputConfig.getMaxSharedSurfaceCount();
    }

    public static final void setPhysicalCameraId(OutputConfiguration outputConfig, String str) {
        Intrinsics.checkNotNullParameter(outputConfig, "outputConfig");
        outputConfig.setPhysicalCameraId(str);
    }

    public static final void openCamera(CameraManager cameraManager, String cameraId, Executor executor, CameraDevice.StateCallback callback) throws CameraAccessException {
        Intrinsics.checkNotNullParameter(cameraManager, "cameraManager");
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        cameraManager.openCamera(cameraId, executor, callback);
    }

    public static final void registerAvailabilityCallback(CameraManager cameraManager, Executor executor, CameraManager.AvailabilityCallback callback) {
        Intrinsics.checkNotNullParameter(cameraManager, "cameraManager");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        cameraManager.registerAvailabilityCallback(executor, callback);
    }

    public static final Object unwrapAsHardwareBuffer(Image image, KClass type) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(Api28Compat$$ExternalSyntheticApiModelOutline1.m55m()))) {
            return image.getHardwareBuffer();
        }
        return null;
    }
}
