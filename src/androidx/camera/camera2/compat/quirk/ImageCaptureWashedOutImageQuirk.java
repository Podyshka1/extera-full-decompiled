package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class ImageCaptureWashedOutImageQuirk implements UseTorchAsFlashQuirk {
    public static final Companion Companion = new Companion(null);
    private static final List BUILD_MODELS = CollectionsKt.listOf((Object[]) new String[]{"SM-G9300", "SM-G930R", "SM-G930A", "SM-G930V", "SM-G930T", "SM-G930U", "SM-G930P", "SM-SC02H", "SM-SCV33", "SM-G9350", "SM-G935R", "SM-G935A", "SM-G935V", "SM-G935T", "SM-G935U", "SM-G935P"});

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List getBUILD_MODELS() {
            return ImageCaptureWashedOutImageQuirk.BUILD_MODELS;
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
            List build_models = getBUILD_MODELS();
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            String upperCase = MODEL.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            if (!build_models.contains(upperCase)) {
                return false;
            }
            CameraCharacteristics.Key LENS_FACING = CameraCharacteristics.LENS_FACING;
            Intrinsics.checkNotNullExpressionValue(LENS_FACING, "LENS_FACING");
            Integer num = (Integer) cameraMetadata.get(LENS_FACING);
            return num != null && num.intValue() == 1;
        }
    }
}
