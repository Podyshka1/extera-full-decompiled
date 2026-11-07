package com.google.android.recaptcha.internal;

import java.lang.reflect.Array;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
abstract class zztr {
    static final long[] zza;
    static final long[] zzb;
    static final long[] zzc;
    static final zztk[][] zzd;
    static final zztk[] zze;
    private static final BigInteger zzf;
    private static final BigInteger zzg;
    private static final BigInteger zzh;
    private static final BigInteger zzi;

    static {
        BigInteger bigIntegerSubtract = BigInteger.valueOf(2L).pow(255).subtract(BigInteger.valueOf(19L));
        zzf = bigIntegerSubtract;
        BigInteger bigIntegerMod = BigInteger.valueOf(-121665L).multiply(BigInteger.valueOf(121666L).modInverse(bigIntegerSubtract)).mod(bigIntegerSubtract);
        zzg = bigIntegerMod;
        BigInteger bigIntegerMod2 = BigInteger.valueOf(2L).multiply(bigIntegerMod).mod(bigIntegerSubtract);
        zzh = bigIntegerMod2;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(2L);
        BigInteger bigInteger = BigInteger.ONE;
        BigInteger bigIntegerModPow = bigIntegerValueOf.modPow(bigIntegerSubtract.subtract(bigInteger).divide(BigInteger.valueOf(4L)), bigIntegerSubtract);
        zzi = bigIntegerModPow;
        zztq zztqVar = new zztq(null);
        zztqVar.zzd(BigInteger.valueOf(4L).multiply(BigInteger.valueOf(5L).modInverse(bigIntegerSubtract)).mod(bigIntegerSubtract));
        BigInteger bigIntegerZzc = zztqVar.zzc();
        BigInteger bigIntegerMultiply = bigIntegerZzc.pow(2).subtract(bigInteger).multiply(bigIntegerMod.multiply(bigIntegerZzc.pow(2)).add(bigInteger).modInverse(bigIntegerSubtract));
        BigInteger bigIntegerModPow2 = bigIntegerMultiply.modPow(bigIntegerSubtract.add(BigInteger.valueOf(3L)).divide(BigInteger.valueOf(8L)), bigIntegerSubtract);
        if (!bigIntegerModPow2.pow(2).subtract(bigIntegerMultiply).mod(bigIntegerSubtract).equals(BigInteger.ZERO)) {
            bigIntegerModPow2 = bigIntegerModPow2.multiply(bigIntegerModPow).mod(bigIntegerSubtract);
        }
        if (bigIntegerModPow2.testBit(0)) {
            bigIntegerModPow2 = bigIntegerSubtract.subtract(bigIntegerModPow2);
        }
        zztqVar.zzb(bigIntegerModPow2);
        zza = zztw.zzg(zzb(bigIntegerMod));
        zzb = zztw.zzg(zzb(bigIntegerMod2));
        zzc = zztw.zzg(zzb(bigIntegerModPow));
        zzd = (zztk[][]) Array.newInstance((Class<?>) zztk.class, 32, 8);
        zztq zztqVarZza = zztqVar;
        for (int i = 0; i < 32; i++) {
            zztq zztqVarZza2 = zztqVarZza;
            for (int i2 = 0; i2 < 8; i2++) {
                zzd[i][i2] = zzc(zztqVarZza2);
                zztqVarZza2 = zza(zztqVarZza2, zztqVarZza);
            }
            for (int i3 = 0; i3 < 8; i3++) {
                zztqVarZza = zza(zztqVarZza, zztqVarZza);
            }
        }
        zztq zztqVarZza3 = zza(zztqVar, zztqVar);
        zze = new zztk[8];
        for (int i4 = 0; i4 < 8; i4++) {
            zze[i4] = zzc(zztqVar);
            zztqVar = zza(zztqVar, zztqVarZza3);
        }
    }

    private static zztq zza(zztq zztqVar, zztq zztqVar2) {
        zztq zztqVar3 = new zztq(null);
        BigInteger bigIntegerMultiply = zzg.multiply(zztqVar.zza().multiply(zztqVar2.zza()).multiply(zztqVar.zzc()).multiply(zztqVar2.zzc()));
        BigInteger bigInteger = zzf;
        BigInteger bigIntegerMod = bigIntegerMultiply.mod(bigInteger);
        BigInteger bigIntegerAdd = zztqVar.zza().multiply(zztqVar2.zzc()).add(zztqVar2.zza().multiply(zztqVar.zzc()));
        BigInteger bigInteger2 = BigInteger.ONE;
        zztqVar3.zzb(bigIntegerAdd.multiply(bigInteger2.add(bigIntegerMod).modInverse(bigInteger)).mod(bigInteger));
        zztqVar3.zzd(zztqVar.zzc().multiply(zztqVar2.zzc()).add(zztqVar.zza().multiply(zztqVar2.zza())).multiply(bigInteger2.subtract(bigIntegerMod).modInverse(bigInteger)).mod(bigInteger));
        return zztqVar3;
    }

    private static byte[] zzb(BigInteger bigInteger) {
        byte[] bArr = new byte[32];
        byte[] byteArray = bigInteger.toByteArray();
        int length = byteArray.length;
        System.arraycopy(byteArray, 0, bArr, 32 - length, length);
        for (int i = 0; i < 16; i++) {
            byte b2 = bArr[i];
            int i2 = 31 - i;
            bArr[i] = bArr[i2];
            bArr[i2] = b2;
        }
        return bArr;
    }

    private static zztk zzc(zztq zztqVar) {
        BigInteger bigIntegerAdd = zztqVar.zzc().add(zztqVar.zza());
        BigInteger bigInteger = zzf;
        return new zztk(zztw.zzg(zzb(bigIntegerAdd.mod(bigInteger))), zztw.zzg(zzb(zztqVar.zzc().subtract(zztqVar.zza()).mod(bigInteger))), zztw.zzg(zzb(zzh.multiply(zztqVar.zza()).multiply(zztqVar.zzc()).mod(bigInteger))));
    }
}
