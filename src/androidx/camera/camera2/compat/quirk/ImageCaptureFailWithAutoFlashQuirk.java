package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.Quirk;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class ImageCaptureFailWithAutoFlashQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List BUILD_MODELS_FRONT_CAMERA = CollectionsKt.listOf((Object[]) new String[]{"sm-j700f", "sm-j710f", "sm-j700m"});

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
            List list = ImageCaptureFailWithAutoFlashQuirk.BUILD_MODELS_FRONT_CAMERA;
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            String lowerCase = MODEL.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (!list.contains(lowerCase)) {
                return false;
            }
            CameraCharacteristics.Key LENS_FACING = CameraCharacteristics.LENS_FACING;
            Intrinsics.checkNotNullExpressionValue(LENS_FACING, "LENS_FACING");
            Integer num = (Integer) cameraMetadata.get(LENS_FACING);
            return num != null && num.intValue() == 0;
        }
    }
}
