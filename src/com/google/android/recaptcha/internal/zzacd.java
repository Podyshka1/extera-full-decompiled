package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;
import java.security.Signature;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;
import org.mvel2.asm.Constants$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public final class zzacd implements zzss {
    private static final byte[] zzb = new byte[0];
    private static final byte[] zzc = {0};
    private static final byte[] zzd = {1, 2, 3};
    Provider zza;
    private final RSAPrivateCrtKey zze;
    private final String zzf;
    private final byte[] zzg;
    private final byte[] zzh;
    private final zzst zzi;

    private zzacd(RSAPrivateCrtKey rSAPrivateCrtKey, zzzt zzztVar, byte[] bArr, byte[] bArr2, zzst zzstVar, Provider provider) throws GeneralSecurityException {
        if (!zzte.zza(2)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Can not use RSA PKCS1.5 in FIPS-mode, as BoringCrypto module is not available.");
            throw null;
        }
        if (zzztVar != zzzt.zza && zzztVar != zzzt.zzb && zzztVar != zzzt.zzc) {
            throw new GeneralSecurityException("Unsupported hash: ".concat(String.valueOf(zzztVar)));
        }
        zzadx.zzb(rSAPrivateCrtKey.getModulus().bitLength());
        zzadx.zzc(rSAPrivateCrtKey.getPublicExponent());
        this.zze = rSAPrivateCrtKey;
        this.zzf = zzace.zzc(zzztVar);
        this.zzg = bArr;
        this.zzh = bArr2;
        this.zzi = zzstVar;
        this.zza = provider;
    }

    public static zzss zzb(zzzx zzzxVar) {
        Provider providerZzb = zzace.zzb();
        zzacd zzacdVar = new zzacd((RSAPrivateCrtKey) (providerZzb != null ? KeyFactory.getInstance("RSA", providerZzb) : (KeyFactory) zzadf.zzc.zzb("RSA")).generatePrivate(new RSAPrivateCrtKeySpec(zzzxVar.zze().zzd(), zzzxVar.zzd().zzc(), zzzxVar.zzi().zzb(zzsd.zza()), zzzxVar.zzf().zzb(zzsd.zza()), zzzxVar.zzh().zzb(zzsd.zza()), zzzxVar.zzj().zzb(zzsd.zza()), zzzxVar.zzk().zzb(zzsd.zza()), zzzxVar.zzl().zzb(zzsd.zza()))), zzzxVar.zzd().zze(), zzzxVar.zze().zze().zzc(), zzzxVar.zzd().zzd().equals(zzzu.zzc) ? zzc : zzb, providerZzb != null ? zzace.zze(zzzxVar.zze(), providerZzb) : zzadr.zzb(zzzxVar.zze()), providerZzb);
        zzacdVar.zza(zzd);
        return zzacdVar;
    }

    @Override // com.google.android.recaptcha.internal.zzss
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        Provider provider = this.zza;
        String str = this.zzf;
        Signature signature = provider != null ? Signature.getInstance(str, provider) : (Signature) zzadf.zza.zzb(str);
        signature.initSign(this.zze);
        signature.update(bArr);
        byte[] bArr2 = this.zzh;
        if (bArr2.length > 0) {
            signature.update(bArr2);
        }
        byte[] bArrSign = signature.sign();
        byte[] bArr3 = this.zzg;
        if (bArr3.length > 0) {
            bArrSign = zzacu.zza(bArr3, bArrSign);
        }
        try {
            this.zzi.zza(bArrSign, bArr);
            return bArrSign;
        } catch (GeneralSecurityException e) {
            Constants$$ExternalSyntheticBUOutline0.m1006m("RSA signature computation error", e);
            return null;
        }
    }
}
