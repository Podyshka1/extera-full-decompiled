package com.google.android.recaptcha.internal;

import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.time.DurationKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzaiq {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final ThreadLocal zzb;

    static {
        zzahw zzahwVarZzc = zzahx.zzc();
        zzahwVarZzc.zza(-62135596800L);
        zzahwVarZzc.zzb(0);
        zzahw zzahwVarZzc2 = zzahx.zzc();
        zzahwVarZzc2.zza(253402300799L);
        zzahwVarZzc2.zzb(999999999);
        zzahw zzahwVarZzc3 = zzahx.zzc();
        zzahwVarZzc3.zza(0L);
        zzahwVarZzc3.zzb(0);
        zzb = new zzaip();
        zzf("now");
        zzf("getEpochSecond");
        zzf("getNano");
    }

    public static zzahx zza(zzahx zzahxVar) {
        long jZza = zzahxVar.zza();
        boolean zZze = zze(jZza);
        int iZzb = zzahxVar.zzb();
        if (zZze && iZzb >= 0 && iZzb < 1000000000) {
            return zzahxVar;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(jZza).length() + 135 + String.valueOf(iZzb).length() + 37);
        sb.append("Timestamp is not valid. See proto definition for valid values. Seconds (");
        sb.append(jZza);
        sb.append(") must be in range [-62,135,596,800, +253,402,300,799]. Nanos (");
        sb.append(iZzb);
        sb.append(") must be in range [0, +999,999,999].");
        throw new IllegalArgumentException(sb.toString());
    }

    public static String zzb(zzahx zzahxVar) {
        zza(zzahxVar);
        long jZza = zzahxVar.zza();
        int iZzb = zzahxVar.zzb();
        StringBuilder sb = new StringBuilder();
        sb.append(((SimpleDateFormat) zzb.get()).format(new Date(jZza * 1000)));
        if (iZzb != 0) {
            sb.append(".");
            sb.append(iZzb % DurationKt.NANOS_IN_MILLIS == 0 ? String.format(Locale.ENGLISH, "%1$03d", Integer.valueOf(iZzb / DurationKt.NANOS_IN_MILLIS)) : iZzb % 1000 == 0 ? String.format(Locale.ENGLISH, "%1$06d", Integer.valueOf(iZzb / 1000)) : String.format(Locale.ENGLISH, "%1$09d", Integer.valueOf(iZzb)));
        }
        sb.append("Z");
        return sb.toString();
    }

    public static zzahx zzc(long j) {
        return zzd(j / 1000, (int) ((j % 1000) * 1000000));
    }

    public static zzahx zzd(long j, int i) {
        if (!zze(j)) {
            StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 117);
            sb.append("Timestamp is not valid. Input seconds is too large. Seconds (");
            sb.append(j);
            sb.append(") must be in range [-62,135,596,800, +253,402,300,799]. ");
            throw new IllegalArgumentException(sb.toString());
        }
        if (i <= -1000000000 || i >= 1000000000) {
            j = Math.addExact(j, i / 1000000000);
            i %= 1000000000;
        }
        if (i < 0) {
            i += 1000000000;
            j = Math.subtractExact(j, 1L);
        }
        zzahw zzahwVarZzc = zzahx.zzc();
        zzahwVarZzc.zza(j);
        zzahwVarZzc.zzb(i);
        zzahx zzahxVar = (zzahx) zzahwVarZzc.zzp();
        zza(zzahxVar);
        return zzahxVar;
    }

    private static boolean zze(long j) {
        return j >= -62135596800L && j <= 253402300799L;
    }

    private static Method zzf(String str) {
        try {
            return Class.forName("java.time.Instant").getMethod(str, null);
        } catch (Exception unused) {
            return null;
        }
    }
}
