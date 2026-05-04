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
public final class ImageCaptureFlashNotFireQuirk implements UseTorchAsFlashQuirk {
    public static final Companion Companion = new Companion(null);
    private static final List BUILD_MODELS = CollectionsKt.listOf((Object[]) new String[]{"itel w6004", "sm-j700m"});
    private static final List BUILD_MODELS_FRONT_CAMERA = CollectionsKt.listOf((Object[]) new String[]{"sm-j700f", "sm-j710f"});

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x003c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            boolean z;
            Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
            List list = ImageCaptureFlashNotFireQuirk.BUILD_MODELS_FRONT_CAMERA;
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            Locale locale = Locale.ROOT;
            String lowerCase = MODEL.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (list.contains(lowerCase)) {
                CameraCharacteristics.Key LENS_FACING = CameraCharacteristics.LENS_FACING;
                Intrinsics.checkNotNullExpressionValue(LENS_FACING, "LENS_FACING");
                Integer num = (Integer) cameraMetadata.get(LENS_FACING);
                z = num != null && num.intValue() == 0;
            }
            List list2 = ImageCaptureFlashNotFireQuirk.BUILD_MODELS;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            String lowerCase2 = MODEL.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            return z || list2.contains(lowerCase2);
        }
    }
}
