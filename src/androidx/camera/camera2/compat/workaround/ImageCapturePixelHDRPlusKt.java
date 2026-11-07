package androidx.camera.camera2.compat.workaround;

import android.annotation.SuppressLint;
import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ImageCapturePixelHDRPlusQuirk;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.core.impl.ImageCaptureConfig;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"toggleHDRPlus", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;", "imageCaptureConfig", "Landroidx/camera/core/impl/ImageCaptureConfig;", "camera-camera2"}, m910k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ImageCapturePixelHDRPlusKt {
    @SuppressLint({"NewApi"})
    public static final void toggleHDRPlus(Camera2ImplConfig.Builder builder, ImageCaptureConfig imageCaptureConfig) {
        if (((ImageCapturePixelHDRPlusQuirk) DeviceQuirks.INSTANCE.get(ImageCapturePixelHDRPlusQuirk.class)) != null && imageCaptureConfig.hasCaptureMode()) {
            int captureMode = imageCaptureConfig.getCaptureMode();
            if (captureMode == 0) {
                builder.setCaptureRequestOption(CaptureRequest.CONTROL_ENABLE_ZSL, Boolean.TRUE);
            } else {
                if (captureMode != 1) {
                    return;
                }
                builder.setCaptureRequestOption(CaptureRequest.CONTROL_ENABLE_ZSL, Boolean.FALSE);
            }
        }
    }
}
