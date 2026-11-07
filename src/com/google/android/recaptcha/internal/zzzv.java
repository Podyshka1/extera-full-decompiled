package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzzv extends zzaav {
    public static final BigInteger zza = BigInteger.valueOf(65537);
    private final int zzb;
    private final BigInteger zzc;
    private final zzzu zzd;
    private final zzzt zze;

    public /* synthetic */ zzzv(int i, BigInteger bigInteger, zzzu zzzuVar, zzzt zzztVar, byte[] bArr) {
        this.zzb = i;
        this.zzc = bigInteger;
        this.zzd = zzzuVar;
        this.zze = zzztVar;
    }

    public static zzzs zza() {
        return new zzzs(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzzv)) {
            return false;
        }
        zzzv zzzvVar = (zzzv) obj;
        return zzzvVar.zzb == this.zzb && Objects.equals(zzzvVar.zzc, this.zzc) && zzzvVar.zzd == this.zzd && zzzvVar.zze == this.zze;
    }

    public final int hashCode() {
        return Objects.hash(zzzv.class, Integer.valueOf(this.zzb), this.zzc, this.zzd, this.zze);
    }

    public final String toString() {
        BigInteger bigInteger = this.zzc;
        zzzt zzztVar = this.zze;
        String strValueOf = String.valueOf(this.zzd);
        String strValueOf2 = String.valueOf(zzztVar);
        String strValueOf3 = String.valueOf(bigInteger);
        int length = strValueOf.length();
        int length2 = strValueOf2.length();
        int length3 = strValueOf3.length();
        int i = this.zzb;
        StringBuilder sb = new StringBuilder(length + 47 + length2 + 18 + length3 + 6 + String.valueOf(i).length() + 13);
        sb.append("RSA SSA PKCS1 Parameters (variant: ");
        sb.append(strValueOf);
        sb.append(", hashType: ");
        sb.append(strValueOf2);
        sb.append(", publicExponent: ");
        sb.append(strValueOf3);
        sb.append(", and ");
        sb.append(i);
        sb.append("-bit modulus)");
        return sb.toString();
    }

    public final int zzb() {
        return this.zzb;
    }

    public final BigInteger zzc() {
        return this.zzc;
    }

    public final zzzu zzd() {
        return this.zzd;
    }

    public final zzzt zze() {
        return this.zze;
    }

    public final boolean zzf() {
        return this.zzd != zzzu.zzd;
    }
}
