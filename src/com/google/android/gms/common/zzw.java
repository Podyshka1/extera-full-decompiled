package com.google.android.gms.common;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
class zzw {
    private static final zzw zze = new zzw(true, 3, 1, null, null);
    final boolean zza;
    final String zzb;
    final Throwable zzc;
    final int zzd;

    private zzw(boolean z, int i, int i2, String str, Throwable th) {
        this.zza = z;
        this.zzd = i;
        this.zzb = str;
        this.zzc = th;
    }

    static zzw zzb() {
        return zze;
    }

    static zzw zzc(String str) {
        return new zzw(false, 1, 5, str, null);
    }

    static zzw zzd(String str, Throwable th) {
        return new zzw(false, 1, 5, str, th);
    }

    static zzw zzf(int i) {
        return new zzw(true, i, 1, null, null);
    }

    static zzw zzg(int i, int i2, String str, Throwable th) {
        return new zzw(false, i, i2, str, th);
    }

    String zza() {
        return this.zzb;
    }

    final void zze() {
        if (this.zza || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.zzc != null) {
            Log.d("GoogleCertificatesRslt", zza(), this.zzc);
        } else {
            Log.d("GoogleCertificatesRslt", zza());
        }
    }
}
