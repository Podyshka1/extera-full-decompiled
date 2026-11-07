package com.google.android.gms.internal.cast;

import com.google.android.gms.common.util.DefaultClock;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcs {
    final long zza = DefaultClock.getInstance().currentTimeMillis();
    private final Integer zzb;
    private final Boolean zzc;
    private long zzd;
    private final int zze;

    public zzcs(zzcr zzcrVar) {
        this.zze = zzcrVar.zze();
        this.zzb = zzcrVar.zzc();
        this.zzc = zzcrVar.zzd();
    }

    public final void zza(long j) {
        this.zzd = j;
    }

    public final zzqx zzb() {
        zzqw zzqwVarZza = zzqx.zza();
        zzqwVarZza.zze(this.zze);
        int i = (int) (this.zza - this.zzd);
        zzqwVarZza.zzd(i);
        zzqwVarZza.zza(i);
        Integer num = this.zzb;
        if (num != null) {
            zzqwVarZza.zzb(num.intValue());
        }
        Boolean bool = this.zzc;
        if (bool != null) {
            zzqwVarZza.zzc(bool.booleanValue());
        }
        return (zzqx) zzqwVarZza.zzu();
    }

    public final int zzc() {
        return this.zze;
    }
}
