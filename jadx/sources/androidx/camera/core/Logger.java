package androidx.camera.core;

import android.os.Build;
import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Logger {
    private static int sMinLogLevel = 3;

    private static boolean isLogLevelEnabled(String str, int i) {
        return sMinLogLevel <= i || Log.isLoggable(str, i);
    }

    static void setMinLogLevel(int i) {
        sMinLogLevel = i;
    }

    static void resetMinLogLevel() {
        sMinLogLevel = 3;
    }

    public static boolean isVerboseEnabled(String str) {
        return isLogLevelEnabled(truncateTag(str), 2);
    }

    public static boolean isDebugEnabled(String str) {
        return isLogLevelEnabled(truncateTag(str), 3);
    }

    public static boolean isInfoEnabled(String str) {
        return isLogLevelEnabled(truncateTag(str), 4);
    }

    public static boolean isWarnEnabled(String str) {
        return isLogLevelEnabled(truncateTag(str), 5);
    }

    public static boolean isErrorEnabled(String str) {
        return isLogLevelEnabled(truncateTag(str), 6);
    }

    /* JADX INFO: renamed from: d */
    public static void m76d(String str, String str2) {
        String strTruncateTag = truncateTag(str);
        if (isLogLevelEnabled(strTruncateTag, 3)) {
            Log.d(strTruncateTag, str2);
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m77d(String str, String str2, Throwable th) {
        String strTruncateTag = truncateTag(str);
        if (isLogLevelEnabled(strTruncateTag, 3)) {
            Log.d(strTruncateTag, str2, th);
        }
    }

    /* JADX INFO: renamed from: i */
    public static void m80i(String str, String str2) {
        String strTruncateTag = truncateTag(str);
        if (isLogLevelEnabled(strTruncateTag, 4)) {
            Log.i(strTruncateTag, str2);
        }
    }

    /* JADX INFO: renamed from: w */
    public static void m81w(String str, String str2) {
        String strTruncateTag = truncateTag(str);
        if (isLogLevelEnabled(strTruncateTag, 5)) {
            Log.w(strTruncateTag, str2);
        }
    }

    /* JADX INFO: renamed from: w */
    public static void m82w(String str, String str2, Throwable th) {
        String strTruncateTag = truncateTag(str);
        if (isLogLevelEnabled(strTruncateTag, 5)) {
            Log.w(strTruncateTag, str2, th);
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m78e(String str, String str2) {
        String strTruncateTag = truncateTag(str);
        if (isLogLevelEnabled(strTruncateTag, 6)) {
            Log.e(strTruncateTag, str2);
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m79e(String str, String str2, Throwable th) {
        String strTruncateTag = truncateTag(str);
        if (isLogLevelEnabled(strTruncateTag, 6)) {
            Log.e(strTruncateTag, str2, th);
        }
    }

    private static String truncateTag(String str) {
        return (Build.VERSION.SDK_INT > 25 || 23 >= str.length()) ? str : str.substring(0, 23);
    }
}
