package com.google.android.gms.internal.location;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzen {
    private static final SimpleDateFormat zza;
    private static final StringBuilder zzb;

    static {
        Locale locale = Locale.ROOT;
        zza = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", locale);
        new SimpleDateFormat("MM-dd HH:mm:ss", locale);
        zzb = new StringBuilder(33);
    }

    public static String zza(long j) {
        return j >= 0 ? zza.format(new Date(j)) : Long.toString(j);
    }

    public static String zzb(long j) {
        String string;
        StringBuilder sb = zzb;
        synchronized (sb) {
            sb.setLength(0);
            zzc(j, sb);
            string = sb.toString();
        }
        return string;
    }

    public static StringBuilder zzc(long j, StringBuilder sb) {
        if (j == 0) {
            sb.append("0s");
            return sb;
        }
        sb.ensureCapacity(sb.length() + 27);
        boolean z = false;
        if (j < 0) {
            sb.append("-");
            if (j != Long.MIN_VALUE) {
                j = -j;
            } else {
                z = true;
                j = LongCompanionObject.MAX_VALUE;
            }
        }
        if (j >= DurationKt.MILLIS_IN_DAY) {
            sb.append(j / DurationKt.MILLIS_IN_DAY);
            sb.append("d");
            j %= DurationKt.MILLIS_IN_DAY;
        }
        if (z) {
            j++;
        }
        if (j >= DurationKt.MILLIS_IN_HOUR) {
            sb.append(j / DurationKt.MILLIS_IN_HOUR);
            sb.append("h");
            j %= DurationKt.MILLIS_IN_HOUR;
        }
        if (j >= 60000) {
            sb.append(j / 60000);
            sb.append("m");
            j %= 60000;
        }
        if (j >= 1000) {
            sb.append(j / 1000);
            sb.append("s");
            j %= 1000;
        }
        if (j > 0) {
            sb.append(j);
            sb.append("ms");
        }
        return sb;
    }
}
