package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaai {
    private zzaal zza = null;
    private zzadz zzb = null;
    private zzadz zzc = null;
    private zzadz zzd = null;
    private zzadz zze = null;
    private zzadz zzf = null;
    private zzadz zzg = null;

    public /* synthetic */ zzaai(byte[] bArr) {
    }

    public final zzaai zza(zzaal zzaalVar) {
        this.zza = zzaalVar;
        return this;
    }

    public final zzaai zzb(zzadz zzadzVar, zzadz zzadzVar2) {
        this.zzc = zzadzVar;
        this.zzd = zzadzVar2;
        return this;
    }

    public final zzaai zzc(zzadz zzadzVar) {
        this.zzb = zzadzVar;
        return this;
    }

    public final zzaai zzd(zzadz zzadzVar, zzadz zzadzVar2) {
        this.zze = zzadzVar;
        this.zzf = zzadzVar2;
        return this;
    }

    public final zzaai zze(zzadz zzadzVar) {
        this.zzg = zzadzVar;
        return this;
    }

    public final zzaaj zzf() throws GeneralSecurityException {
        zzaal zzaalVar = this.zza;
        if (zzaalVar == null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Cannot build without a RSA SSA PKCS1 public key");
            return null;
        }
        if (this.zzc == null || this.zzd == null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Cannot build without prime factors");
            return null;
        }
        if (this.zzb == null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Cannot build without private exponent");
            return null;
        }
        if (this.zze == null || this.zzf == null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Cannot build without prime exponents");
            return null;
        }
        if (this.zzg == null) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Cannot build without CRT coefficient");
            return null;
        }
        BigInteger bigIntegerZzc = zzaalVar.zzf().zzc();
        BigInteger bigIntegerZzd = this.zza.zzd();
        BigInteger bigIntegerZzb = this.zzc.zzb(zzsd.zza());
        BigInteger bigIntegerZzb2 = this.zzd.zzb(zzsd.zza());
        BigInteger bigIntegerZzb3 = this.zzb.zzb(zzsd.zza());
        BigInteger bigIntegerZzb4 = this.zze.zzb(zzsd.zza());
        BigInteger bigIntegerZzb5 = this.zzf.zzb(zzsd.zza());
        BigInteger bigIntegerZzb6 = this.zzg.zzb(zzsd.zza());
        if (!bigIntegerZzb.isProbablePrime(10)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("p is not a prime");
            return null;
        }
        if (!bigIntegerZzb2.isProbablePrime(10)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("q is not a prime");
            return null;
        }
        if (!bigIntegerZzb.multiply(bigIntegerZzb2).equals(bigIntegerZzd)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Prime p times prime q is not equal to the public key's modulus");
            return null;
        }
        BigInteger bigInteger = BigInteger.ONE;
        BigInteger bigIntegerSubtract = bigIntegerZzb.subtract(bigInteger);
        BigInteger bigIntegerSubtract2 = bigIntegerZzb2.subtract(bigInteger);
        if (!bigIntegerZzc.multiply(bigIntegerZzb3).mod(bigIntegerSubtract.divide(bigIntegerSubtract.gcd(bigIntegerSubtract2)).multiply(bigIntegerSubtract2)).equals(bigInteger)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("D is invalid.");
            return null;
        }
        if (!bigIntegerZzc.multiply(bigIntegerZzb4).mod(bigIntegerSubtract).equals(bigInteger)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("dP is invalid.");
            return null;
        }
        if (!bigIntegerZzc.multiply(bigIntegerZzb5).mod(bigIntegerSubtract2).equals(bigInteger)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("dQ is invalid.");
            return null;
        }
        if (bigIntegerZzb2.multiply(bigIntegerZzb6).mod(bigIntegerZzb).equals(bigInteger)) {
            return new zzaaj(this.zza, this.zzc, this.zzd, this.zzb, this.zze, this.zzf, this.zzg, null);
        }
        zzsj$$ExternalSyntheticBUOutline1.m480m("qInv is invalid.");
        return null;
    }
}
