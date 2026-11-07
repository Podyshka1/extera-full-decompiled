package com.google.android.recaptcha.internal;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class zzadz {
    private final BigInteger zza;

    private zzadz(BigInteger bigInteger) {
        this.zza = bigInteger;
    }

    public static zzadz zza(BigInteger bigInteger, zzsy zzsyVar) {
        return new zzadz(bigInteger);
    }

    public final BigInteger zzb(zzsy zzsyVar) {
        return this.zza;
    }
}
