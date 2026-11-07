package com.google.android.recaptcha.internal;

import kotlin.time.DurationKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzaio {
    static {
        zzafd zzafdVarZzc = zzafe.zzc();
        zzafdVarZzc.zza(-315576000000L);
        zzafdVarZzc.zzb(-999999999);
        zzafd zzafdVarZzc2 = zzafe.zzc();
        zzafdVarZzc2.zza(315576000000L);
        zzafdVarZzc2.zzb(999999999);
        zzafd zzafdVarZzc3 = zzafe.zzc();
        zzafdVarZzc3.zza(0L);
        zzafdVarZzc3.zzb(0);
    }

    public static zzafe zza(zzafe zzafeVar) {
        long jZza = zzafeVar.zza();
        int iZzb = zzafeVar.zzb();
        if (jZza >= -315576000000L && jZza <= 315576000000L && iZzb >= -999999999 && iZzb < 1000000000 && ((jZza >= 0 && iZzb >= 0) || (jZza <= 0 && iZzb <= 0))) {
            return zzafeVar;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(jZza).length() + 135 + String.valueOf(iZzb).length() + 89);
        sb.append("Duration is not valid. See proto definition for valid values. Seconds (");
        sb.append(jZza);
        sb.append(") must be in range [-315,576,000,000, +315,576,000,000]. Nanos (");
        sb.append(iZzb);
        sb.append(") must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds");
        throw new IllegalArgumentException(sb.toString());
    }

    public static long zzb(zzafe zzafeVar) {
        zza(zzafeVar);
        return Math.addExact(Math.multiplyExact(zzafeVar.zza(), 1000L), zzafeVar.zzb() / DurationKt.NANOS_IN_MILLIS);
    }

    public static zzafe zzc(long j, int i) {
        if (i <= -1000000000 || i >= 1000000000) {
            j = Math.addExact(j, i / 1000000000);
            i %= 1000000000;
        }
        if (j > 0 && i < 0) {
            i += 1000000000;
            j--;
        }
        if (j < 0 && i > 0) {
            i -= 1000000000;
            j++;
        }
        zzafd zzafdVarZzc = zzafe.zzc();
        zzafdVarZzc.zza(j);
        zzafdVarZzc.zzb(i);
        zzafe zzafeVar = (zzafe) zzafdVarZzc.zzp();
        zza(zzafeVar);
        return zzafeVar;
    }
}
