package androidx.camera.video.internal.utils;

import java.text.DecimalFormat;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class StorageUtil {
    public static final StorageUtil INSTANCE = new StorageUtil();

    private StorageUtil() {
    }

    public static final String formatSize(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Bytes cannot be negative");
        }
        String[] strArr = {"B", "KB", "MB", "GB", "TB"};
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        double d = j;
        int i = 0;
        double d2 = d;
        while (d2 >= 1024.0d && i < 4) {
            d2 /= 1024.0d;
            i++;
        }
        if (i == 0) {
            return decimalFormat.format(d2) + ' ' + strArr[i];
        }
        StringBuilder sb = new StringBuilder();
        while (-1 < i) {
            double dPow = Math.pow(1024.0d, i);
            double dFloor = Math.floor(d / dPow);
            if (dFloor > 0.0d) {
                sb.append(decimalFormat.format(dFloor));
                sb.append(" ");
                sb.append(strArr[i]);
                sb.append(" ");
                d -= dFloor * dPow;
            }
            i--;
        }
        return StringsKt.trim(sb).toString();
    }

    public static final boolean isStorageFullException(Throwable th) {
        if (th == null) {
            return false;
        }
        String message = th.getMessage();
        if (message == null || !StringsKt.contains$default((CharSequence) message, (CharSequence) "No space left on device", false, 2, (Object) null)) {
            return isStorageFullException(th.getCause());
        }
        return true;
    }
}
