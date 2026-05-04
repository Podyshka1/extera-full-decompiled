package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import android.util.Size;
import androidx.camera.core.impl.Quirk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class ExtraSupportedOutputSizeQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    public final Size[] getExtraSupportedResolutions(int i) {
        return (i == 34 && Companion.isMotoE5Play$camera_camera2()) ? getMotoE5PlayExtraSupportedResolutions() : new Size[0];
    }

    private final Size[] getMotoE5PlayExtraSupportedResolutions() {
        return new Size[]{new Size(1440, 1080), new Size(960, 720)};
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return isMotoE5Play$camera_camera2();
        }

        public final boolean isMotoE5Play$camera_camera2() {
            return Device.INSTANCE.isMotorolaDevice() && StringsKt.equals("moto e5 play", Build.MODEL, true);
        }
    }
}
