package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECPrivateKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public final class zzabl implements zzss {
    private static final byte[] zza = new byte[0];
    private static final byte[] zzb = {0};

    private zzabl(ECPrivateKey eCPrivateKey, zzado zzadoVar, zzacz zzaczVar, byte[] bArr, byte[] bArr2, Provider provider) throws GeneralSecurityException {
        if (zzte.zza(2)) {
            zzadw.zza(zzadoVar);
        } else {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Can not use ECDSA in FIPS-mode, as BoringCrypto is not available.");
            throw null;
        }
    }

    public static zzss zzb(zzxz zzxzVar) {
        Provider providerZza = zzti.zza();
        return new zzabl((ECPrivateKey) (providerZza != null ? KeyFactory.getInstance("EC", providerZza) : (KeyFactory) zzadf.zzc.zzb("EC")).generatePrivate(new ECPrivateKeySpec(zzxzVar.zzf().zzb(zzsd.zza()), zzada.zzb((zzacy) zzabm.zzc.zzb(zzxzVar.zzd().zzc())))), (zzado) zzabm.zza.zzb(zzxzVar.zzd().zzd()), (zzacz) zzabm.zzb.zzb(zzxzVar.zzd().zzb()), zzxzVar.zze().zze().zzc(), zzxzVar.zzd().zze().equals(zzxw.zzc) ? zzb : zza, providerZza);
    }

    @Override // com.google.android.recaptcha.internal.zzss
    public final byte[] zza(byte[] bArr) {
        throw null;
    }
}
