package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class DisableAbortCapturesOnStopQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final boolean isPocoX3ProDevice;
    private static final boolean isSamsungNote10PlusDevice;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return Device.INSTANCE.isTecnoDevice() || DisableAbortCapturesOnStopQuirk.isSamsungNote10PlusDevice || DisableAbortCapturesOnStopQuirk.isPocoX3ProDevice;
        }
    }

    static {
        Device device = Device.INSTANCE;
        boolean z = false;
        isSamsungNote10PlusDevice = device.isSamsungDevice() && StringsKt.equals("d2q", Build.DEVICE, true);
        if (device.isPocoDevice() && StringsKt.equals("M2102J20SG", Build.MODEL, true)) {
            z = true;
        }
        isPocoX3ProDevice = z;
    }
}
