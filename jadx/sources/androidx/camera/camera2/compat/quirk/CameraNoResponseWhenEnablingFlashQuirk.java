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
public final class CameraNoResponseWhenEnablingFlashQuirk implements UseTorchAsFlashQuirk {
    public static final Companion Companion = new Companion(null);
    private static final List AFFECTED_MODELS = CollectionsKt.listOf((Object[]) new String[]{"SM-N9200", "SM-N9208", "SAMSUNG-SM-N920A", "SM-N920C", "SM-N920F", "SM-N920G", "SM-N920I", "SM-N920K", "SM-N920L", "SM-N920P", "SM-N920R4", "SM-N920R6", "SM-N920R7", "SM-N920S", "SM-N920T", "SM-N920V", "SM-N920W8", "SM-N920X", "SM-J510FN", "VIVO 1610"});

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List getAFFECTED_MODELS() {
            return CameraNoResponseWhenEnablingFlashQuirk.AFFECTED_MODELS;
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
            List affected_models = getAFFECTED_MODELS();
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            String upperCase = MODEL.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            if (!affected_models.contains(upperCase)) {
                return false;
            }
            CameraCharacteristics.Key LENS_FACING = CameraCharacteristics.LENS_FACING;
            Intrinsics.checkNotNullExpressionValue(LENS_FACING, "LENS_FACING");
            Integer num = (Integer) cameraMetadata.get(LENS_FACING);
            return num != null && num.intValue() == 1;
        }
    }
}
