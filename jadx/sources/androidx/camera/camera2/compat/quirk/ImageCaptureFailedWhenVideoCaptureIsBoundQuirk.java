package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class ImageCaptureFailedWhenVideoCaptureIsBoundQuirk implements CaptureIntentPreviewQuirk, SurfaceProcessingQuirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return isBluStudioX10() || isItelW6004() || isVivo1805() || isPositivoTwist2Pro() || isPixel4XLApi29() || isMotoE13() || isSamsungTabA8() || isSamsungA53() || Device.INSTANCE.isUniSocChipsetDevice();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isBluStudioX10() {
            return Device.INSTANCE.isBluDevice() && StringsKt.equals("studio x10", Build.MODEL, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isItelW6004() {
            return Device.INSTANCE.isItelDevice() && StringsKt.equals("itel w6004", Build.MODEL, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isVivo1805() {
            return Device.INSTANCE.isVivoDevice() && StringsKt.equals("vivo 1805", Build.MODEL, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isPositivoTwist2Pro() {
            return Device.INSTANCE.isPositivoDevice() && StringsKt.equals("twist 2 pro", Build.MODEL, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isPixel4XLApi29() {
            return StringsKt.equals("pixel 4 xl", Build.MODEL, true) && Build.VERSION.SDK_INT == 29;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isMotoE13() {
            return Device.INSTANCE.isMotorolaDevice() && StringsKt.equals("moto e13", Build.MODEL, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isSamsungTabA8() {
            if (!Device.INSTANCE.isSamsungDevice()) {
                return false;
            }
            String str = Build.DEVICE;
            return StringsKt.equals("gta8", str, true) || StringsKt.equals("gta8wifi", str, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isSamsungA53() {
            if (Device.INSTANCE.isSamsungDevice()) {
                String MODEL = Build.MODEL;
                Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
                if (StringsKt.startsWith$default(MODEL, "SM-A536", false, 2, (Object) null)) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk
    public boolean workaroundByCaptureIntentPreview() {
        Companion companion = Companion;
        return companion.isBluStudioX10() || companion.isItelW6004() || companion.isVivo1805() || companion.isPositivoTwist2Pro();
    }

    @Override // androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk
    public boolean workaroundBySurfaceProcessing() {
        Companion companion = Companion;
        return companion.isBluStudioX10() || companion.isItelW6004() || companion.isVivo1805() || companion.isPositivoTwist2Pro() || companion.isPixel4XLApi29() || companion.isMotoE13() || companion.isSamsungTabA8() || companion.isSamsungA53() || Device.INSTANCE.isUniSocChipsetDevice();
    }
}
