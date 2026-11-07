package com.google.android.recaptcha.internal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class zztk {
    final long[] zza;
    final long[] zzb;
    final long[] zzc;

    public zztk(long[] jArr, long[] jArr2, long[] jArr3) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = jArr3;
    }

    public void zza(long[] jArr, long[] jArr2) {
        System.arraycopy(jArr2, 0, jArr, 0, 10);
    }

    public final void zzb(zztk zztkVar, int i) {
        zztj.zza(this.zza, zztkVar.zza, i);
        zztj.zza(this.zzb, zztkVar.zzb, i);
        zztj.zza(this.zzc, zztkVar.zzc, i);
    }

    public zztk(zztk zztkVar) {
        this.zza = Arrays.copyOf(zztkVar.zza, 10);
        this.zzb = Arrays.copyOf(zztkVar.zzb, 10);
        this.zzc = Arrays.copyOf(zztkVar.zzc, 10);
    }
}
