package org.telegram.messenger.voip;

import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
class VLog {
    /* JADX INFO: renamed from: d */
    public static native void m920d(String str);

    /* JADX INFO: renamed from: e */
    public static native void m921e(String str);

    /* JADX INFO: renamed from: i */
    public static native void m924i(String str);

    /* JADX INFO: renamed from: v */
    public static native void m925v(String str);

    /* JADX INFO: renamed from: w */
    public static native void m926w(String str);

    /* JADX INFO: renamed from: e */
    public static void m923e(Throwable th) {
        m922e(null, th);
    }

    /* JADX INFO: renamed from: e */
    public static void m922e(String str, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        if (!TextUtils.isEmpty(str)) {
            stringWriter.append((CharSequence) str);
            stringWriter.append((CharSequence) ": ");
        }
        th.printStackTrace(new PrintWriter(stringWriter));
        String[] strArrSplit = stringWriter.toString().split("\n");
        for (String str2 : strArrSplit) {
            m921e(str2);
        }
    }
}
