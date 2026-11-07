package com.google.android.recaptcha.internal;

import java.security.spec.ECPoint;

/* JADX INFO: loaded from: classes5.dex */
public final class zzyb extends zzaax {
    private final zzxx zza;
    private final ECPoint zzb;
    private final zzady zzc;
    private final Integer zzd;

    public /* synthetic */ zzyb(zzxx zzxxVar, ECPoint eCPoint, zzady zzadyVar, Integer num, byte[] bArr) {
        this.zza = zzxxVar;
        this.zzb = eCPoint;
        this.zzc = zzadyVar;
        this.zzd = num;
    }

    public static zzya zzc() {
        return new zzya(null);
    }

    @Override // com.google.android.recaptcha.internal.zzse
    public final /* synthetic */ zzsl zza() {
        return this.zza;
    }

    @Override // com.google.android.recaptcha.internal.zzse
    public final Integer zzb() {
        return this.zzd;
    }

    public final ECPoint zzd() {
        return this.zzb;
    }

    @Override // com.google.android.recaptcha.internal.zzaax
    public final zzady zze() {
        return this.zzc;
    }

    public final zzxx zzf() {
        return this.zza;
    }
}
