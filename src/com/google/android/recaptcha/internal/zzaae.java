package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaae {
    private static final BigInteger zzg;
    private static final BigInteger zzh;
    private Integer zza = null;
    private BigInteger zzb = zzaah.zza;
    private zzaaf zzc = null;
    private zzaaf zzd = null;
    private Integer zze = null;
    private zzaag zzf = zzaag.zzd;

    static {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(2L);
        zzg = bigIntegerValueOf;
        zzh = bigIntegerValueOf.pow(256);
    }

    public final zzaae zza(int i) {
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzaae zzb(BigInteger bigInteger) {
        this.zzb = bigInteger;
        return this;
    }

    public final zzaae zzc(zzaag zzaagVar) {
        this.zzf = zzaagVar;
        return this;
    }

    public final zzaae zzd(zzaaf zzaafVar) {
        this.zzc = zzaafVar;
        return this;
    }

    public final zzaae zze(zzaaf zzaafVar) {
        this.zzd = zzaafVar;
        return this;
    }

    public final zzaah zzg() throws GeneralSecurityException {
        Integer num = this.zza;
        if (num == null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("key size is not set");
            return null;
        }
        if (this.zzb == null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("publicExponent is not set");
            return null;
        }
        if (this.zzc == null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("signature hash type is not set");
            return null;
        }
        if (this.zzd == null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("mgf1 hash type is not set");
            return null;
        }
        if (this.zzf == null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("variant is not set");
            return null;
        }
        if (this.zze == null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("salt length is not set");
            return null;
        }
        if (num.intValue() < 2048) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least %d bits", this.zza, 2048));
        }
        if (this.zzc != this.zzd) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("MGF1 hash is different from signature hash");
            return null;
        }
        BigInteger bigInteger = this.zzb;
        int iCompareTo = bigInteger.compareTo(zzaah.zza);
        if (iCompareTo != 0) {
            if (iCompareTo < 0) {
                throw new InvalidAlgorithmParameterException("Public exponent must be at least 65537.");
            }
            if (bigInteger.mod(zzg).equals(BigInteger.ZERO)) {
                throw new InvalidAlgorithmParameterException("Invalid public exponent");
            }
            if (bigInteger.compareTo(zzh) > 0) {
                throw new InvalidAlgorithmParameterException("Public exponent cannot be larger than 2^256.");
            }
        }
        return new zzaah(this.zza.intValue(), this.zzb, this.zzf, this.zzc, this.zzd, this.zze.intValue(), null);
    }

    public /* synthetic */ zzaae(byte[] bArr) {
    }

    public final zzaae zzf(int i) throws GeneralSecurityException {
        if (i < 0) {
            throw new GeneralSecurityException(String.format("Invalid salt length in bytes %d; salt length must be positive", Integer.valueOf(i)));
        }
        this.zze = Integer.valueOf(i);
        return this;
    }
}
