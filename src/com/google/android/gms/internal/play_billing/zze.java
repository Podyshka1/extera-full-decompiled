package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes5.dex */
final class zze {
    static final zze zza;
    static final zze zzb;
    final Throwable zzc;

    static {
        if (zzo.zza) {
            zzb = null;
            zza = null;
        } else {
            zzb = new zze(false, null);
            zza = new zze(true, null);
        }
    }

    public zze(boolean z, Throwable th) {
        this.zzc = th;
    }
}
