package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.Logger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class DeviceInfoLogger {
    public static final DeviceInfoLogger INSTANCE = new DeviceInfoLogger();

    private DeviceInfoLogger() {
    }

    public final void logDeviceInfo(CameraProperties cameraProperties) {
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        logDeviceLevel(cameraProperties);
    }

    private final void logDeviceLevel(CameraProperties cameraProperties) {
        String str;
        CameraMetadata metadata = cameraProperties.getMetadata();
        CameraCharacteristics.Key INFO_SUPPORTED_HARDWARE_LEVEL = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
        Intrinsics.checkNotNullExpressionValue(INFO_SUPPORTED_HARDWARE_LEVEL, "INFO_SUPPORTED_HARDWARE_LEVEL");
        Integer num = (Integer) metadata.getOrDefault(INFO_SUPPORTED_HARDWARE_LEVEL, (Object) (-1));
        if (num != null && num.intValue() == 2) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_LEGACY";
        } else if (num != null && num.intValue() == 4) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_EXTERNAL";
        } else if (num != null && num.intValue() == 0) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED";
        } else if (num != null && num.intValue() == 1) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_FULL";
        } else if (num != null && num.intValue() == 3) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_3";
        } else {
            str = "Unknown value: " + num;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isInfoEnabled("CXCP")) {
            Log.i(Camera2Logger.TRUNCATED_TAG, "Device Level: " + str);
        }
    }
}
