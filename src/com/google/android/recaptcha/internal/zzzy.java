package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzzy {
    private zzzv zza = null;
    private BigInteger zzb = null;
    private Integer zzc = null;

    public /* synthetic */ zzzy(byte[] bArr) {
    }

    public final zzzy zza(zzzv zzzvVar) {
        this.zza = zzzvVar;
        return this;
    }

    public final zzzy zzb(BigInteger bigInteger) {
        this.zzb = bigInteger;
        return this;
    }

    public final zzzy zzc(Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzzz zzd() throws GeneralSecurityException {
        zzady zzadyVarZza;
        if (this.zza == null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Cannot build without parameters");
            return null;
        }
        BigInteger bigInteger = this.zzb;
        if (bigInteger == null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Cannot build without modulus");
            return null;
        }
        int iBitLength = bigInteger.bitLength();
        int iZzb = this.zza.zzb();
        if (iBitLength != iZzb) {
            StringBuilder sb = new StringBuilder(String.valueOf(iBitLength).length() + 56 + String.valueOf(iZzb).length());
            sb.append("Got modulus size ");
            sb.append(iBitLength);
            sb.append(", but parameters requires modulus size ");
            sb.append(iZzb);
            throw new GeneralSecurityException(sb.toString());
        }
        if (this.zza.zzf() && this.zzc == null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Cannot create key without ID requirement with parameters with ID requirement");
            return null;
        }
        if (!this.zza.zzf() && this.zzc != null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Cannot create key with ID requirement with parameters without ID requirement");
            return null;
        }
        if (this.zza.zzd() == zzzu.zzd) {
            zzadyVarZza = zzvc.zza;
        } else if (this.zza.zzd() == zzzu.zzc || this.zza.zzd() == zzzu.zzb) {
            zzadyVarZza = zzvc.zza(this.zzc.intValue());
        } else {
            if (this.zza.zzd() != zzzu.zza) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Unknown RsaSsaPkcs1Parameters.Variant: ".concat(String.valueOf(this.zza.zzd())));
                return null;
            }
            zzadyVarZza = zzvc.zzb(this.zzc.intValue());
        }
        return new zzzz(this.zza, this.zzb, zzadyVarZza, this.zzc, null);
    }
}
