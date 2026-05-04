package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraMetadataIntegrationKt {
    public static final List getAvailableAfModes(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
        CameraCharacteristics.Key CONTROL_AF_AVAILABLE_MODES = CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AF_AVAILABLE_MODES, "CONTROL_AF_AVAILABLE_MODES");
        Object orDefault = cameraMetadata.getOrDefault(CONTROL_AF_AVAILABLE_MODES, new int[]{0});
        Intrinsics.checkNotNullExpressionValue(orDefault, "getOrDefault(...)");
        return ArraysKt.asList((int[]) orDefault);
    }

    public static final List getAvailableAeModes(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
        CameraCharacteristics.Key CONTROL_AE_AVAILABLE_MODES = CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AE_AVAILABLE_MODES, "CONTROL_AE_AVAILABLE_MODES");
        Object orDefault = cameraMetadata.getOrDefault(CONTROL_AE_AVAILABLE_MODES, new int[]{0});
        Intrinsics.checkNotNullExpressionValue(orDefault, "getOrDefault(...)");
        return ArraysKt.asList((int[]) orDefault);
    }

    public static final List getAvailableAwbModes(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
        CameraCharacteristics.Key CONTROL_AWB_AVAILABLE_MODES = CameraCharacteristics.CONTROL_AWB_AVAILABLE_MODES;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AWB_AVAILABLE_MODES, "CONTROL_AWB_AVAILABLE_MODES");
        Object orDefault = cameraMetadata.getOrDefault(CONTROL_AWB_AVAILABLE_MODES, new int[]{0});
        Intrinsics.checkNotNullExpressionValue(orDefault, "getOrDefault(...)");
        return ArraysKt.asList((int[]) orDefault);
    }

    public static final int getSupportedAfMode(CameraMetadata cameraMetadata, int i) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
        if (getAvailableAfModes(cameraMetadata).contains(Integer.valueOf(i))) {
            return i;
        }
        if (getAvailableAfModes(cameraMetadata).contains(4)) {
            return 4;
        }
        return getAvailableAfModes(cameraMetadata).contains(1) ? 1 : 0;
    }

    public static final int getSupportedAeMode(CameraMetadata cameraMetadata, int i) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
        return getAvailableAeModes(cameraMetadata).contains(Integer.valueOf(i)) ? i : getAvailableAeModes(cameraMetadata).contains(1) ? 1 : 0;
    }

    private static final boolean isAeModeSupported(CameraMetadata cameraMetadata, int i) {
        return getSupportedAeMode(cameraMetadata, i) == i;
    }

    public static final boolean isExternalFlashAeModeSupported(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
        return Build.VERSION.SDK_INT >= 28 && isAeModeSupported(cameraMetadata, 5);
    }

    public static final int getSupportedAwbMode(CameraMetadata cameraMetadata, int i) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
        return getAvailableAwbModes(cameraMetadata).contains(Integer.valueOf(i)) ? i : getAvailableAwbModes(cameraMetadata).contains(1) ? 1 : 0;
    }
}
