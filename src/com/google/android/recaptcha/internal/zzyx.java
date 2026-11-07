package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class zzyx implements zzwa {
    static final /* synthetic */ zzyx zza = new zzyx();

    private /* synthetic */ zzyx() {
    }

    @Override // com.google.android.recaptcha.internal.zzwa
    public final /* synthetic */ Object zza() throws GeneralSecurityException {
        zzxx zzxxVar = zzzn.zza;
        BigInteger bigInteger = zzaah.zza;
        zzaae zzaaeVar = new zzaae(null);
        zzaaf zzaafVar = zzaaf.zza;
        zzaaeVar.zzd(zzaafVar);
        zzaaeVar.zze(zzaafVar);
        zzaaeVar.zzf(32);
        zzaaeVar.zza(3072);
        zzaaeVar.zzb(zzaah.zza);
        zzaaeVar.zzc(zzaag.zza);
        return zzaaeVar.zzg();
    }
}
