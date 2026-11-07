package com.google.android.recaptcha.internal;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class zzzz extends zzaax {
    private final zzzv zza;
    private final BigInteger zzb;
    private final zzady zzc;
    private final Integer zzd;

    public /* synthetic */ zzzz(zzzv zzzvVar, BigInteger bigInteger, zzady zzadyVar, Integer num, byte[] bArr) {
        this.zza = zzzvVar;
        this.zzb = bigInteger;
        this.zzc = zzadyVar;
        this.zzd = num;
    }

    public static zzzy zzc() {
        return new zzzy(null);
    }

    @Override // com.google.android.recaptcha.internal.zzse
    public final /* synthetic */ zzsl zza() {
        return this.zza;
    }

    @Override // com.google.android.recaptcha.internal.zzse
    public final Integer zzb() {
        return this.zzd;
    }

    public final BigInteger zzd() {
        return this.zzb;
    }

    @Override // com.google.android.recaptcha.internal.zzaax
    public final zzady zze() {
        return this.zzc;
    }

    public final zzzv zzf() {
        return this.zza;
    }
}
