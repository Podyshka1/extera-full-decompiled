package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.Signature;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.security.spec.RSAPublicKeySpec;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzacn implements zzst {
    private static final byte[] zza = new byte[0];
    private static final byte[] zzb = {0};
    private final RSAPublicKey zzc;
    private final String zzd;
    private final PSSParameterSpec zze;
    private final byte[] zzf;
    private final byte[] zzg;
    private final Provider zzh;

    private zzacn(RSAPublicKey rSAPublicKey, zzaaf zzaafVar, zzaaf zzaafVar2, int i, byte[] bArr, byte[] bArr2, Provider provider) throws GeneralSecurityException {
        if (!zzte.zza(2)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Cannot use RSA SSA PSS in FIPS-mode, as BoringCrypto module is not available.");
            throw null;
        }
        if (!zzaafVar.equals(zzaafVar2)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("sigHash and mgf1Hash must be the same");
            throw null;
        }
        zzadx.zzb(rSAPublicKey.getModulus().bitLength());
        zzadx.zzc(rSAPublicKey.getPublicExponent());
        this.zzc = rSAPublicKey;
        this.zzd = zzc(zzaafVar);
        this.zze = zzd(zzaafVar, zzaafVar2, i);
        this.zzf = bArr;
        this.zzg = bArr2;
        this.zzh = provider;
    }

    public static Provider zzb() {
        if (zzwc.zza()) {
            zzwc.zzb().getClass();
        }
        return zzti.zza();
    }

    public static String zzc(zzaaf zzaafVar) {
        if (zzaafVar == zzaaf.zza) {
            return "SHA256withRSA/PSS";
        }
        if (zzaafVar == zzaaf.zzb) {
            return "SHA384withRSA/PSS";
        }
        if (zzaafVar == zzaaf.zzc) {
            return "SHA512withRSA/PSS";
        }
        f$$ExternalSyntheticBUOutline1.m215m("Unsupported hash: ".concat(String.valueOf(zzaafVar)));
        return null;
    }

    public static PSSParameterSpec zzd(zzaaf zzaafVar, zzaaf zzaafVar2, int i) {
        String str;
        MGF1ParameterSpec mGF1ParameterSpec;
        zzaaf zzaafVar3 = zzaaf.zza;
        if (zzaafVar == zzaafVar3) {
            str = "SHA-256";
        } else if (zzaafVar == zzaaf.zzb) {
            str = "SHA-384";
        } else {
            if (zzaafVar != zzaaf.zzc) {
                f$$ExternalSyntheticBUOutline1.m215m("Unsupported MD hash: ".concat(String.valueOf(zzaafVar)));
                return null;
            }
            str = "SHA-512";
        }
        if (zzaafVar2 == zzaafVar3) {
            mGF1ParameterSpec = MGF1ParameterSpec.SHA256;
        } else if (zzaafVar2 == zzaaf.zzb) {
            mGF1ParameterSpec = MGF1ParameterSpec.SHA384;
        } else {
            if (zzaafVar2 != zzaaf.zzc) {
                f$$ExternalSyntheticBUOutline1.m215m("Unsupported MGF1 hash: ".concat(String.valueOf(zzaafVar2)));
                return null;
            }
            mGF1ParameterSpec = MGF1ParameterSpec.SHA512;
        }
        return new PSSParameterSpec(str, "MGF1", mGF1ParameterSpec, i, 1);
    }

    public static zzst zze(zzaal zzaalVar) throws NoSuchProviderException {
        Provider providerZzb = zzb();
        if (providerZzb == null) {
            throw new NoSuchProviderException("RSA SSA PSS using Conscrypt is not supported.");
        }
        RSAPublicKey rSAPublicKey = (RSAPublicKey) KeyFactory.getInstance("RSA", providerZzb).generatePublic(new RSAPublicKeySpec(zzaalVar.zzd(), zzaalVar.zzf().zzc()));
        zzaah zzaahVarZzf = zzaalVar.zzf();
        return new zzacn(rSAPublicKey, zzaahVarZzf.zze(), zzaahVarZzf.zzf(), zzaahVarZzf.zzg(), zzaalVar.zze().zzc(), zzaalVar.zzf().zzd().equals(zzaag.zzc) ? zzb : zza, providerZzb);
    }

    @Override // com.google.android.recaptcha.internal.zzst
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzf;
        if (!zzwc.zzc(bArr3, bArr)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Invalid signature (output prefix mismatch)");
            return;
        }
        String str = this.zzd;
        Provider provider = this.zzh;
        RSAPublicKey rSAPublicKey = this.zzc;
        Signature signature = Signature.getInstance(str, provider);
        signature.initVerify(rSAPublicKey);
        signature.setParameter(this.zze);
        signature.update(bArr2);
        byte[] bArr4 = this.zzg;
        if (bArr4.length > 0) {
            signature.update(bArr4);
        }
        int length = bArr.length;
        int length2 = bArr3.length;
        if (signature.verify(bArr, length2, length - length2)) {
            return;
        }
        zzsj$$ExternalSyntheticBUOutline1.m480m("signature verification failed");
    }
}
