package com.google.android.gms.cast.internal;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Logger {
    protected final String zza;
    private final boolean zzb;
    private boolean zzc;
    private final String zzd;

    public Logger(String str) {
        this(str, null);
    }

    /* JADX INFO: renamed from: d */
    public void m336d(String str, Object... objArr) {
        if (zzc()) {
            Log.d(this.zza, zza(str, objArr));
        }
    }

    /* JADX INFO: renamed from: e */
    public void m338e(String str, Object... objArr) {
        Log.e(this.zza, zza(str, objArr));
    }

    /* JADX INFO: renamed from: i */
    public void m340i(String str, Object... objArr) {
        Log.i(this.zza, zza(str, objArr));
    }

    /* JADX INFO: renamed from: w */
    public void m341w(String str, Object... objArr) {
        Log.w(this.zza, zza(str, objArr));
    }

    protected final String zza(String str, Object... objArr) {
        if (objArr.length != 0) {
            str = String.format(Locale.ROOT, str, objArr);
        }
        if (TextUtils.isEmpty(this.zzd)) {
            return str;
        }
        String str2 = this.zzd;
        return String.valueOf(str2).concat(String.valueOf(str));
    }

    public final boolean zzc() {
        if (Build.TYPE.equals("user")) {
            return false;
        }
        if (this.zzc) {
            return true;
        }
        return this.zzb && Log.isLoggable(this.zza, 3);
    }

    protected Logger(String str, String str2) {
        Preconditions.checkNotEmpty(str, "The log tag cannot be null or empty.");
        this.zza = str;
        this.zzb = str.length() <= 23;
        this.zzc = false;
        this.zzd = TextUtils.isEmpty(str2) ? null : String.format("[%s] ", str2);
    }

    /* JADX INFO: renamed from: e */
    public void m339e(Throwable th, String str, Object... objArr) {
        Log.e(this.zza, zza(str, objArr), th);
    }

    /* JADX INFO: renamed from: w */
    public void m342w(Throwable th, String str, Object... objArr) {
        Log.w(this.zza, zza(str, objArr), th);
    }

    /* JADX INFO: renamed from: d */
    public void m337d(Throwable th, String str, Object... objArr) {
        if (zzc()) {
            Log.d(this.zza, zza(str, objArr), th);
        }
    }
}
