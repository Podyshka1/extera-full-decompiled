package com.google.android.recaptcha.internal;

import java.util.Locale;
import java.util.Optional;

/* JADX INFO: loaded from: classes5.dex */
public final class zzf extends Exception {
    /* JADX WARN: Illegal instructions before constructor call */
    public zzf(zze zzeVar, zzc zzcVar, long j) {
        int i = (((((~1933084303) & 1081172490) | 1598823280) + ((1933084303 & 943317002) | 974030260)) - (-1740098486)) ^ (1578716908 % 62299853);
        Locale locale = Locale.US;
        Object[] objArr = new Object[i];
        objArr[0] = Long.valueOf(zzeVar.zza());
        objArr[1] = Long.valueOf(zzcVar.zza());
        int i2 = (((((~421825361) & 1965217800) | 1712162915) + ((421825361 & 295858312) | 210019829)) - 1704549116) ^ (1336194465 % 831099451);
        Long lValueOf = Long.valueOf(j);
        objArr[i2] = lValueOf;
        super(String.format(locale, zzt.zza("bk3t6gFTc30="), objArr));
        Optional.of(zzcVar);
        Optional.of(lValueOf);
    }

    public zzf(zze zzeVar, Throwable th) {
        super(String.format(Locale.US, zzt.zza("bk0="), Long.valueOf(zzeVar.zza())), th);
        Optional.empty();
        Optional.empty();
    }
}
