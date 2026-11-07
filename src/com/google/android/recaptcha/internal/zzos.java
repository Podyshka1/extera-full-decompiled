package com.google.android.recaptcha.internal;

import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okio.AsyncTimeout$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public final class zzos {
    private boolean zza;
    private long zzb;
    private long zzc;

    public zzos() {
        int i = zzov.$r8$clinit;
    }

    public static zzos zza() {
        zzos zzosVar = new zzos();
        zzoq.zzc(!zzosVar.zza, "This stopwatch is already running.");
        zzosVar.zza = true;
        zzosVar.zzc = System.nanoTime();
        return zzosVar;
    }

    private final long zzd() {
        return this.zza ? (System.nanoTime() - this.zzc) + this.zzb : this.zzb;
    }

    public final String toString() {
        String str;
        long jZzd = zzd();
        TimeUnit timeUnit = jZzd / 86400000000000L > 0 ? TimeUnit.DAYS : jZzd / 3600000000000L > 0 ? TimeUnit.HOURS : jZzd / 60000000000L > 0 ? TimeUnit.MINUTES : jZzd / 1000000000 > 0 ? TimeUnit.SECONDS : jZzd / 1000000 > 0 ? TimeUnit.MILLISECONDS : jZzd / 1000 > 0 ? TimeUnit.MICROSECONDS : TimeUnit.NANOSECONDS;
        String str2 = String.format(Locale.ROOT, "%.4g", Double.valueOf(jZzd / r2.convert(1L, timeUnit)));
        switch (zzor.zza[timeUnit.ordinal()]) {
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
                AsyncTimeout$$ExternalSyntheticBUOutline0.m914m();
                return null;
        }
        StringBuilder sb = new StringBuilder(str2.length() + 1 + str.length());
        sb.append(str2);
        sb.append(" ");
        sb.append(str);
        return sb.toString();
    }

    public final zzos zzb() {
        long jNanoTime = System.nanoTime();
        zzoq.zzc(this.zza, "This stopwatch is already stopped.");
        this.zza = false;
        this.zzb += jNanoTime - this.zzc;
        return this;
    }

    public final long zzc(TimeUnit timeUnit) {
        return timeUnit.convert(zzd(), TimeUnit.NANOSECONDS);
    }
}
