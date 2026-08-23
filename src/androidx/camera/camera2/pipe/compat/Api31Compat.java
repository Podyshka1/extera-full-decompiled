package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CameraExtensionSession$StateCallback;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.ExtensionSessionConfiguration;
import android.hardware.camera2.params.InputConfiguration;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Api31Compat {
    public static final Api31Compat INSTANCE = new Api31Compat();

    private Api31Compat() {
    }

    public static final InputConfiguration newInputConfiguration(List inputConfigData, String cameraId) {
        Intrinsics.checkNotNullParameter(inputConfigData, "inputConfigData");
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        if (inputConfigData.isEmpty()) {
            throw new IllegalStateException("Call to create InputConfiguration but list of InputConfigData is empty.");
        }
        if (inputConfigData.size() == 1) {
            InputConfigData inputConfigData2 = (InputConfigData) CollectionsKt.first(inputConfigData);
            return new InputConfiguration(inputConfigData2.getWidth(), inputConfigData2.getHeight(), inputConfigData2.getFormat());
        }
        List<InputConfigData> list = inputConfigData;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (InputConfigData inputConfigData3 : list) {
            Api31Compat$$ExternalSyntheticApiModelOutline3.m59m();
            arrayList.add(Api31Compat$$ExternalSyntheticApiModelOutline1.m57m(inputConfigData3.getWidth(), inputConfigData3.getHeight(), cameraId));
        }
        Api31Compat$$ExternalSyntheticApiModelOutline4.m60m();
        return Api31Compat$$ExternalSyntheticApiModelOutline2.m58m(arrayList, ((InputConfigData) CollectionsKt.first(inputConfigData)).getFormat());
    }

    public static final Map getPhysicalCameraTotalResults(TotalCaptureResult totalCaptureResult) {
        Intrinsics.checkNotNullParameter(totalCaptureResult, "totalCaptureResult");
        return totalCaptureResult.getPhysicalCameraTotalResults();
    }

    public static final void createExtensionCaptureSession(CameraDevice cameraDevice, ExtensionSessionConfiguration extensionConfiguration) throws CameraAccessException {
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        Intrinsics.checkNotNullParameter(extensionConfiguration, "extensionConfiguration");
        cameraDevice.createExtensionSession(extensionConfiguration);
    }

    public static final CameraExtensionCharacteristics getCameraExtensionCharacteristics(CameraManager cameraManager, String cameraId) throws CameraAccessException {
        Intrinsics.checkNotNullParameter(cameraManager, "cameraManager");
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        CameraExtensionCharacteristics cameraExtensionCharacteristics = cameraManager.getCameraExtensionCharacteristics(cameraId);
        Intrinsics.checkNotNullExpressionValue(cameraExtensionCharacteristics, "getCameraExtensionCharacteristics(...)");
        return cameraExtensionCharacteristics;
    }

    public static final ExtensionSessionConfiguration newExtensionSessionConfiguration(int i, List outputs, Executor executor, CameraExtensionSession$StateCallback stateCallback) {
        Intrinsics.checkNotNullParameter(outputs, "outputs");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(stateCallback, "stateCallback");
        return Api31Compat$$ExternalSyntheticApiModelOutline0.m56m(i, outputs, executor, stateCallback);
    }

    public static final List getSupportedExtensions(CameraExtensionCharacteristics extensionCharacteristics) {
        Intrinsics.checkNotNullParameter(extensionCharacteristics, "extensionCharacteristics");
        List<Integer> supportedExtensions = extensionCharacteristics.getSupportedExtensions();
        Intrinsics.checkNotNullExpressionValue(supportedExtensions, "getSupportedExtensions(...)");
        return supportedExtensions;
    }
}
