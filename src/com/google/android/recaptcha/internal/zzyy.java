package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class zzyy implements zzwa {
    static final /* synthetic */ zzyy zza = new zzyy();

    private /* synthetic */ zzyy() {
    }

    @Override // com.google.android.recaptcha.internal.zzwa
    public final /* synthetic */ Object zza() throws GeneralSecurityException {
        zzxx zzxxVar = zzzn.zza;
        BigInteger bigInteger = zzaah.zza;
        zzaae zzaaeVar = new zzaae(null);
        zzaaf zzaafVar = zzaaf.zzc;
        zzaaeVar.zzd(zzaafVar);
        zzaaeVar.zze(zzaafVar);
        zzaaeVar.zzf(64);
        zzaaeVar.zza(4096);
        zzaaeVar.zzb(zzaah.zza);
        zzaaeVar.zzc(zzaag.zza);
        return zzaaeVar.zzg();
    }
}
