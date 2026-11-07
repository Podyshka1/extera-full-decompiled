package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Quirk;
import com.google.android.gms.cast.MediaError;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\u000bJ3\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\u000e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J3\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\u000e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J3\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\u000e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0012\u0010\u0010J%\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u000bJ\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0015J%\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\u000bJ#\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u000b¨\u0006\u001a"}, d2 = {"Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;", "Landroidx/camera/core/impl/Quirk;", "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "cameraId", _UrlKt.FRAGMENT_ENCODE_SET, "imageFormat", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/util/Size;", "getOnePlus6ExcludedSizes", "(Ljava/lang/String;I)Ljava/util/List;", "getOnePlus6TExcludedSizes", "Ljava/lang/Class;", "klass", "getHuaweiP20LiteExcludedSizes", "(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;", "getSamsungJ7PrimeApi27AboveExcludedSizes", "getSamsungJ7Api27AboveExcludedSizes", "getRedmiNote9ProExcludedSizes", "getSamsungA05sExcludedSizes", "(I)Ljava/util/List;", "getNokia7PlusExcludedSizes", "getSamsungZFold4ExcludedSizes", "getExcludedSizes", "Companion", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SuppressLint({"CameraXQuirksClassDetector"})
public final class ExcludedSupportedSizesQuirk implements Quirk {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public final List<Size> getExcludedSizes(String cameraId, int imageFormat) {
        Companion companion = INSTANCE;
        if (companion.isOnePlus6$camera_camera2()) {
            return getOnePlus6ExcludedSizes(cameraId, imageFormat);
        }
        if (companion.isOnePlus6T$camera_camera2()) {
            return getOnePlus6TExcludedSizes(cameraId, imageFormat);
        }
        if (companion.isHuaweiP20Lite$camera_camera2()) {
            return getHuaweiP20LiteExcludedSizes(cameraId, imageFormat, null);
        }
        if (companion.isSamsungJ7PrimeApi27Above$camera_camera2()) {
            return getSamsungJ7PrimeApi27AboveExcludedSizes(cameraId, imageFormat, null);
        }
        if (companion.isSamsungJ7Api27Above$camera_camera2()) {
            return getSamsungJ7Api27AboveExcludedSizes(cameraId, imageFormat, null);
        }
        if (companion.isRedmiNote9Pro$camera_camera2()) {
            return getRedmiNote9ProExcludedSizes(cameraId, imageFormat);
        }
        if (companion.isSamsungA05s$camera_camera2()) {
            return getSamsungA05sExcludedSizes(imageFormat);
        }
        if (companion.isNokia7Plus$camera_camera2()) {
            return getNokia7PlusExcludedSizes(imageFormat);
        }
        if (companion.isSamsungZFold4$camera_camera2()) {
            return getSamsungZFold4ExcludedSizes(cameraId, imageFormat);
        }
        Logger.m79w("ExcludedSupportedSizesQuirk", "Cannot retrieve list of supported sizes to exclude on this device.");
        return CollectionsKt.emptyList();
    }

    private final List<Size> getOnePlus6ExcludedSizes(String cameraId, int imageFormat) {
        if (Intrinsics.areEqual(cameraId, MVEL.VERSION_SUB) && imageFormat == 256) {
            return CollectionsKt.listOf((Object[]) new Size[]{new Size(4160, 3120), new Size(4000, 3000)});
        }
        return CollectionsKt.emptyList();
    }

    private final List<Size> getOnePlus6TExcludedSizes(String cameraId, int imageFormat) {
        if (Intrinsics.areEqual(cameraId, MVEL.VERSION_SUB) && imageFormat == 256) {
            return CollectionsKt.listOf((Object[]) new Size[]{new Size(4160, 3120), new Size(4000, 3000)});
        }
        return CollectionsKt.emptyList();
    }

    private final List<Size> getHuaweiP20LiteExcludedSizes(String cameraId, int imageFormat, Class<?> klass) {
        if (Intrinsics.areEqual(cameraId, MVEL.VERSION_SUB) && (imageFormat == 34 || imageFormat == 35 || klass != null)) {
            return CollectionsKt.listOf((Object[]) new Size[]{new Size(720, 720), new Size(MediaError.DetailedErrorCode.MANIFEST_UNKNOWN, MediaError.DetailedErrorCode.MANIFEST_UNKNOWN)});
        }
        return CollectionsKt.emptyList();
    }

    private final List<Size> getSamsungJ7PrimeApi27AboveExcludedSizes(String cameraId, int imageFormat, Class<?> klass) {
        if (Intrinsics.areEqual(cameraId, MVEL.VERSION_SUB)) {
            if (imageFormat == 34 || klass != null) {
                return CollectionsKt.listOf((Object[]) new Size[]{new Size(4128, 3096), new Size(4128, 2322), new Size(3088, 3088), new Size(3264, 2448), new Size(3264, 1836), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080)});
            }
            if (imageFormat == 35) {
                return CollectionsKt.listOf((Object[]) new Size[]{new Size(4128, 2322), new Size(3088, 3088), new Size(3264, 2448), new Size(3264, 1836), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080)});
            }
        } else if (Intrinsics.areEqual(cameraId, "1") && (imageFormat == 34 || imageFormat == 35 || klass != null)) {
            return CollectionsKt.listOf((Object[]) new Size[]{new Size(3264, 2448), new Size(3264, 1836), new Size(2448, 2448), new Size(1920, 1920), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080)});
        }
        return CollectionsKt.emptyList();
    }

    private final List<Size> getSamsungJ7Api27AboveExcludedSizes(String cameraId, int imageFormat, Class<?> klass) {
        if (Intrinsics.areEqual(cameraId, MVEL.VERSION_SUB)) {
            if (imageFormat == 34 || klass != null) {
                return CollectionsKt.listOf((Object[]) new Size[]{new Size(4128, 3096), new Size(4128, 2322), new Size(3088, 3088), new Size(3264, 2448), new Size(3264, 1836), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080)});
            }
            if (imageFormat == 35) {
                return CollectionsKt.listOf((Object[]) new Size[]{new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080)});
            }
        } else if (Intrinsics.areEqual(cameraId, "1") && (imageFormat == 34 || imageFormat == 35 || klass != null)) {
            return CollectionsKt.listOf((Object[]) new Size[]{new Size(2576, 1932), new Size(2560, 1440), new Size(1920, 1920), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080)});
        }
        return CollectionsKt.emptyList();
    }

    private final List<Size> getRedmiNote9ProExcludedSizes(String cameraId, int imageFormat) {
        if (Intrinsics.areEqual(cameraId, MVEL.VERSION_SUB) && imageFormat == 256) {
            return CollectionsKt.listOf(new Size(9280, 6944));
        }
        return CollectionsKt.emptyList();
    }

    private final List<Size> getSamsungA05sExcludedSizes(int imageFormat) {
        if (imageFormat == 35) {
            return CollectionsKt.listOf((Object[]) new Size[]{new Size(3840, 2160), new Size(3264, 2448), new Size(3200, 2400), new Size(2688, 1512), new Size(2592, 1944), new Size(2592, 1940), new Size(1920, 1440)});
        }
        return CollectionsKt.emptyList();
    }

    private final List<Size> getNokia7PlusExcludedSizes(int imageFormat) {
        if (imageFormat == 35) {
            return CollectionsKt.listOf((Object[]) new Size[]{new Size(4032, 3024), new Size(4000, 3000), new Size(3264, 2448), new Size(3200, 2400), new Size(3024, 3024), new Size(2976, 2976), new Size(2448, 2448)});
        }
        return CollectionsKt.emptyList();
    }

    private final List<Size> getSamsungZFold4ExcludedSizes(String cameraId, int imageFormat) {
        if (Intrinsics.areEqual(cameraId, "1") && imageFormat == 35) {
            return CollectionsKt.listOf((Object[]) new Size[]{new Size(1280, 720), new Size(1920, 1080), new Size(2304, 1296), new Size(640, 360), new Size(177, 144), new Size(2336, 1080), new Size(2400, 1080), new Size(1920, 824), new Size(1088, 1088), new Size(1728, 1728), new Size(2736, 2736), new Size(1824, 712)});
        }
        return CollectionsKt.emptyList();
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\fR\u0014\u0010\u000f\u001a\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\fR\u0014\u0010\u0011\u001a\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\fR\u0014\u0010\u0013\u001a\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\fR\u0014\u0010\u0015\u001a\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\fR\u0014\u0010\u0017\u001a\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\fR\u0014\u0010\u0019\u001a\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\fR\u0014\u0010\u001b\u001a\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\f¨\u0006\u001d"}, d2 = {"Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TAG", _UrlKt.FRAGMENT_ENCODE_SET, "UNKNOWN_IMAGE_FORMAT", _UrlKt.FRAGMENT_ENCODE_SET, "isEnabled", _UrlKt.FRAGMENT_ENCODE_SET, "isOnePlus6", "isOnePlus6$camera_camera2", "()Z", "isOnePlus6T", "isOnePlus6T$camera_camera2", "isHuaweiP20Lite", "isHuaweiP20Lite$camera_camera2", "isSamsungJ7PrimeApi27Above", "isSamsungJ7PrimeApi27Above$camera_camera2", "isSamsungJ7Api27Above", "isSamsungJ7Api27Above$camera_camera2", "isRedmiNote9Pro", "isRedmiNote9Pro$camera_camera2", "isSamsungA05s", "isSamsungA05s$camera_camera2", "isNokia7Plus", "isNokia7Plus$camera_camera2", "isSamsungZFold4", "isSamsungZFold4$camera_camera2", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return isOnePlus6$camera_camera2() || isOnePlus6T$camera_camera2() || isHuaweiP20Lite$camera_camera2() || isSamsungJ7PrimeApi27Above$camera_camera2() || isSamsungJ7Api27Above$camera_camera2() || isRedmiNote9Pro$camera_camera2() || isSamsungA05s$camera_camera2() || isNokia7Plus$camera_camera2() || isSamsungZFold4$camera_camera2();
        }

        public final boolean isOnePlus6$camera_camera2() {
            return Device.INSTANCE.isOnePlusDevice() && StringsKt.equals("OnePlus6", Build.DEVICE, true);
        }

        public final boolean isOnePlus6T$camera_camera2() {
            return Device.INSTANCE.isOnePlusDevice() && StringsKt.equals("OnePlus6T", Build.DEVICE, true);
        }

        public final boolean isHuaweiP20Lite$camera_camera2() {
            return Device.INSTANCE.isHuaweiDevice() && StringsKt.equals("HWANE", Build.DEVICE, true);
        }

        public final boolean isSamsungJ7PrimeApi27Above$camera_camera2() {
            return Device.INSTANCE.isSamsungDevice() && StringsKt.equals("ON7XELTE", Build.DEVICE, true) && Build.VERSION.SDK_INT >= 27;
        }

        public final boolean isSamsungJ7Api27Above$camera_camera2() {
            return Device.INSTANCE.isSamsungDevice() && StringsKt.equals("J7XELTE", Build.DEVICE, true) && Build.VERSION.SDK_INT >= 27;
        }

        public final boolean isRedmiNote9Pro$camera_camera2() {
            return Device.INSTANCE.isRedmiDevice() && StringsKt.equals("joyeuse", Build.DEVICE, true);
        }

        public final boolean isSamsungA05s$camera_camera2() {
            return Device.INSTANCE.isSamsungDevice() && StringsKt.equals("a05s", Build.DEVICE, true) && StringsKt.contains$default((CharSequence) Build.MODEL.toUpperCase(Locale.ROOT), (CharSequence) "SM-A057", false, 2, (Object) null);
        }

        public final boolean isNokia7Plus$camera_camera2() {
            if (!Device.INSTANCE.isNokiaDevice()) {
                return false;
            }
            String str = Build.DEVICE;
            return StringsKt.equals("B2N", str, true) || StringsKt.equals("B2N_sprout", str, true);
        }

        public final boolean isSamsungZFold4$camera_camera2() {
            if (!Device.INSTANCE.isSamsungDevice()) {
                return false;
            }
            String str = Build.DEVICE;
            return StringsKt.equals("q4q", str, true) || StringsKt.equals("SCG16", str, true) || StringsKt.equals("SC-55C", str, true);
        }
    }
}
