package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;", "Landroidx/camera/core/impl/Quirk;", "<init>", "()V", "Companion", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SuppressLint({"CameraXQuirksClassDetector"})
public final class ImageCaptureFailedForVideoSnapshotQuirk implements Quirk {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Set<String> PROBLEMATIC_UNI_SOC_MODELS = SetsKt.setOf((Object[]) new String[]{"itel l6006", "itel w6004", "moto g(20)", "moto e13", "moto e20", "rmx3231", "rmx3511", "sm-a032f", "sm-a035m", "sm-f946u1", "tecno mobile bf6"});

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\t\u001a\u00020\u0005H\u0002J\b\u0010\n\u001a\u00020\u0005H\u0002R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "isEnabled", _UrlKt.FRAGMENT_ENCODE_SET, "PROBLEMATIC_UNI_SOC_MODELS", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "isProblematicUniSocChipsetDevice", "isHuaweiPSmart", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
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
            return ImageCaptureFailedForVideoSnapshotQuirk.PROBLEMATIC_UNI_SOC_MODELS.contains(Build.MODEL.toLowerCase(Locale.ROOT));
        }

        private final boolean isHuaweiPSmart() {
            return Device.INSTANCE.isHuaweiDevice() && StringsKt.equals("FIG-LX1", Build.MODEL, true);
        }
    }
}
