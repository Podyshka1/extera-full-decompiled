package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ImageCapturePixelHDRPlusQuirk;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.core.impl.ImageCaptureConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImageCapturePixelHDRPlusKt {
    public static final void toggleHDRPlus(Camera2ImplConfig.Builder builder, ImageCaptureConfig imageCaptureConfig) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(imageCaptureConfig, "imageCaptureConfig");
        if (((ImageCapturePixelHDRPlusQuirk) DeviceQuirks.INSTANCE.get(ImageCapturePixelHDRPlusQuirk.class)) != null && imageCaptureConfig.hasCaptureMode()) {
            int captureMode = imageCaptureConfig.getCaptureMode();
            if (captureMode == 0) {
                CaptureRequest.Key CONTROL_ENABLE_ZSL = CaptureRequest.CONTROL_ENABLE_ZSL;
                Intrinsics.checkNotNullExpressionValue(CONTROL_ENABLE_ZSL, "CONTROL_ENABLE_ZSL");
                builder.setCaptureRequestOption(CONTROL_ENABLE_ZSL, Boolean.TRUE);
            } else {
                if (captureMode != 1) {
                    return;
                }
                CaptureRequest.Key CONTROL_ENABLE_ZSL2 = CaptureRequest.CONTROL_ENABLE_ZSL;
                Intrinsics.checkNotNullExpressionValue(CONTROL_ENABLE_ZSL2, "CONTROL_ENABLE_ZSL");
                builder.setCaptureRequestOption(CONTROL_ENABLE_ZSL2, Boolean.FALSE);
            }
        }
    }
}
