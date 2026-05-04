package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import java.util.Locale;
import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class ImageCaptureFailedForVideoSnapshotQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final Set PROBLEMATIC_UNI_SOC_MODELS = SetsKt.setOf((Object[]) new String[]{"itel l6006", "itel w6004", "moto g(20)", "moto e13", "moto e20", "rmx3231", "rmx3511", "sm-a032f", "sm-a035m", "sm-f946u1", "tecno mobile bf6"});

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return isProblematicUniSocChipsetDevice() || Device.INSTANCE.isUniSocChipsetDevice() || isHuaweiPSmart();
        }

        private final boolean isProblematicUniSocChipsetDevice() {
            Set set = ImageCaptureFailedForVideoSnapshotQuirk.PROBLEMATIC_UNI_SOC_MODELS;
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            String lowerCase = MODEL.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            return set.contains(lowerCase);
        }

        private final boolean isHuaweiPSmart() {
            return Device.INSTANCE.isHuaweiDevice() && StringsKt.equals("FIG-LX1", Build.MODEL, true);
        }
    }
}
