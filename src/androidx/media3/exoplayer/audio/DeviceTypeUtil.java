package androidx.media3.exoplayer.audio;

import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
abstract class DeviceTypeUtil {
    public static boolean isBuiltInEarpiece(int i) {
        return i == 1;
    }

    public static boolean isBuiltInSpeaker(int i) {
        return i == 2;
    }

    public static boolean isHdmiArc(int i) {
        return i == 10;
    }

    public static boolean isBluetoothDevice(int i) {
        if (i == 8 || i == 7) {
            return true;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 31 || !(i == 26 || i == 27)) {
            return i2 >= 33 && i == 30;
        }
        return true;
    }

    public static boolean isHdmiEarc(int i) {
        return Build.VERSION.SDK_INT >= 31 && i == 29;
    }

    public static boolean isUsbDevice(int i) {
        if (i == 11 || i == 12) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 31 && i == 22;
    }
}
