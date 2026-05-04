package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk implements CaptureIntentPreviewQuirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return isSamsungM55();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isSamsungM55() {
            return Device.INSTANCE.isSamsungDevice() && StringsKt.equals(Build.DEVICE, "m55xq", true);
        }
    }

    @Override // androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk
    public boolean workaroundByCaptureIntentPreview() {
        return Companion.isSamsungM55();
    }
}
