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
public final class TorchFlashRequiredFor3aUpdateQuirk implements Quirk {
    private final CameraMetadata cameraMetadata;
    public static final Companion Companion = new Companion(null);
    private static final List AFFECTED_PIXEL_MODELS = CollectionsKt.mutableListOf("PIXEL 6A", "PIXEL 6 PRO", "PIXEL 7", "PIXEL 7A", "PIXEL 7 PRO", "PIXEL 8", "PIXEL 8 PRO");

    public TorchFlashRequiredFor3aUpdateQuirk(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        this.cameraMetadata = cameraMetadata;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
            return isAffectedModel(cameraMetadata);
        }

        private final boolean isAffectedModel(CameraMetadata cameraMetadata) {
            return isAffectedPixelModel() && isFrontCamera(cameraMetadata);
        }

        private final boolean isAffectedPixelModel() {
            for (String str : TorchFlashRequiredFor3aUpdateQuirk.AFFECTED_PIXEL_MODELS) {
                String MODEL = Build.MODEL;
                Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
                String upperCase = MODEL.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                if (Intrinsics.areEqual(upperCase, str)) {
                    return true;
                }
            }
            return false;
        }

        private final boolean isFrontCamera(CameraMetadata cameraMetadata) {
            CameraCharacteristics.Key LENS_FACING = CameraCharacteristics.LENS_FACING;
            Intrinsics.checkNotNullExpressionValue(LENS_FACING, "LENS_FACING");
            Integer num = (Integer) cameraMetadata.get(LENS_FACING);
            return num != null && num.intValue() == 0;
        }
    }
}
