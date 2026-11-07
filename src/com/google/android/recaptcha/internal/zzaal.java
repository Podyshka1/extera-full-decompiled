package com.google.android.recaptcha.internal;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaal extends zzaax {
    private final zzaah zza;
    private final BigInteger zzb;
    private final zzady zzc;
    private final Integer zzd;

    public /* synthetic */ zzaal(zzaah zzaahVar, BigInteger bigInteger, zzady zzadyVar, Integer num, byte[] bArr) {
        this.zza = zzaahVar;
        this.zzb = bigInteger;
        this.zzc = zzadyVar;
        this.zzd = num;
    }

    public static zzaak zzc() {
        return new zzaak(null);
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

    public final zzaah zzf() {
        return this.zza;
    }
}
