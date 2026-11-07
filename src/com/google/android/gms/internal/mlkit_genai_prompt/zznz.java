package com.google.android.gms.internal.mlkit_genai_prompt;

import j$.time.Duration;
import j$.time.temporal.ChronoUnit;
import java.math.BigDecimal;
import java.math.RoundingMode;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zznz {
    static final Duration zza = Duration.ofSeconds(Long.MIN_VALUE);
    public static final Duration zzb = Duration.ofSeconds(LongCompanionObject.MAX_VALUE, 999999999);

    static {
        Duration.ofMillis(LongCompanionObject.MAX_VALUE);
        Duration.ofMillis(Long.MIN_VALUE);
        ChronoUnit chronoUnit = ChronoUnit.MICROS;
        Duration.of(LongCompanionObject.MAX_VALUE, chronoUnit);
        Duration.of(Long.MIN_VALUE, chronoUnit);
        Duration.ofNanos(LongCompanionObject.MAX_VALUE);
        Duration.ofNanos(Long.MIN_VALUE);
        BigDecimal.valueOf(9.223372036854776E18d);
        BigDecimal.valueOf(-9.223372036854776E18d);
        Duration.ofMillis(LongCompanionObject.MAX_VALUE).plusNanos(999999L);
    }

    public static Duration zza(double d) {
        if (d >= 9.223372036854776E18d) {
            return zzb;
        }
        if (d <= -9.223372036854776E18d) {
            return zza;
        }
        RoundingMode roundingMode = RoundingMode.FLOOR;
        long jZza = zznx.zza(d, roundingMode);
        return Duration.ofSeconds(jZza, zznx.zza((d - jZza) * 1.0E9d, roundingMode));
    }
}
