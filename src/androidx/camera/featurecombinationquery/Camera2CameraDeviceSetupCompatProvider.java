package androidx.camera.featurecombinationquery;

import android.content.Context;
import android.hardware.camera2.CameraManager;

/* JADX INFO: loaded from: classes3.dex */
class Camera2CameraDeviceSetupCompatProvider implements CameraDeviceSetupCompatProvider {
    private final CameraManager mCameraManager;

    public Camera2CameraDeviceSetupCompatProvider(Context context) {
        this.mCameraManager = (CameraManager) context.getSystemService(CameraManager.class);
    }

    @Override // androidx.camera.featurecombinationquery.CameraDeviceSetupCompatProvider
    public CameraDeviceSetupCompat getCameraDeviceSetupCompat(String str) {
        return new Camera2CameraDeviceSetupCompat(this.mCameraManager, str);
    }
}
