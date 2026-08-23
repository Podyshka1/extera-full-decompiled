package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class PreviewStretchWhenVideoCaptureIsBoundQuirk implements CaptureIntentPreviewQuirk {
    public static final Companion Companion = new Companion(null);

    @Override // androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk
    public /* synthetic */ boolean workaroundByCaptureIntentPreview() {
        return CaptureIntentPreviewQuirk.CC.$default$workaroundByCaptureIntentPreview(this);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return isHuaweiP8Lite() || isSamsungJ3() || isSamsungJ7() || isSamsungJ1AceNeo() || isOppoA37F() || isSamsungJ5();
        }

        private final boolean isHuaweiP8Lite() {
            return Device.INSTANCE.isHuaweiDevice() && StringsKt.equals("HUAWEI ALE-L04", Build.MODEL, true);
        }

        private final boolean isSamsungJ3() {
            return Device.INSTANCE.isSamsungDevice() && StringsKt.equals("sm-j320f", Build.MODEL, true);
        }

        private final boolean isSamsungJ5() {
            return Device.INSTANCE.isSamsungDevice() && StringsKt.equals("sm-j510fn", Build.MODEL, true);
        }

        private final boolean isSamsungJ7() {
            return Device.INSTANCE.isSamsungDevice() && StringsKt.equals("sm-j700f", Build.MODEL, true);
        }

        private final boolean isSamsungJ1AceNeo() {
            return Device.INSTANCE.isSamsungDevice() && StringsKt.equals("sm-j111f", Build.MODEL, true);
        }

        private final boolean isOppoA37F() {
            return Device.INSTANCE.isOppoDevice() && StringsKt.equals("A37F", Build.MODEL, true);
        }
    }
}
