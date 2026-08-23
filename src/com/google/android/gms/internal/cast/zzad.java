package com.google.android.gms.internal.cast;

import com.google.android.gms.common.util.DefaultClock;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class zzad {
    final long zza;
    long zzb;
    private long zzc;
    private final AtomicInteger zzd;
    private final int zze;

    public zzad(zzac zzacVar) {
        this.zze = zzacVar.zza;
        long jCurrentTimeMillis = DefaultClock.getInstance().currentTimeMillis();
        this.zza = jCurrentTimeMillis;
        this.zzb = jCurrentTimeMillis;
        this.zzd = new AtomicInteger(1);
    }

    public final zznw zza() {
        zznv zznvVarZza = zznw.zza();
        zznvVarZza.zzd(this.zze);
        zznvVarZza.zza(this.zzd.get());
        zznvVarZza.zzb((int) (this.zza - this.zzc));
        zznvVarZza.zzc((int) (this.zzb - this.zzc));
        return (zznw) zznvVarZza.zzq();
    }

    public final void zzb() {
        this.zzd.incrementAndGet();
        this.zzb = DefaultClock.getInstance().currentTimeMillis();
    }

    public final void zzc(long j) {
        this.zzc = j;
    }
}
