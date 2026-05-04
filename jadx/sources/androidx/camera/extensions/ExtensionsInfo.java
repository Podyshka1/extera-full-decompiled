package androidx.camera.extensions;

import android.content.Context;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import androidx.camera.core.CameraProvider;
import androidx.camera.extensions.internal.Camera2ExtensionsInfo;
import androidx.camera.extensions.internal.VendorExtender;

/* JADX INFO: loaded from: classes4.dex */
final class ExtensionsInfo {
    private static final VendorExtender EMPTY_VENDOR_EXTENDER = new VendorExtender() { // from class: androidx.camera.extensions.ExtensionsInfo.1
    };
    private final Camera2ExtensionsInfo mCamera2ExtensionsInfo;
    private final CameraProvider mCameraProvider;
    private VendorExtenderFactory mVendorExtenderFactory;

    ExtensionsInfo(CameraProvider cameraProvider, Context context) {
        this.mCameraProvider = cameraProvider;
        if (Build.VERSION.SDK_INT >= 31) {
            this.mCamera2ExtensionsInfo = new Camera2ExtensionsInfo((CameraManager) context.getSystemService(CameraManager.class));
        } else {
            this.mCamera2ExtensionsInfo = null;
        }
        this.mVendorExtenderFactory = new VendorExtenderFactory() { // from class: androidx.camera.extensions.ExtensionsInfo$$ExternalSyntheticLambda0
        };
    }
}
