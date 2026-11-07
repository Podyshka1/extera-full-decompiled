package com.google.android.gms.internal.play_billing;

import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okio.AsyncTimeout$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbi {
    private final zzbl zza;
    private boolean zzb;
    private long zzc;
    private long zzd;

    public static zzbi zzb(zzbl zzblVar) {
        zzbi zzbiVar = new zzbi(zzblVar);
        zzbiVar.zze();
        return zzbiVar;
    }

    public static zzbi zzc(zzbl zzblVar) {
        return new zzbi(zzblVar);
    }

    private final long zzh() {
        return this.zzb ? (this.zza.zza() - this.zzd) + this.zzc : this.zzc;
    }

    public final String toString() {
        String str;
        long jZzh = zzh();
        TimeUnit timeUnit = jZzh / 86400000000000L > 0 ? TimeUnit.DAYS : jZzh / 3600000000000L > 0 ? TimeUnit.HOURS : jZzh / 60000000000L > 0 ? TimeUnit.MINUTES : jZzh / 1000000000 > 0 ? TimeUnit.SECONDS : jZzh / 1000000 > 0 ? TimeUnit.MILLISECONDS : jZzh / 1000 > 0 ? TimeUnit.MICROSECONDS : TimeUnit.NANOSECONDS;
        String str2 = String.format(Locale.ROOT, "%.4g", Double.valueOf(jZzh / r2.convert(1L, timeUnit)));
        switch (zzbh.zza[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = "h";
                break;
            case 7:
                str = "d";
                break;
            default:
                AsyncTimeout$$ExternalSyntheticBUOutline0.m962m();
                return null;
        }
        return str2 + " " + str;
    }

    public final long zza(TimeUnit timeUnit) {
        return timeUnit.convert(zzh(), TimeUnit.NANOSECONDS);
    }

    public final zzbi zzd() {
        this.zzc = 0L;
        this.zzb = false;
        return this;
    }

    public final zzbi zze() {
        zzbg.zze(!this.zzb, "This stopwatch is already running.");
        this.zzb = true;
        this.zzd = this.zza.zza();
        return this;
    }

    public final zzbi zzf() {
        long jZza = this.zza.zza();
        zzbg.zze(this.zzb, "This stopwatch is already stopped.");
        this.zzb = false;
        this.zzc += jZza - this.zzd;
        return this;
    }

    public final boolean zzg() {
        return this.zzb;
    }

    public zzbi(zzbl zzblVar) {
        zzbg.zzc(zzblVar, "ticker");
        this.zza = zzblVar;
    }
}
