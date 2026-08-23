package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.OutputConfiguration;
import androidx.camera.camera2.pipe.CameraMetadata;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Api33Compat {
    public static final Api33Compat INSTANCE = new Api33Compat();

    private Api33Compat() {
    }

    public static final void setDynamicRangeProfile(OutputConfiguration outputConfig, long j) {
        Intrinsics.checkNotNullParameter(outputConfig, "outputConfig");
        outputConfig.setDynamicRangeProfile(j);
    }

    public static final void setMirrorMode(OutputConfiguration outputConfig, int i) {
        Intrinsics.checkNotNullParameter(outputConfig, "outputConfig");
        outputConfig.setMirrorMode(i);
    }

    public static final void setStreamUseCase(OutputConfiguration outputConfig, long j) {
        Intrinsics.checkNotNullParameter(outputConfig, "outputConfig");
        outputConfig.setStreamUseCase(j);
    }

    public static final Set getAvailableCaptureRequestKeys(CameraExtensionCharacteristics extensionCharacteristics, int i) {
        Intrinsics.checkNotNullParameter(extensionCharacteristics, "extensionCharacteristics");
        Set<CaptureRequest.Key> availableCaptureRequestKeys = extensionCharacteristics.getAvailableCaptureRequestKeys(i);
        Intrinsics.checkNotNullExpressionValue(availableCaptureRequestKeys, "getAvailableCaptureRequestKeys(...)");
        return availableCaptureRequestKeys;
    }

    public static final Set getAvailableCaptureResultKeys(CameraExtensionCharacteristics extensionCharacteristics, int i) {
        Intrinsics.checkNotNullParameter(extensionCharacteristics, "extensionCharacteristics");
        Set<CaptureResult.Key> availableCaptureResultKeys = extensionCharacteristics.getAvailableCaptureResultKeys(i);
        Intrinsics.checkNotNullExpressionValue(availableCaptureResultKeys, "getAvailableCaptureResultKeys(...)");
        return availableCaptureResultKeys;
    }

    public final boolean supportsPreviewStabilization(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        return ArraysKt.contains(CameraMetadata.Companion.getAvailableVideoStabilizationModes(cameraMetadata), 2);
    }
}
