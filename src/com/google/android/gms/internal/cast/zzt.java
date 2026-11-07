package com.google.android.gms.internal.cast;

import com.google.android.gms.common.util.DefaultClock;

/* JADX INFO: loaded from: classes4.dex */
public final class zzt {
    private final int zza;
    private final long zzb = DefaultClock.getInstance().currentTimeMillis();
    private long zzc;

    public zzt(zzs zzsVar) {
        this.zza = zzsVar.zza();
    }

    public final boolean zza() {
        return this.zza == 2;
    }

    public final void zzb(long j) {
        this.zzc = j;
    }

    public final zzqv zzc() {
        int i = this.zza;
        zzqu zzquVarZza = zzqv.zza();
        int i2 = 2;
        if (i != 1) {
            if (i != 2) {
                i2 = 4;
                if (i != 3) {
                    i2 = i != 4 ? 1 : 5;
                }
            } else {
                i2 = 3;
            }
        }
        zzquVarZza.zzb(i2);
        zzquVarZza.zza((int) (this.zzb - this.zzc));
        return (zzqv) zzquVarZza.zzu();
    }
}
