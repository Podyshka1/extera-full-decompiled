package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaah extends zzaav {
    public static final BigInteger zza = BigInteger.valueOf(65537);
    private final int zzb;
    private final BigInteger zzc;
    private final zzaag zzd;
    private final zzaaf zze;
    private final zzaaf zzf;
    private final int zzg;

    public /* synthetic */ zzaah(int i, BigInteger bigInteger, zzaag zzaagVar, zzaaf zzaafVar, zzaaf zzaafVar2, int i2, byte[] bArr) {
        this.zzb = i;
        this.zzc = bigInteger;
        this.zzd = zzaagVar;
        this.zze = zzaafVar;
        this.zzf = zzaafVar2;
        this.zzg = i2;
    }

    public static zzaae zza() {
        return new zzaae(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzaah)) {
            return false;
        }
        zzaah zzaahVar = (zzaah) obj;
        return zzaahVar.zzb == this.zzb && Objects.equals(zzaahVar.zzc, this.zzc) && Objects.equals(zzaahVar.zzd, this.zzd) && Objects.equals(zzaahVar.zze, this.zze) && Objects.equals(zzaahVar.zzf, this.zzf) && zzaahVar.zzg == this.zzg;
    }

    public final int hashCode() {
        return Objects.hash(zzaah.class, Integer.valueOf(this.zzb), this.zzc, this.zzd, this.zze, this.zzf, Integer.valueOf(this.zzg));
    }

    public final String toString() {
        BigInteger bigInteger = this.zzc;
        zzaaf zzaafVar = this.zzf;
        zzaaf zzaafVar2 = this.zze;
        String strValueOf = String.valueOf(this.zzd);
        String strValueOf2 = String.valueOf(zzaafVar2);
        String strValueOf3 = String.valueOf(zzaafVar);
        String strValueOf4 = String.valueOf(bigInteger);
        int length = strValueOf.length();
        int length2 = strValueOf2.length();
        int length3 = strValueOf3.length();
        int i = this.zzg;
        int length4 = String.valueOf(i).length();
        int length5 = strValueOf4.length();
        int i2 = this.zzb;
        StringBuilder sb = new StringBuilder(length + 55 + length2 + 17 + length3 + 19 + length4 + 18 + length5 + 6 + String.valueOf(i2).length() + 13);
        sb.append("RSA SSA PSS Parameters (variant: ");
        sb.append(strValueOf);
        sb.append(", signature hashType: ");
        sb.append(strValueOf2);
        sb.append(", mgf1 hashType: ");
        sb.append(strValueOf3);
        sb.append(", saltLengthBytes: ");
        sb.append(i);
        sb.append(", publicExponent: ");
        sb.append(strValueOf4);
        sb.append(", and ");
        sb.append(i2);
        sb.append("-bit modulus)");
        return sb.toString();
    }

    public final int zzb() {
        return this.zzb;
    }

    public final BigInteger zzc() {
        return this.zzc;
    }

    public final zzaag zzd() {
        return this.zzd;
    }

    public final zzaaf zze() {
        return this.zze;
    }

    public final zzaaf zzf() {
        return this.zzf;
    }

    public final int zzg() {
        return this.zzg;
    }

    public final boolean zzh() {
        return this.zzd != zzaag.zzd;
    }
}
