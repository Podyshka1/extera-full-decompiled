package com.google.android.gms.internal.cast;

import com.google.android.gms.common.util.DefaultClock;

/* JADX INFO: loaded from: classes4.dex */
public final class zzac {
    final int zza;
    final long zzb = DefaultClock.getInstance().currentTimeMillis();
    private long zzc;

    public zzac(zzab zzabVar) {
        this.zza = zzabVar.zza;
    }

    public final void zza(long j) {
        this.zzc = j;
    }

    public final zzrd zzb() {
        zzrc zzrcVarZza = zzrd.zza();
        zzrcVarZza.zza((int) (this.zzb - this.zzc));
        int i = this.zza;
        zzrcVarZza.zzb(i != 1 ? i != 2 ? i != 3 ? 1 : 4 : 3 : 2);
        return (zzrd) zzrcVarZza.zzu();
    }
}
