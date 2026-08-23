package com.google.android.gms.common.internal;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class GmsLogger {
    private final String zza;
    private final String zzb;

    public GmsLogger(String str) {
        this(str, null);
    }

    private final String zza(String str) {
        String str2 = this.zzb;
        return str2 == null ? str : str2.concat(str);
    }

    public boolean canLog(int i) {
        return Log.isLoggable(this.zza, i);
    }

    /* JADX INFO: renamed from: d */
    public void m343d(String str, String str2) {
        if (canLog(3)) {
            Log.d(str, zza(str2));
        }
    }

    /* JADX INFO: renamed from: e */
    public void m344e(String str, String str2) {
        if (canLog(6)) {
            Log.e(str, zza(str2));
        }
    }

    /* JADX INFO: renamed from: v */
    public void m346v(String str, String str2) {
        if (canLog(2)) {
            Log.v(str, zza(str2));
        }
    }

    /* JADX INFO: renamed from: w */
    public void m347w(String str, String str2) {
        if (canLog(5)) {
            Log.w(str, zza(str2));
        }
    }

    public GmsLogger(String str, String str2) {
        Preconditions.checkNotNull(str, "log tag cannot be null");
        Preconditions.checkArgument(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.zza = str;
        this.zzb = (str2 == null || str2.length() <= 0) ? null : str2;
    }

    /* JADX INFO: renamed from: e */
    public void m345e(String str, String str2, Throwable th) {
        if (canLog(6)) {
            Log.e(str, zza(str2), th);
        }
    }
}
