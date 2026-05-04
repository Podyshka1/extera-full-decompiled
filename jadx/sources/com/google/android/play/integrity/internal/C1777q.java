package com.google.android.play.integrity.internal;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import java.util.IllegalFormatException;
import java.util.Locale;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.q */
/* JADX INFO: loaded from: classes5.dex */
public final class C1777q {

    /* JADX INFO: renamed from: a */
    private final String f567a;

    public C1777q(String str) {
        this.f567a = ("UID: [" + Process.myUid() + "]  PID: [" + Process.myPid() + "] ").concat(str);
    }

    /* JADX INFO: renamed from: e */
    private static String m470e(String str, String str2, Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException e) {
                Log.e("PlayCore", "Unable to format ".concat(str2), e);
                str2 = str2 + " [" + TextUtils.join(", ", objArr) + "]";
            }
        }
        return str + " : " + str2;
    }

    /* JADX INFO: renamed from: a */
    public final int m471a(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            return Log.e("PlayCore", m470e(this.f567a, "Phonesky is not installed.", objArr));
        }
        return 0;
    }

    /* JADX INFO: renamed from: b */
    public final int m472b(Throwable th, String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            return Log.e("PlayCore", m470e(this.f567a, str, objArr), th);
        }
        return 0;
    }

    /* JADX INFO: renamed from: c */
    public final int m473c(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 4)) {
            return Log.i("PlayCore", m470e(this.f567a, str, objArr));
        }
        return 0;
    }

    /* JADX INFO: renamed from: d */
    public final int m474d(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 5)) {
            return Log.w("PlayCore", m470e(this.f567a, "Phonesky package is not signed -- possibly self-built package. Could not verify.", objArr));
        }
        return 0;
    }
}
