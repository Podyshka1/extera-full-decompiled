package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class Device {
    public static final Device INSTANCE = new Device();

    private Device() {
    }

    public final boolean isBluDevice() {
        return isDeviceFrom("Blu");
    }

    public final boolean isHuaweiDevice() {
        return isDeviceFrom("Huawei");
    }

    public final boolean isItelDevice() {
        return isDeviceFrom("Itel");
    }

    public final boolean isJioDevice() {
        return isDeviceFrom("Jio");
    }

    public final boolean isGoogleDevice() {
        return isDeviceFrom("Google");
    }

    public final boolean isMotorolaDevice() {
        return isDeviceFrom("Motorola");
    }

    public final boolean isNokiaDevice() {
        return isDeviceFrom("Nokia");
    }

    public final boolean isOnePlusDevice() {
        return isDeviceFrom("OnePlus");
    }

    public final boolean isOppoDevice() {
        return isDeviceFrom("Oppo");
    }

    public final boolean isPositivoDevice() {
        return isDeviceFrom("Positivo");
    }

    public final boolean isRealmeDevice() {
        return isDeviceFrom("Realme");
    }

    public final boolean isRedmiDevice() {
        return isDeviceFrom("Redmi");
    }

    public final boolean isSamsungDevice() {
        return isDeviceFrom("Samsung");
    }

    public final boolean isSonyDevice() {
        return isDeviceFrom("Sony");
    }

    public final boolean isTecnoDevice() {
        return isDeviceFrom("Tecno") || isDeviceFrom("Tecno-mobile");
    }

    public final boolean isXiaomiDevice() {
        return isDeviceFrom("Xiaomi");
    }

    public final boolean isVivoDevice() {
        return isDeviceFrom("Vivo");
    }

    public final boolean isPocoDevice() {
        return isDeviceFrom("Poco");
    }

    private final boolean isDeviceFrom(String str) {
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        if (equalsCaseInsensitive(MANUFACTURER, str)) {
            return true;
        }
        String BRAND = Build.BRAND;
        Intrinsics.checkNotNullExpressionValue(BRAND, "BRAND");
        return equalsCaseInsensitive(BRAND, str);
    }

    private final boolean equalsCaseInsensitive(String str, String str2) {
        return StringsKt.equals(str, str2, true);
    }

    public final boolean isUniSocChipsetDevice() {
        if (Build.VERSION.SDK_INT < 31 || !StringsKt.equals("Spreadtrum", Build.SOC_MANUFACTURER, true)) {
            String HARDWARE = Build.HARDWARE;
            Intrinsics.checkNotNullExpressionValue(HARDWARE, "HARDWARE");
            Locale locale = Locale.ROOT;
            String lowerCase = HARDWARE.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (!StringsKt.startsWith$default(lowerCase, "ums", false, 2, (Object) null)) {
                if (isItelDevice()) {
                    Intrinsics.checkNotNullExpressionValue(HARDWARE, "HARDWARE");
                    String lowerCase2 = HARDWARE.toLowerCase(locale);
                    Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                    if (StringsKt.startsWith$default(lowerCase2, "sp", false, 2, (Object) null)) {
                    }
                }
                return false;
            }
        }
        return true;
    }
}
