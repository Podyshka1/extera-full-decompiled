package com.google.android.gms.vision;

import android.util.Log;

/* JADX INFO: renamed from: com.google.android.gms.vision.L */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC1348L {
    /* JADX INFO: renamed from: v */
    public static int m367v(String str, Object... objArr) {
        if (Log.isLoggable("Vision", 2)) {
            return Log.v("Vision", String.format(str, objArr));
        }
        return 0;
    }

    /* JADX INFO: renamed from: d */
    public static int m363d(String str, Object... objArr) {
        if (Log.isLoggable("Vision", 3)) {
            return Log.d("Vision", String.format(str, objArr));
        }
        return 0;
    }

    /* JADX INFO: renamed from: i */
    public static int m366i(String str, Object... objArr) {
        if (Log.isLoggable("Vision", 4)) {
            return Log.i("Vision", String.format(str, objArr));
        }
        return 0;
    }

    /* JADX INFO: renamed from: e */
    public static int m364e(String str, Object... objArr) {
        if (Log.isLoggable("Vision", 6)) {
            return Log.e("Vision", String.format(str, objArr));
        }
        return 0;
    }

    /* JADX INFO: renamed from: e */
    public static int m365e(Throwable th, String str, Object... objArr) {
        if (!Log.isLoggable("Vision", 6)) {
            return 0;
        }
        if (Log.isLoggable("Vision", 3)) {
            return Log.e("Vision", String.format(str, objArr), th);
        }
        String str2 = String.format(str, objArr);
        String strValueOf = String.valueOf(th);
        StringBuilder sb = new StringBuilder(str2.length() + 2 + strValueOf.length());
        sb.append(str2);
        sb.append(": ");
        sb.append(strValueOf);
        return Log.e("Vision", sb.toString());
    }
}
