package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
public final class zzzw {
    private zzzz zza = null;
    private zzadz zzb = null;
    private zzadz zzc = null;
    private zzadz zzd = null;
    private zzadz zze = null;
    private zzadz zzf = null;
    private zzadz zzg = null;

    public /* synthetic */ zzzw(byte[] bArr) {
    }

    public final zzzw zza(zzzz zzzzVar) {
        this.zza = zzzzVar;
        return this;
    }

    public final zzzw zzb(zzadz zzadzVar, zzadz zzadzVar2) {
        this.zzc = zzadzVar;
        this.zzd = zzadzVar2;
        return this;
    }

    public final zzzw zzc(zzadz zzadzVar) {
        this.zzb = zzadzVar;
        return this;
    }

    public final zzzw zzd(zzadz zzadzVar, zzadz zzadzVar2) {
        this.zze = zzadzVar;
        this.zzf = zzadzVar2;
        return this;
    }

    public final zzzw zze(zzadz zzadzVar) {
        this.zzg = zzadzVar;
        return this;
    }

    public final zzzx zzf() throws GeneralSecurityException {
        zzzz zzzzVar = this.zza;
        if (zzzzVar == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Cannot build without a RSA SSA PKCS1 public key");
            return null;
        }
        if (this.zzc == null || this.zzd == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Cannot build without prime factors");
            return null;
        }
        if (this.zzb == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Cannot build without private exponent");
            return null;
        }
        if (this.zze == null || this.zzf == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Cannot build without prime exponents");
            return null;
        }
        if (this.zzg == null) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Cannot build without CRT coefficient");
            return null;
        }
        BigInteger bigIntegerZzc = zzzzVar.zzf().zzc();
        BigInteger bigIntegerZzd = this.zza.zzd();
        BigInteger bigIntegerZzb = this.zzc.zzb(zzsd.zza());
        BigInteger bigIntegerZzb2 = this.zzd.zzb(zzsd.zza());
        BigInteger bigIntegerZzb3 = this.zzb.zzb(zzsd.zza());
        BigInteger bigIntegerZzb4 = this.zze.zzb(zzsd.zza());
        BigInteger bigIntegerZzb5 = this.zzf.zzb(zzsd.zza());
        BigInteger bigIntegerZzb6 = this.zzg.zzb(zzsd.zza());
        if (!bigIntegerZzb.isProbablePrime(10)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("p is not a prime");
            return null;
        }
        if (!bigIntegerZzb2.isProbablePrime(10)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("q is not a prime");
            return null;
        }
        if (!bigIntegerZzb.multiply(bigIntegerZzb2).equals(bigIntegerZzd)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("Prime p times prime q is not equal to the public key's modulus");
            return null;
        }
        BigInteger bigInteger = BigInteger.ONE;
        BigInteger bigIntegerSubtract = bigIntegerZzb.subtract(bigInteger);
        BigInteger bigIntegerSubtract2 = bigIntegerZzb2.subtract(bigInteger);
        if (!bigIntegerZzc.multiply(bigIntegerZzb3).mod(bigIntegerSubtract.divide(bigIntegerSubtract.gcd(bigIntegerSubtract2)).multiply(bigIntegerSubtract2)).equals(bigInteger)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("D is invalid.");
            return null;
        }
        if (!bigIntegerZzc.multiply(bigIntegerZzb4).mod(bigIntegerSubtract).equals(bigInteger)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("dP is invalid.");
            return null;
        }
        if (!bigIntegerZzc.multiply(bigIntegerZzb5).mod(bigIntegerSubtract2).equals(bigInteger)) {
            zzsj$$ExternalSyntheticBUOutline1.m456m("dQ is invalid.");
            return null;
        }
        if (bigIntegerZzb2.multiply(bigIntegerZzb6).mod(bigIntegerZzb).equals(bigInteger)) {
            return new zzzx(this.zza, this.zzc, this.zzd, this.zzb, this.zze, this.zzf, this.zzg, null);
        }
        zzsj$$ExternalSyntheticBUOutline1.m456m("qInv is invalid.");
        return null;
    }
}
