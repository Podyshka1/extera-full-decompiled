package com.google.android.recaptcha.internal;

import okhttp3.internal.http2.Http2Connection;

/* JADX INFO: loaded from: classes5.dex */
public final class zzme {
    public static final zzib zza;
    public static final zzib zzb;
    public static final zzib zzc;

    static {
        zzia zziaVarZzi = zzib.zzi();
        zziaVarZzi.zze(-315576000000L);
        zziaVarZzi.zzd(-999999999);
        zza = (zzib) zziaVarZzi.zzj();
        zzia zziaVarZzi2 = zzib.zzi();
        zziaVarZzi2.zze(315576000000L);
        zziaVarZzi2.zzd(999999999);
        zzb = (zzib) zziaVarZzi2.zzj();
        zzia zziaVarZzi3 = zzib.zzi();
        zziaVarZzi3.zze(0L);
        zziaVarZzi3.zzd(0);
        zzc = (zzib) zziaVarZzi3.zzj();
    }

    public static zzib zza(long j) {
        int i = (int) (j % 1000000000);
        long jZza = j / 1000000000;
        if (i <= -1000000000 || i >= 1000000000) {
            jZza = zzgb.zza(jZza, i / Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
            i %= Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
        }
        if (jZza > 0 && i < 0) {
            i += Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
            jZza--;
        }
        if (jZza < 0 && i > 0) {
            i -= 1000000000;
            jZza++;
        }
        zzia zziaVarZzi = zzib.zzi();
        zziaVarZzi.zze(jZza);
        zziaVarZzi.zzd(i);
        zzib zzibVar = (zzib) zziaVarZzi.zzj();
        long jZzg = zzibVar.zzg();
        int iZzf = zzibVar.zzf();
        if (jZzg < -315576000000L || jZzg > 315576000000L || iZzf < -999999999 || iZzf >= 1000000000 || ((jZzg < 0 || iZzf < 0) && (jZzg > 0 || iZzf > 0))) {
            throw new IllegalArgumentException(String.format("Duration is not valid. See proto definition for valid values. Seconds (%s) must be in range [-315,576,000,000, +315,576,000,000]. Nanos (%s) must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds", Long.valueOf(jZzg), Integer.valueOf(iZzf)));
        }
        return zzibVar;
    }
}
