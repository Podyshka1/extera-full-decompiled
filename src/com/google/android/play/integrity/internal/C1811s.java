package com.google.android.play.integrity.internal;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import java.util.IllegalFormatException;
import java.util.Locale;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.s */
/* JADX INFO: loaded from: classes5.dex */
public final class C1811s {

    /* JADX INFO: renamed from: a */
    private final String f408a;

    public C1811s(String str) {
        this.f408a = ("UID: [" + Process.myUid() + "]  PID: [" + Process.myPid() + "] ").concat(str);
    }

    /* JADX INFO: renamed from: f */
    private static String m448f(String str, String str2, Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException e) {
                Log.e("PlayCore", "Unable to format ".concat(String.valueOf(str2)), e);
                str2 = str2 + " [" + TextUtils.join(", ", objArr) + "]";
            }
        }
        return str + " : " + str2;
    }

    /* JADX INFO: renamed from: c */
    public final int m449c(Throwable th, String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            return Log.e("PlayCore", m448f(this.f408a, str, objArr), th);
        }
        return 0;
    }

    /* JADX INFO: renamed from: d */
    public final int m450d(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 4)) {
            return Log.i("PlayCore", m448f(this.f408a, str, objArr));
        }
        return 0;
    }

    /* JADX INFO: renamed from: e */
    public final int m451e(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 5)) {
            return Log.w("PlayCore", m448f(this.f408a, str, objArr));
        }
        return 0;
    }
}
