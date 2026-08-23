package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
final class zzg {
    static final zzg zza;
    static final zzg zzb;
    final Throwable zzc;

    static {
        if (zzq.zza) {
            zzb = null;
            zza = null;
        } else {
            zzb = new zzg(false, null);
            zza = new zzg(true, null);
        }
    }

    zzg(boolean z, Throwable th) {
        this.zzc = th;
    }
}
