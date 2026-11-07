package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.Signature;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class zzace implements zzst {
    private static final byte[] zza = new byte[0];
    private static final byte[] zzb = {0};
    private final RSAPublicKey zzc;
    private final String zzd;
    private final byte[] zze;
    private final byte[] zzf;
    private final Provider zzg;

    private zzace(RSAPublicKey rSAPublicKey, zzzt zzztVar, byte[] bArr, byte[] bArr2, Provider provider) throws GeneralSecurityException {
        if (!zzte.zza(2)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Can not use RSA-PKCS1.5 in FIPS-mode, as BoringCrypto module is not available.");
            throw null;
        }
        zzadx.zzb(rSAPublicKey.getModulus().bitLength());
        zzadx.zzc(rSAPublicKey.getPublicExponent());
        this.zzc = rSAPublicKey;
        this.zzd = zzc(zzztVar);
        this.zze = bArr;
        this.zzf = bArr2;
        this.zzg = provider;
    }

    public static Provider zzb() {
        if (zzwc.zza()) {
            zzwc.zzb().getClass();
        }
        return zzti.zza();
    }

    public static String zzc(zzzt zzztVar) throws GeneralSecurityException {
        if (zzztVar == zzzt.zza) {
            return "SHA256withRSA";
        }
        if (zzztVar == zzzt.zzb) {
            return "SHA384withRSA";
        }
        if (zzztVar == zzzt.zzc) {
            return "SHA512withRSA";
        }
        zzsj$$ExternalSyntheticBUOutline1.m456m("unknown hash type");
        return null;
    }

    public static zzst zzd(zzzz zzzzVar) throws NoSuchProviderException {
        Provider providerZzb = zzb();
        if (providerZzb != null) {
            return zze(zzzzVar, providerZzb);
        }
        throw new NoSuchProviderException("RSA-PKCS1.5 using Conscrypt is not supported.");
    }

    public static zzst zze(zzzz zzzzVar, Provider provider) {
        return new zzace((RSAPublicKey) KeyFactory.getInstance("RSA", provider).generatePublic(new RSAPublicKeySpec(zzzzVar.zzd(), zzzzVar.zzf().zzc())), zzzzVar.zzf().zze(), zzzzVar.zze().zzc(), zzzzVar.zzf().zzd().equals(zzzu.zzc) ? zzb : zza, provider);
    }

    @Override // com.google.android.recaptcha.internal.zzst
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zze;
        if (!zzwc.zzc(bArr3, bArr)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Invalid signature (output prefix mismatch)");
            return;
        }
        String str = this.zzd;
        Provider provider = this.zzg;
        RSAPublicKey rSAPublicKey = this.zzc;
        Signature signature = Signature.getInstance(str, provider);
        signature.initVerify(rSAPublicKey);
        signature.update(bArr2);
        byte[] bArr4 = this.zzf;
        if (bArr4.length > 0) {
            signature.update(bArr4);
        }
        try {
            if (signature.verify(Arrays.copyOfRange(bArr, bArr3.length, bArr.length))) {
                return;
            }
        } catch (RuntimeException unused) {
        }
        zzsj$$ExternalSyntheticBUOutline1.m456m("Invalid signature");
    }
}
