package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001a\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\n\u001a\u00020\u0006*\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\rJ\r\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\rJ\r\u0010\u0010\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\rJ\r\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\rJ\r\u0010\u0012\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\rJ\r\u0010\u0013\u001a\u00020\u0006¢\u0006\u0004\b\u0013\u0010\rJ\r\u0010\u0014\u001a\u00020\u0006¢\u0006\u0004\b\u0014\u0010\rJ\r\u0010\u0015\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\rJ\r\u0010\u0016\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\rJ\r\u0010\u0017\u001a\u00020\u0006¢\u0006\u0004\b\u0017\u0010\rJ\r\u0010\u0018\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\rJ\r\u0010\u0019\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\rJ\r\u0010\u001a\u001a\u00020\u0006¢\u0006\u0004\b\u001a\u0010\rJ\r\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\rJ\r\u0010\u001c\u001a\u00020\u0006¢\u0006\u0004\b\u001c\u0010\rJ\r\u0010\u001d\u001a\u00020\u0006¢\u0006\u0004\b\u001d\u0010\rJ\r\u0010\u001e\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010\rJ\r\u0010\u001f\u001a\u00020\u0006¢\u0006\u0004\b\u001f\u0010\r¨\u0006 "}, d2 = {"Landroidx/camera/camera2/compat/quirk/Device;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "vendor", _UrlKt.FRAGMENT_ENCODE_SET, "isDeviceFrom", "(Ljava/lang/String;)Z", "other", "equalsCaseInsensitive", "(Ljava/lang/String;Ljava/lang/String;)Z", "isBluDevice", "()Z", "isHuaweiDevice", "isItelDevice", "isJioDevice", "isGoogleDevice", "isMotorolaDevice", "isNokiaDevice", "isOnePlusDevice", "isOppoDevice", "isPositivoDevice", "isRealmeDevice", "isRedmiDevice", "isSamsungDevice", "isSonyDevice", "isTecnoDevice", "isXiaomiDevice", "isVivoDevice", "isPocoDevice", "isUniSocChipsetDevice", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
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

    private final boolean isDeviceFrom(String vendor) {
        return equalsCaseInsensitive(Build.MANUFACTURER, vendor) || equalsCaseInsensitive(Build.BRAND, vendor);
    }

    private final boolean equalsCaseInsensitive(String str, String str2) {
        return StringsKt.equals(str, str2, true);
    }

    public final boolean isUniSocChipsetDevice() {
        if (Build.VERSION.SDK_INT < 31 || !StringsKt.equals("Spreadtrum", Build.SOC_MANUFACTURER, true)) {
            String str = Build.HARDWARE;
            Locale locale = Locale.ROOT;
            if (!StringsKt.startsWith$default(str.toLowerCase(locale), "ums", false, 2, (Object) null) && (!isItelDevice() || !StringsKt.startsWith$default(str.toLowerCase(locale), "sp", false, 2, (Object) null))) {
                return false;
            }
        }
        return true;
    }
}
