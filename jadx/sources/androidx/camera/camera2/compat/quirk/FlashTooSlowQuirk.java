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
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class FlashTooSlowQuirk implements UseTorchAsFlashQuirk {
    public static final Companion Companion = new Companion(null);
    private static final List AFFECTED_MODEL_PREFIXES = CollectionsKt.listOf((Object[]) new String[]{"PIXEL 3A", "PIXEL 3A XL", "PIXEL 4", "PIXEL 5", "SM-A320", "MOTO G(20)", "ITEL L6006", "RMX3231"});

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
            if (!isAffectedModel()) {
                return false;
            }
            CameraCharacteristics.Key LENS_FACING = CameraCharacteristics.LENS_FACING;
            Intrinsics.checkNotNullExpressionValue(LENS_FACING, "LENS_FACING");
            Integer num = (Integer) cameraMetadata.get(LENS_FACING);
            return num != null && num.intValue() == 1;
        }

        private final boolean isAffectedModel() {
            for (String str : FlashTooSlowQuirk.AFFECTED_MODEL_PREFIXES) {
                String MODEL = Build.MODEL;
                Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
                String upperCase = MODEL.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                if (StringsKt.startsWith$default(upperCase, str, false, 2, (Object) null)) {
                    return true;
                }
            }
            return false;
        }
    }
}
