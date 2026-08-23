package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;", "Landroidx/camera/core/impl/Quirk;", "<init>", "()V", "Companion", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SuppressLint({"CameraXQuirksClassDetector"})
public final class InvalidVideoProfilesQuirk implements Quirk {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final List<String> AFFECTED_PIXEL_MODELS = CollectionsKt.listOf((Object[]) new String[]{"pixel 4", "pixel 4a", "pixel 4a (5g)", "pixel 4 xl", "pixel 5", "pixel 5a", "pixel 6", "pixel 6a", "pixel 6 pro", "pixel 7", "pixel 7 pro"});
    private static final List<String> AFFECTED_ONE_PLUS_MODELS = CollectionsKt.listOf((Object[]) new String[]{"cph2417", "cph2451"});
    private static final List<String> AFFECTED_OPPO_MODELS = CollectionsKt.listOf((Object[]) new String[]{"cph2437", "cph2525", "pht110"});

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\t\u001a\u00020\nJ\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\nH\u0002J\b\u0010\r\u001a\u00020\nH\u0002J\b\u0010\u000e\u001a\u00020\nH\u0002J\b\u0010\u000f\u001a\u00020\nH\u0002J\b\u0010\u0010\u001a\u00020\nH\u0002J\b\u0010\u0011\u001a\u00020\nH\u0002J\b\u0010\u0012\u001a\u00020\nH\u0002J\b\u0010\u0013\u001a\u00020\nH\u0002J\b\u0010\u0014\u001a\u00020\nH\u0002J\b\u0010\u0015\u001a\u00020\nH\u0002J\b\u0010\u0016\u001a\u00020\nH\u0002J\b\u0010\u0017\u001a\u00020\nH\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "AFFECTED_PIXEL_MODELS", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "AFFECTED_ONE_PLUS_MODELS", "AFFECTED_OPPO_MODELS", "isEnabled", _UrlKt.FRAGMENT_ENCODE_SET, "isAffectedSamsungDevices", "isAffectedPixelDevices", "isAffectedXiaomiDevices", "isAffectedOnePlusDevices", "isAffectedOppoDevices", "isAffectedPixelModel", "isAffectedOnePlusModel", "isAffectedOppoModel", "isAffectedPixelBuild", "isTp1aBuild", "isTd1aBuild", "isTkq1Build", "isAPI33", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return isAffectedSamsungDevices() || isAffectedPixelDevices() || isAffectedXiaomiDevices() || isAffectedOppoDevices() || isAffectedOnePlusDevices();
        }

        private final boolean isAffectedSamsungDevices() {
            return Device.INSTANCE.isSamsungDevice() && isTp1aBuild();
        }

        private final boolean isAffectedPixelDevices() {
            return isAffectedPixelModel() && isAffectedPixelBuild();
        }

        private final boolean isAffectedXiaomiDevices() {
            Device device = Device.INSTANCE;
            if (device.isXiaomiDevice() || device.isRedmiDevice()) {
                return isTkq1Build() || isTp1aBuild();
            }
            return false;
        }

        private final boolean isAffectedOnePlusDevices() {
            return isAffectedOnePlusModel() && isAPI33();
        }

        private final boolean isAffectedOppoDevices() {
            return isAffectedOppoModel() && isAPI33();
        }

        private final boolean isAffectedPixelModel() {
            return InvalidVideoProfilesQuirk.AFFECTED_PIXEL_MODELS.contains(Build.MODEL.toLowerCase(Locale.ROOT));
        }

        private final boolean isAffectedOnePlusModel() {
            return InvalidVideoProfilesQuirk.AFFECTED_ONE_PLUS_MODELS.contains(Build.MODEL.toLowerCase(Locale.ROOT));
        }

        private final boolean isAffectedOppoModel() {
            return InvalidVideoProfilesQuirk.AFFECTED_OPPO_MODELS.contains(Build.MODEL.toLowerCase(Locale.ROOT));
        }

        private final boolean isAffectedPixelBuild() {
            return isTp1aBuild() || isTd1aBuild();
        }

        private final boolean isTp1aBuild() {
            return StringsKt.startsWith(Build.ID, "TP1A", true);
        }

        private final boolean isTd1aBuild() {
            return StringsKt.startsWith(Build.ID, "TD1A", true);
        }

        private final boolean isTkq1Build() {
            return StringsKt.startsWith(Build.ID, "TKQ1", true);
        }

        private final boolean isAPI33() {
            return Build.VERSION.SDK_INT == 33;
        }
    }
}
