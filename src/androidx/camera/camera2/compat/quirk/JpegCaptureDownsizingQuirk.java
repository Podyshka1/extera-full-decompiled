package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.internal.compat.quirk.SoftwareJpegEncodingPreferredQuirk;
import java.util.Locale;
import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class JpegCaptureDownsizingQuirk implements SoftwareJpegEncodingPreferredQuirk {
    public static final JpegCaptureDownsizingQuirk INSTANCE = new JpegCaptureDownsizingQuirk();
    private static final Set KNOWN_AFFECTED_FRONT_CAMERA_DEVICES = SetsKt.setOf("redmi note 8 pro");

    private JpegCaptureDownsizingQuirk() {
    }

    public final boolean isEnabled(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        Set set = KNOWN_AFFECTED_FRONT_CAMERA_DEVICES;
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        String lowerCase = MODEL.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (!set.contains(lowerCase)) {
            return false;
        }
        CameraCharacteristics.Key LENS_FACING = CameraCharacteristics.LENS_FACING;
        Intrinsics.checkNotNullExpressionValue(LENS_FACING, "LENS_FACING");
        Integer num = (Integer) cameraMetadata.get(LENS_FACING);
        return num != null && num.intValue() == 0;
    }
}
