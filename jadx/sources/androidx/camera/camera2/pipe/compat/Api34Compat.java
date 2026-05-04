package androidx.camera.camera2.pipe.compat;

import android.graphics.ColorSpace;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.params.ExtensionSessionConfiguration;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import androidx.camera.camera2.pipe.CameraMetadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Api34Compat {
    public static final Api34Compat INSTANCE = new Api34Compat();

    private Api34Compat() {
    }

    public static final boolean isPostviewAvailable(CameraExtensionCharacteristics extensionCharacteristics, int i) {
        Intrinsics.checkNotNullParameter(extensionCharacteristics, "extensionCharacteristics");
        return extensionCharacteristics.isPostviewAvailable(i);
    }

    public static final boolean isCaptureProcessProgressAvailable(CameraExtensionCharacteristics extensionCharacteristics, int i) {
        Intrinsics.checkNotNullParameter(extensionCharacteristics, "extensionCharacteristics");
        return extensionCharacteristics.isCaptureProcessProgressAvailable(i);
    }

    public static final void setPostviewOutputConfiguration(ExtensionSessionConfiguration extensionSessionConfiguration, OutputConfiguration postviewOutputConfiguration) {
        Intrinsics.checkNotNullParameter(extensionSessionConfiguration, "extensionSessionConfiguration");
        Intrinsics.checkNotNullParameter(postviewOutputConfiguration, "postviewOutputConfiguration");
        extensionSessionConfiguration.setPostviewOutputConfiguration(postviewOutputConfiguration);
    }

    public static final boolean isZoomOverrideSupported(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        CameraCharacteristics.Key CONTROL_AVAILABLE_SETTINGS_OVERRIDES = CameraCharacteristics.CONTROL_AVAILABLE_SETTINGS_OVERRIDES;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AVAILABLE_SETTINGS_OVERRIDES, "CONTROL_AVAILABLE_SETTINGS_OVERRIDES");
        int[] iArr = (int[]) cameraMetadata.get(CONTROL_AVAILABLE_SETTINGS_OVERRIDES);
        return iArr != null && ArraysKt.contains(iArr, 1);
    }

    public static final void setColorSpace(SessionConfiguration sessionConfiguration, ColorSpace.Named colorSpace) {
        Intrinsics.checkNotNullParameter(sessionConfiguration, "sessionConfiguration");
        Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
        sessionConfiguration.setColorSpace(colorSpace);
    }
}
