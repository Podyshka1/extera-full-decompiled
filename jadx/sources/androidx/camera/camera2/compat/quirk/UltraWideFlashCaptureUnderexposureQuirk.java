package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class UltraWideFlashCaptureUnderexposureQuirk implements UseTorchAsFlashQuirk {
    public static final Companion Companion = new Companion(null);
    private static final List BUILD_MODEL_PREFIXES = CollectionsKt.listOf("sm-s921");

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List getBUILD_MODEL_PREFIXES() {
            return UltraWideFlashCaptureUnderexposureQuirk.BUILD_MODEL_PREFIXES;
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
            List build_model_prefixes = getBUILD_MODEL_PREFIXES();
            if (!(build_model_prefixes instanceof Collection) || !build_model_prefixes.isEmpty()) {
                Iterator it = build_model_prefixes.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    String str = (String) it.next();
                    String MODEL = Build.MODEL;
                    Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
                    String lowerCase = MODEL.toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    if (StringsKt.startsWith$default(lowerCase, str, false, 2, (Object) null)) {
                        CameraCharacteristics.Key LENS_FACING = CameraCharacteristics.LENS_FACING;
                        Intrinsics.checkNotNullExpressionValue(LENS_FACING, "LENS_FACING");
                        Integer num = (Integer) cameraMetadata.get(LENS_FACING);
                        if (num != null && num.intValue() == 1) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
    }
}
