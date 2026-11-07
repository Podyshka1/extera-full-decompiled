package com.google.android.gms.cast.internal;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public class Logger {
    protected final String zza;
    private final boolean zzb;
    private final String zzc;
    private boolean zzd;

    public Logger(String str) {
        this(str, null);
    }

    private static final boolean zzd() {
        return !Build.TYPE.equals("user");
    }

    /* JADX INFO: renamed from: d */
    public void m287d(String str, Object... objArr) {
        if (zza()) {
            Log.d(this.zza, zzc(str, objArr));
        }
    }

    /* JADX INFO: renamed from: e */
    public void m289e(String str, Object... objArr) {
        Log.e(this.zza, zzc(str, objArr));
    }

    /* JADX INFO: renamed from: i */
    public void m291i(String str, Object... objArr) {
        Log.i(this.zza, zzc(str, objArr));
    }

    /* JADX INFO: renamed from: v */
    public void m293v(String str, Object... objArr) {
        if (zzd() && this.zzb) {
            String str2 = this.zza;
            if (Log.isLoggable(str2, 2)) {
                Log.v(str2, zzc(str, objArr));
            }
        }
    }

    /* JADX INFO: renamed from: w */
    public void m294w(String str, Object... objArr) {
        Log.w(this.zza, zzc(str, objArr));
    }

    public final boolean zza() {
        if (!zzd()) {
            return false;
        }
        if (this.zzd) {
            return true;
        }
        return this.zzb && Log.isLoggable(this.zza, 3);
    }

    public final void zzb(boolean z) {
        this.zzd = true;
    }

    public final String zzc(String str, Object... objArr) {
        if (objArr.length != 0) {
            str = String.format(Locale.ROOT, str, objArr);
        }
        String str2 = this.zzc;
        String str3 = TextUtils.isEmpty(str2) ? _UrlKt.FRAGMENT_ENCODE_SET : String.format("[%s] ", str2);
        return !TextUtils.isEmpty(str3) ? str3.concat(String.valueOf(str)) : str;
    }

    public Logger(String str, String str2) {
        Preconditions.checkNotEmpty(str, "The log tag cannot be null or empty.");
        this.zza = str;
        this.zzc = str2;
        this.zzb = str.length() <= 23;
        this.zzd = false;
    }

    /* JADX INFO: renamed from: e */
    public void m290e(Throwable th, String str, Object... objArr) {
        Log.e(this.zza, zzc(str, objArr), th);
    }

    /* JADX INFO: renamed from: i */
    public void m292i(Throwable th, String str, Object... objArr) {
        Log.i(this.zza, zzc(str, objArr), th);
    }

    /* JADX INFO: renamed from: w */
    public void m295w(Throwable th, String str, Object... objArr) {
        Log.w(this.zza, zzc(str, objArr), th);
    }

    /* JADX INFO: renamed from: d */
    public void m288d(Throwable th, String str, Object... objArr) {
        if (zza()) {
            Log.d(this.zza, zzc(str, objArr), th);
        }
    }
}
