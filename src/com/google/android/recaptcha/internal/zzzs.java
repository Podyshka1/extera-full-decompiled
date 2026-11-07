package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* JADX INFO: loaded from: classes5.dex */
public final class zzzs {
    private static final BigInteger zze;
    private static final BigInteger zzf;
    private Integer zza = null;
    private BigInteger zzb = zzzv.zza;
    private zzzt zzc = null;
    private zzzu zzd = zzzu.zzd;

    static {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(2L);
        zze = bigIntegerValueOf;
        zzf = bigIntegerValueOf.pow(256);
    }

    public final zzzs zza(int i) {
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzzs zzb(BigInteger bigInteger) {
        this.zzb = bigInteger;
        return this;
    }

    public final zzzs zzc(zzzu zzzuVar) {
        this.zzd = zzzuVar;
        return this;
    }

    public final zzzs zzd(zzzt zzztVar) {
        this.zzc = zzztVar;
        return this;
    }

    public final zzzv zze() throws GeneralSecurityException {
        Integer num = this.zza;
        if (num == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("key size is not set");
            return null;
        }
        if (this.zzb == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("publicExponent is not set");
            return null;
        }
        if (this.zzc == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("hash type is not set");
            return null;
        }
        if (this.zzd == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("variant is not set");
            return null;
        }
        if (num.intValue() < 2048) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 2048 bits", this.zza));
        }
        BigInteger bigInteger = this.zzb;
        int iCompareTo = bigInteger.compareTo(zzzv.zza);
        if (iCompareTo != 0) {
            if (iCompareTo < 0) {
                throw new InvalidAlgorithmParameterException("Public exponent must be at least 65537.");
            }
            if (bigInteger.mod(zze).equals(BigInteger.ZERO)) {
                throw new InvalidAlgorithmParameterException("Invalid public exponent");
            }
            if (bigInteger.compareTo(zzf) > 0) {
                throw new InvalidAlgorithmParameterException("Public exponent cannot be larger than 2^256.");
            }
        }
        return new zzzv(this.zza.intValue(), this.zzb, this.zzd, this.zzc, null);
    }

    public /* synthetic */ zzzs(byte[] bArr) {
    }
}
