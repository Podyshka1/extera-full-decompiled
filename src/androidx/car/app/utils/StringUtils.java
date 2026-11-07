package androidx.car.app.utils;

/* JADX INFO: loaded from: classes3.dex */
public abstract class StringUtils {
    public static String shortenString(String str) {
        if (str.length() <= 16) {
            return str;
        }
        return str.substring(0, 8) + "~" + str.substring(str.length() - 8);
    }
}
