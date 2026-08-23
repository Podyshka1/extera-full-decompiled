package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Quirk;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class ExcludedSupportedSizesQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    public final List getExcludedSizes(String cameraId, int i) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Companion companion = Companion;
        if (companion.isOnePlus6$camera_camera2()) {
            return getOnePlus6ExcludedSizes(cameraId, i);
        }
        if (companion.isOnePlus6T$camera_camera2()) {
            return getOnePlus6TExcludedSizes(cameraId, i);
        }
        if (companion.isHuaweiP20Lite$camera_camera2()) {
            return getHuaweiP20LiteExcludedSizes(cameraId, i, null);
        }
        if (companion.isSamsungJ7PrimeApi27Above$camera_camera2()) {
            return getSamsungJ7PrimeApi27AboveExcludedSizes(cameraId, i, null);
        }
        if (companion.isSamsungJ7Api27Above$camera_camera2()) {
            return getSamsungJ7Api27AboveExcludedSizes(cameraId, i, null);
        }
        if (companion.isRedmiNote9Pro$camera_camera2()) {
            return getRedmiNote9ProExcludedSizes(cameraId, i);
        }
        if (companion.isSamsungA05s$camera_camera2()) {
            return getSamsungA05sExcludedSizes(i);
        }
        if (companion.isNokia7Plus$camera_camera2()) {
            return getNokia7PlusExcludedSizes(i);
        }
        if (companion.isSamsungZFold4$camera_camera2()) {
            return getSamsungZFold4ExcludedSizes(cameraId, i);
        }
        Logger.m81w("ExcludedSupportedSizesQuirk", "Cannot retrieve list of supported sizes to exclude on this device.");
        return CollectionsKt.emptyList();
    }

    private final List getOnePlus6ExcludedSizes(String str, int i) {
        return (Intrinsics.areEqual(str, MVEL.VERSION_SUB) && i == 256) ? CollectionsKt.listOf((Object[]) new Size[]{new Size(4160, 3120), new Size(4000, 3000)}) : CollectionsKt.emptyList();
    }

    private final List getOnePlus6TExcludedSizes(String str, int i) {
        return (Intrinsics.areEqual(str, MVEL.VERSION_SUB) && i == 256) ? CollectionsKt.listOf((Object[]) new Size[]{new Size(4160, 3120), new Size(4000, 3000)}) : CollectionsKt.emptyList();
    }

    private final List getHuaweiP20LiteExcludedSizes(String str, int i, Class cls) {
        return (Intrinsics.areEqual(str, MVEL.VERSION_SUB) && (i == 34 || i == 35 || cls != null)) ? CollectionsKt.listOf((Object[]) new Size[]{new Size(720, 720), new Size(400, 400)}) : CollectionsKt.emptyList();
    }

    private final List getSamsungJ7PrimeApi27AboveExcludedSizes(String str, int i, Class cls) {
        if (Intrinsics.areEqual(str, MVEL.VERSION_SUB)) {
            if (i == 34 || cls != null) {
                return CollectionsKt.listOf((Object[]) new Size[]{new Size(4128, 3096), new Size(4128, 2322), new Size(3088, 3088), new Size(3264, 2448), new Size(3264, 1836), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080)});
            }
            if (i == 35) {
                return CollectionsKt.listOf((Object[]) new Size[]{new Size(4128, 2322), new Size(3088, 3088), new Size(3264, 2448), new Size(3264, 1836), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080)});
            }
        } else if (Intrinsics.areEqual(str, "1") && (i == 34 || i == 35 || cls != null)) {
            return CollectionsKt.listOf((Object[]) new Size[]{new Size(3264, 2448), new Size(3264, 1836), new Size(2448, 2448), new Size(1920, 1920), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080)});
        }
        return CollectionsKt.emptyList();
    }

    private final List getSamsungJ7Api27AboveExcludedSizes(String str, int i, Class cls) {
        if (Intrinsics.areEqual(str, MVEL.VERSION_SUB)) {
            if (i == 34 || cls != null) {
                return CollectionsKt.listOf((Object[]) new Size[]{new Size(4128, 3096), new Size(4128, 2322), new Size(3088, 3088), new Size(3264, 2448), new Size(3264, 1836), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080)});
            }
            if (i == 35) {
                return CollectionsKt.listOf((Object[]) new Size[]{new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080)});
            }
        } else if (Intrinsics.areEqual(str, "1") && (i == 34 || i == 35 || cls != null)) {
            return CollectionsKt.listOf((Object[]) new Size[]{new Size(2576, 1932), new Size(2560, 1440), new Size(1920, 1920), new Size(2048, 1536), new Size(2048, 1152), new Size(1920, 1080)});
        }
        return CollectionsKt.emptyList();
    }

    private final List getRedmiNote9ProExcludedSizes(String str, int i) {
        if (Intrinsics.areEqual(str, MVEL.VERSION_SUB) && i == 256) {
            return CollectionsKt.listOf(new Size(9280, 6944));
        }
        return CollectionsKt.emptyList();
    }

    private final List getSamsungA05sExcludedSizes(int i) {
        if (i == 35) {
            return CollectionsKt.listOf((Object[]) new Size[]{new Size(3840, 2160), new Size(3264, 2448), new Size(3200, 2400), new Size(2688, 1512), new Size(2592, 1944), new Size(2592, 1940), new Size(1920, 1440)});
        }
        return CollectionsKt.emptyList();
    }

    private final List getNokia7PlusExcludedSizes(int i) {
        if (i == 35) {
            return CollectionsKt.listOf((Object[]) new Size[]{new Size(4032, 3024), new Size(4000, 3000), new Size(3264, 2448), new Size(3200, 2400), new Size(3024, 3024), new Size(2976, 2976), new Size(2448, 2448)});
        }
        return CollectionsKt.emptyList();
    }

    private final List getSamsungZFold4ExcludedSizes(String str, int i) {
        if (Intrinsics.areEqual(str, "1") && i == 35) {
            return CollectionsKt.listOf((Object[]) new Size[]{new Size(1280, 720), new Size(1920, 1080), new Size(2304, 1296), new Size(640, 360), new Size(177, 144), new Size(2336, 1080), new Size(2400, 1080), new Size(1920, 824), new Size(1088, 1088), new Size(1728, 1728), new Size(2736, 2736), new Size(1824, 712)});
        }
        return CollectionsKt.emptyList();
    }

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
            if (Device.INSTANCE.isSamsungDevice() && StringsKt.equals("a05s", Build.DEVICE, true)) {
                String MODEL = Build.MODEL;
                Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
                String upperCase = MODEL.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                if (StringsKt.contains$default((CharSequence) upperCase, (CharSequence) "SM-A057", false, 2, (Object) null)) {
                    return true;
                }
            }
            return false;
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
