package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.util.Size;
import androidx.camera.camera2.pipe.CameraMetadata;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Api35Compat {
    public static final Api35Compat INSTANCE = new Api35Compat();

    private Api35Compat() {
    }

    public static final boolean isTorchStrengthSupported(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        CameraCharacteristics.Key FLASH_TORCH_STRENGTH_MAX_LEVEL = CameraCharacteristics.FLASH_TORCH_STRENGTH_MAX_LEVEL;
        Intrinsics.checkNotNullExpressionValue(FLASH_TORCH_STRENGTH_MAX_LEVEL, "FLASH_TORCH_STRENGTH_MAX_LEVEL");
        Integer num = (Integer) cameraMetadata.get(FLASH_TORCH_STRENGTH_MAX_LEVEL);
        return num != null && num.intValue() > 1;
    }

    public static final int getDefaultTorchStrengthLevel(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        CameraCharacteristics.Key FLASH_TORCH_STRENGTH_DEFAULT_LEVEL = CameraCharacteristics.FLASH_TORCH_STRENGTH_DEFAULT_LEVEL;
        Intrinsics.checkNotNullExpressionValue(FLASH_TORCH_STRENGTH_DEFAULT_LEVEL, "FLASH_TORCH_STRENGTH_DEFAULT_LEVEL");
        Integer num = (Integer) cameraMetadata.get(FLASH_TORCH_STRENGTH_DEFAULT_LEVEL);
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    public static final int getMaxTorchStrengthLevel(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        CameraCharacteristics.Key FLASH_TORCH_STRENGTH_MAX_LEVEL = CameraCharacteristics.FLASH_TORCH_STRENGTH_MAX_LEVEL;
        Intrinsics.checkNotNullExpressionValue(FLASH_TORCH_STRENGTH_MAX_LEVEL, "FLASH_TORCH_STRENGTH_MAX_LEVEL");
        Integer num = (Integer) cameraMetadata.get(FLASH_TORCH_STRENGTH_MAX_LEVEL);
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    public static final OutputConfiguration newImageReaderOutputConfiguration(int i, Size surfaceSize) {
        Intrinsics.checkNotNullParameter(surfaceSize, "surfaceSize");
        return Api35Compat$$ExternalSyntheticApiModelOutline0.m62m(i, surfaceSize);
    }

    public static final SessionConfiguration newSessionConfiguration(int i, List outputs) {
        Intrinsics.checkNotNullParameter(outputs, "outputs");
        return Api35Compat$$ExternalSyntheticApiModelOutline1.m63m(i, outputs);
    }

    public static final List getAvailableSessionCharacteristicsKeys(CameraCharacteristics cameraCharacteristics) {
        Intrinsics.checkNotNullParameter(cameraCharacteristics, "cameraCharacteristics");
        return cameraCharacteristics.getAvailableSessionCharacteristicsKeys();
    }
}
