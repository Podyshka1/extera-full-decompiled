package com.google.android.gms.internal.location;

import java.text.SimpleDateFormat;
import java.util.Locale;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzdj {
    private static final SimpleDateFormat zza;
    private static final SimpleDateFormat zzb;
    private static final StringBuilder zzc;

    static {
        Locale locale = Locale.ROOT;
        zza = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", locale);
        zzb = new SimpleDateFormat("MM-dd HH:mm:ss", locale);
        zzc = new StringBuilder(33);
    }

    public static String zza(long j) {
        String string;
        StringBuilder sb = zzc;
        synchronized (sb) {
            sb.setLength(0);
            zzb(j, sb);
            string = sb.toString();
        }
        return string;
    }

    public static void zzb(long j, StringBuilder sb) {
        if (j == 0) {
            sb.append("0s");
            return;
        }
        sb.ensureCapacity(sb.length() + 27);
        boolean z = false;
        if (j < 0) {
            sb.append("-");
            if (j != Long.MIN_VALUE) {
                j = -j;
            } else {
                j = LongCompanionObject.MAX_VALUE;
                z = true;
            }
        }
        if (j >= DurationKt.MILLIS_IN_DAY) {
            sb.append(j / DurationKt.MILLIS_IN_DAY);
            sb.append("d");
            j %= DurationKt.MILLIS_IN_DAY;
        }
        if (true == z) {
            j = 25975808;
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
    }
}
