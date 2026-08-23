package androidx.camera.featurecombinationquery;

import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.params.SessionConfiguration;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompat;

/* JADX INFO: loaded from: classes4.dex */
class Camera2CameraDeviceSetupCompat implements CameraDeviceSetupCompat {
    private final CameraDevice.CameraDeviceSetup mCameraDeviceSetup;

    Camera2CameraDeviceSetupCompat(CameraManager cameraManager, String str) {
        this.mCameraDeviceSetup = cameraManager.getCameraDeviceSetup(str);
    }

    @Override // androidx.camera.featurecombinationquery.CameraDeviceSetupCompat
    public CameraDeviceSetupCompat.SupportQueryResult isSessionConfigurationSupported(SessionConfiguration sessionConfiguration) {
        return new CameraDeviceSetupCompat.SupportQueryResult(this.mCameraDeviceSetup.isSessionConfigurationSupported(sessionConfiguration) ? 1 : 2, 2, getBuildTimeEpochMillis());
    }

    public static long getBuildTimeEpochMillis() {
        String property = System.getProperty("ro.build.date.utc");
        if (property == null) {
            return 0L;
        }
        try {
            return Long.parseLong(property) * 1000;
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }
}
