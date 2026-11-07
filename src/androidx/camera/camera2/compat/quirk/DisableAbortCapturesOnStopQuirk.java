package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;", "Landroidx/camera/core/impl/Quirk;", "<init>", "()V", "Companion", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SuppressLint({"CameraXQuirksClassDetector"})
public final class DisableAbortCapturesOnStopQuirk implements Quirk {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final boolean isPocoX3ProDevice;
    private static final boolean isSamsungNote10PlusDevice;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "isEnabled", _UrlKt.FRAGMENT_ENCODE_SET, "isSamsungNote10PlusDevice", "isPocoX3ProDevice", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
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
