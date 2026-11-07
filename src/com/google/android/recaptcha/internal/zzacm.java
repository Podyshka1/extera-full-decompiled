package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public final class zzacm implements zzss {
    private static final byte[] zza = new byte[0];
    private static final byte[] zzb = {0};

    private zzacm(RSAPrivateCrtKey rSAPrivateCrtKey, zzaaf zzaafVar, zzaaf zzaafVar2, int i, byte[] bArr, byte[] bArr2, Provider provider) throws GeneralSecurityException {
        if (!zzte.zza(2)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Cannot use RSA PSS in FIPS-mode, as BoringCrypto module is not available.");
            throw null;
        }
        zzadx.zzb(rSAPrivateCrtKey.getModulus().bitLength());
        zzadx.zzc(rSAPrivateCrtKey.getPublicExponent());
        zzacn.zzc(zzaafVar);
        zzacn.zzd(zzaafVar, zzaafVar2, i);
    }

    public static zzss zzb(zzaaj zzaajVar) throws NoSuchAlgorithmException, NoSuchProviderException {
        Provider providerZzb = zzacn.zzb();
        if (providerZzb == null) {
            throw new NoSuchProviderException("RSA SSA PSS using Conscrypt is not supported.");
        }
        KeyFactory keyFactory = KeyFactory.getInstance("RSA", providerZzb);
        zzaah zzaahVarZzd = zzaajVar.zzd();
        return new zzacm((RSAPrivateCrtKey) keyFactory.generatePrivate(new RSAPrivateCrtKeySpec(zzaajVar.zze().zzd(), zzaahVarZzd.zzc(), zzaajVar.zzi().zzb(zzsd.zza()), zzaajVar.zzf().zzb(zzsd.zza()), zzaajVar.zzh().zzb(zzsd.zza()), zzaajVar.zzj().zzb(zzsd.zza()), zzaajVar.zzk().zzb(zzsd.zza()), zzaajVar.zzl().zzb(zzsd.zza()))), zzaahVarZzd.zze(), zzaahVarZzd.zzf(), zzaahVarZzd.zzg(), zzaajVar.zze().zze().zzc(), zzaahVarZzd.zzd().equals(zzaag.zzc) ? zzb : zza, providerZzb);
    }

    @Override // com.google.android.recaptcha.internal.zzss
    public final byte[] zza(byte[] bArr) {
        throw null;
    }
}
