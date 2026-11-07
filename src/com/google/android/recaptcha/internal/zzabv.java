package com.google.android.recaptcha.internal;

import com.google.protobuf.FieldSet$$ExternalSyntheticBUOutline0;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public final class zzabv implements zzst {
    private static final byte[] zza = {48, 42, 48, 5, 6, 3, 43, 101, 112, 3, 33, 0};
    private final PublicKey zzb;
    private final byte[] zzc;
    private final byte[] zzd;
    private final Provider zze;

    private zzabv(byte[] bArr, byte[] bArr2, byte[] bArr3, Provider provider) throws GeneralSecurityException {
        if (!zzte.zza(1)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Can not use Ed25519 in FIPS-mode.");
            throw null;
        }
        if (bArr.length != 32) {
            FieldSet$$ExternalSyntheticBUOutline0.m481m("Given public key's length is not %s.", new Object[]{32});
            throw null;
        }
        this.zzb = KeyFactory.getInstance("Ed25519", provider).generatePublic(new X509EncodedKeySpec(zzacu.zza(zza, bArr)));
        this.zzc = bArr2;
        this.zzd = bArr3;
        this.zze = provider;
    }

    public static zzst zzb(zzyo zzyoVar) throws GeneralSecurityException {
        Provider providerZza = zzti.zza();
        if (providerZza == null) {
            throw new NoSuchProviderException("Ed25519VerifyJce requires the Conscrypt provider.");
        }
        if (zzte.zza(1)) {
            return new zzabv(zzyoVar.zzd().zzc(), zzyoVar.zze().zzc(), zzyoVar.zzf().zzb().equals(zzyg.zzc) ? new byte[]{0} : new byte[0], providerZza);
        }
        zzsj$$ExternalSyntheticBUOutline1.m456m("Can not use Ed25519 in FIPS-mode.");
        return null;
    }

    @Override // com.google.android.recaptcha.internal.zzst
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzc;
        int length = bArr3.length;
        if (bArr.length != length + 64) {
            throw new GeneralSecurityException(String.format("Invalid signature length: %s", 64));
        }
        if (!zzwc.zzc(bArr3, bArr)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Invalid signature (output prefix mismatch)");
            return;
        }
        Provider provider = this.zze;
        PublicKey publicKey = this.zzb;
        Signature signature = Signature.getInstance("Ed25519", provider);
        signature.initVerify(publicKey);
        signature.update(bArr2);
        signature.update(this.zzd);
        try {
            if (signature.verify(bArr, length, 64)) {
                return;
            }
        } catch (RuntimeException unused) {
        }
        zzsj$$ExternalSyntheticBUOutline1.m456m("Signature check failed.");
    }
}
