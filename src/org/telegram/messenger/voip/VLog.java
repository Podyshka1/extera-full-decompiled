package org.telegram.messenger.voip;

import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
class VLog {
    /* JADX INFO: renamed from: d */
    public static native void m1201d(String str);

    /* JADX INFO: renamed from: e */
    public static native void m1202e(String str);

    /* JADX INFO: renamed from: i */
    public static native void m1205i(String str);

    /* JADX INFO: renamed from: v */
    public static native void m1206v(String str);

    /* JADX INFO: renamed from: w */
    public static native void m1207w(String str);

    VLog() {
    }

    /* JADX INFO: renamed from: e */
    public static void m1204e(Throwable th) {
        m1203e(null, th);
    }

    /* JADX INFO: renamed from: e */
    public static void m1203e(String str, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        if (!TextUtils.isEmpty(str)) {
            stringWriter.append((CharSequence) str);
            stringWriter.append((CharSequence) ": ");
        }
        th.printStackTrace(new PrintWriter(stringWriter));
        String[] strArrSplit = stringWriter.toString().split("\n");
        for (String str2 : strArrSplit) {
            m1202e(str2);
        }
    }
}
