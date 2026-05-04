package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class ControlZoomRatioRangeAssertionErrorQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return isJioPhoneNext() || isSamsungA2s() || isVivo2039();
        }

        private final boolean isJioPhoneNext() {
            if (!Device.INSTANCE.isJioDevice()) {
                return false;
            }
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            return StringsKt.startsWith(MODEL, "LS1542QW", true);
        }

        private final boolean isSamsungA2s() {
            if (!Device.INSTANCE.isSamsungDevice()) {
                return false;
            }
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            return StringsKt.startsWith(MODEL, "SM-A025", true) || StringsKt.equals(MODEL, "SM-S124DL", true);
        }

        private final boolean isVivo2039() {
            return Device.INSTANCE.isVivoDevice() && StringsKt.equals(Build.MODEL, "VIVO 2039", true);
        }
    }
}
