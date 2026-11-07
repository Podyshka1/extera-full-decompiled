package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.interfaces.RSAPublicKey;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
final class zzadq implements zzst {
    private final RSAPublicKey zza;
    private final zzado zzb;
    private final byte[] zzc;
    private final byte[] zzd;

    public /* synthetic */ zzadq(RSAPublicKey rSAPublicKey, zzado zzadoVar, byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        if (zztf.zza()) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Conscrypt is not available, and we cannot use Java Implementation of RSA-PKCS1.5 in FIPS-mode.");
            throw null;
        }
        zzadx.zza(zzadoVar);
        zzadx.zzb(rSAPublicKey.getModulus().bitLength());
        zzadx.zzc(rSAPublicKey.getPublicExponent());
        this.zza = rSAPublicKey;
        this.zzb = zzadoVar;
        this.zzc = bArr;
        this.zzd = bArr2;
    }

    private final void zzb(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrZza;
        int i;
        RSAPublicKey rSAPublicKey = this.zza;
        BigInteger publicExponent = rSAPublicKey.getPublicExponent();
        BigInteger modulus = rSAPublicKey.getModulus();
        int iBitLength = (modulus.bitLength() + 7) / 8;
        if (iBitLength != bArr.length) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("invalid signature's length");
            return;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (bigInteger.compareTo(modulus) >= 0) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("signature out of range");
            return;
        }
        byte[] bArrZzb = zzth.zzb(bigInteger.modPow(publicExponent, modulus), iBitLength);
        zzado zzadoVar = this.zzb;
        zzadx.zza(zzadoVar);
        MessageDigest messageDigest = (MessageDigest) zzadf.zzb.zzb(zzadw.zzb(zzadoVar));
        messageDigest.update(bArr2);
        byte[] bArr3 = this.zzd;
        if (bArr3.length != 0) {
            messageDigest.update(bArr3);
        }
        byte[] bArrDigest = messageDigest.digest();
        int iOrdinal = zzadoVar.ordinal();
        int i2 = 2;
        if (iOrdinal == 2) {
            bArrZza = zzadp.zza("3031300d060960864801650304020105000420");
        } else if (iOrdinal == 3) {
            bArrZza = zzadp.zza("3041300d060960864801650304020205000430");
        } else {
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("Unsupported hash ".concat(zzadoVar.toString()));
            }
            bArrZza = zzadp.zza("3051300d060960864801650304020305000440");
        }
        int length = bArrDigest.length;
        int i3 = length + 19;
        if (iBitLength < length + 30) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("intended encoded message length too short");
            return;
        }
        byte[] bArr4 = new byte[iBitLength];
        bArr4[0] = 0;
        bArr4[1] = 1;
        int i4 = 0;
        while (true) {
            i = i2 + 1;
            if (i4 >= (iBitLength - i3) - 3) {
                break;
            }
            bArr4[i2] = -1;
            i4++;
            i2 = i;
        }
        bArr4[i2] = 0;
        System.arraycopy(bArrZza, 0, bArr4, i, 19);
        System.arraycopy(bArrDigest, 0, bArr4, i2 + 20, bArrDigest.length);
        if (MessageDigest.isEqual(bArrZzb, bArr4)) {
            return;
        }
        zzsj$$ExternalSyntheticBUOutline1.m456m("invalid signature");
    }

    @Override // com.google.android.recaptcha.internal.zzst
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzc;
        int length = bArr3.length;
        if (length == 0) {
            zzb(bArr, bArr2);
        } else if (zzwc.zzc(bArr3, bArr)) {
            zzb(Arrays.copyOfRange(bArr, length, bArr.length), bArr2);
        } else {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Invalid signature (output prefix mismatch)");
        }
    }
}
