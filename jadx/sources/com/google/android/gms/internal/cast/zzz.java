package com.google.android.gms.internal.cast;

import com.google.android.gms.common.util.DefaultClock;

/* JADX INFO: loaded from: classes4.dex */
public final class zzz {
    final long zza = DefaultClock.getInstance().currentTimeMillis();
    private final Integer zzb;
    private final Boolean zzc;
    private long zzd;
    private final int zze;

    public zzz(zzy zzyVar) {
        this.zze = zzyVar.zzc;
        this.zzb = zzyVar.zza;
        this.zzc = zzyVar.zzb;
    }

    public final zzns zza() {
        zznr zznrVarZza = zzns.zza();
        zznrVarZza.zzd(this.zze);
        zznrVarZza.zzc((int) (this.zza - this.zzd));
        Integer num = this.zzb;
        if (num != null) {
            zznrVarZza.zzb(num.intValue());
        }
        Boolean bool = this.zzc;
        if (bool != null) {
            zznrVarZza.zza(bool.booleanValue());
        }
        return (zzns) zznrVarZza.zzq();
    }

    public final void zzb(long j) {
        this.zzd = j;
    }

    public final int zzc() {
        return this.zze;
    }
}
