package com.google.android.recaptcha.internal;

import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.annotation.Nullable;
import okhttp3.internal.http2.Http2Connection;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes5.dex */
public final class zzmg {
    public static final zzlj zza;
    public static final zzlj zzb;
    public static final zzlj zzc;
    private static final ThreadLocal zzd;

    @Nullable
    private static final Method zze;

    @Nullable
    private static final Method zzf;

    @Nullable
    private static final Method zzg;

    static {
        zzli zzliVarZzi = zzlj.zzi();
        zzliVarZzi.zze(-62135596800L);
        zzliVarZzi.zzd(0);
        zza = (zzlj) zzliVarZzi.zzj();
        zzli zzliVarZzi2 = zzlj.zzi();
        zzliVarZzi2.zze(253402300799L);
        zzliVarZzi2.zzd(999999999);
        zzb = (zzlj) zzliVarZzi2.zzj();
        zzli zzliVarZzi3 = zzlj.zzi();
        zzliVarZzi3.zze(0L);
        zzliVarZzi3.zzd(0);
        zzc = (zzlj) zzliVarZzi3.zzj();
        zzd = new zzmf();
        zze = zzd("now");
        zzf = zzd("getEpochSecond");
        zzg = zzd("getNano");
    }

    public static zzlj zza(zzlj zzljVar) {
        long jZzg = zzljVar.zzg();
        int iZzf = zzljVar.zzf();
        if (jZzg < -62135596800L || jZzg > 253402300799L || iZzf < 0 || iZzf >= 1000000000) {
            throw new IllegalArgumentException(String.format("Timestamp is not valid. See proto definition for valid values. Seconds (%s) must be in range [-62,135,596,800, +253,402,300,799]. Nanos (%s) must be in range [0, +999,999,999].", Long.valueOf(jZzg), Integer.valueOf(iZzf)));
        }
        return zzljVar;
    }

    public static zzlj zzb(long j) {
        int i = (int) ((j % 1000) * 1000000);
        long jZza = j / 1000;
        if (i <= -1000000000 || i >= 1000000000) {
            jZza = zzgb.zza(jZza, i / Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
            i %= Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
        }
        if (i < 0) {
            i += Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
            jZza = zzgb.zzb(jZza, 1L);
        }
        zzli zzliVarZzi = zzlj.zzi();
        zzliVarZzi.zze(jZza);
        zzliVarZzi.zzd(i);
        zzlj zzljVar = (zzlj) zzliVarZzi.zzj();
        zza(zzljVar);
        return zzljVar;
    }

    public static String zzc(zzlj zzljVar) {
        zza(zzljVar);
        long jZzg = zzljVar.zzg();
        int iZzf = zzljVar.zzf();
        StringBuilder sb = new StringBuilder();
        sb.append(((SimpleDateFormat) zzd.get()).format(new Date(jZzg * 1000)));
        if (iZzf != 0) {
            sb.append(".");
            sb.append(iZzf % 1000000 == 0 ? String.format(Locale.ENGLISH, "%1$03d", Integer.valueOf(iZzf / 1000000)) : iZzf % MediaDataController.MAX_STYLE_RUNS_COUNT == 0 ? String.format(Locale.ENGLISH, "%1$06d", Integer.valueOf(iZzf / MediaDataController.MAX_STYLE_RUNS_COUNT)) : String.format(Locale.ENGLISH, "%1$09d", Integer.valueOf(iZzf)));
        }
        sb.append("Z");
        return sb.toString();
    }

    @Nullable
    private static Method zzd(String str) {
        try {
            return Class.forName("j$.time.Instant").getMethod(str, null);
        } catch (Exception unused) {
            return null;
        }
    }
}
