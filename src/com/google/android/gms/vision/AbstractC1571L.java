package com.google.android.gms.vision;

import android.annotation.SuppressLint;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;

/* JADX INFO: renamed from: com.google.android.gms.vision.L */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1571L {
    /* JADX INFO: renamed from: v */
    public static int m366v(@RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (Log.isLoggable("Vision", 2)) {
            return Log.v("Vision", String.format(str, objArr));
        }
        return 0;
    }

    /* JADX INFO: renamed from: d */
    public static int m362d(@RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (Log.isLoggable("Vision", 3)) {
            return Log.d("Vision", String.format(str, objArr));
        }
        return 0;
    }

    /* JADX INFO: renamed from: i */
    public static int m365i(@RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (Log.isLoggable("Vision", 4)) {
            return Log.i("Vision", String.format(str, objArr));
        }
        return 0;
    }

    /* JADX INFO: renamed from: e */
    public static int m363e(@RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
        if (Log.isLoggable("Vision", 6)) {
            return Log.e("Vision", String.format(str, objArr));
        }
        return 0;
    }

    @SuppressLint({"LogTagMismatch"})
    /* JADX INFO: renamed from: e */
    public static int m364e(@RecentlyNonNull Throwable th, @RecentlyNonNull String str, @RecentlyNonNull Object... objArr) {
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
