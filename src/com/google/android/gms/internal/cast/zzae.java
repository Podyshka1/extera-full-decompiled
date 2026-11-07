package com.google.android.gms.internal.cast;

import com.google.android.gms.common.util.DefaultClock;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class zzae {
    final long zza;
    long zzb;
    private long zzc;
    private final AtomicInteger zzd;
    private final int zze;

    public zzae(zzad zzadVar) {
        this.zze = zzadVar.zza();
        long jCurrentTimeMillis = DefaultClock.getInstance().currentTimeMillis();
        this.zza = jCurrentTimeMillis;
        this.zzb = jCurrentTimeMillis;
        this.zzd = new AtomicInteger(1);
    }

    public final zzrb zza() {
        zzra zzraVarZza = zzrb.zza();
        zzraVarZza.zzd(this.zze);
        zzraVarZza.zza(this.zzd.get());
        zzraVarZza.zzb((int) (this.zza - this.zzc));
        zzraVarZza.zzc((int) (this.zzb - this.zzc));
        return (zzrb) zzraVarZza.zzu();
    }

    public final void zzb(long j) {
        this.zzc = j;
    }

    public final void zzc() {
        this.zzd.incrementAndGet();
        this.zzb = DefaultClock.getInstance().currentTimeMillis();
    }
}
