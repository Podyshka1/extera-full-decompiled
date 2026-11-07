package com.google.android.recaptcha.internal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
final class zztn {
    final long[] zza;
    final long[] zzb;
    final long[] zzc;

    public zztn() {
        this(new long[10], new long[10], new long[10]);
    }

    public zztn(long[] jArr, long[] jArr2, long[] jArr3) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = jArr3;
    }

    public static zztn zza(zztn zztnVar, zztm zztmVar) {
        zztn zztnVar2 = zztmVar.zza;
        long[] jArr = zztnVar.zza;
        long[] jArr2 = zztnVar2.zza;
        long[] jArr3 = zztmVar.zzb;
        zztw.zze(jArr, jArr2, jArr3);
        long[] jArr4 = zztnVar.zzb;
        long[] jArr5 = zztnVar2.zzb;
        long[] jArr6 = zztnVar2.zzc;
        zztw.zze(jArr4, jArr5, jArr6);
        zztw.zze(zztnVar.zzc, jArr6, jArr3);
        return zztnVar;
    }

    public final byte[] zzb() {
        long[] jArr = new long[10];
        long[] jArr2 = new long[10];
        long[] jArr3 = new long[10];
        int i = zztw.$r8$clinit;
        long[] jArr4 = new long[10];
        long[] jArr5 = new long[10];
        long[] jArr6 = new long[10];
        long[] jArr7 = new long[10];
        long[] jArr8 = new long[10];
        long[] jArr9 = new long[10];
        long[] jArr10 = new long[10];
        long[] jArr11 = new long[10];
        long[] jArr12 = new long[10];
        long[] jArr13 = new long[10];
        long[] jArr14 = this.zzc;
        zztw.zzf(jArr4, jArr14);
        zztw.zzf(jArr13, jArr4);
        zztw.zzf(jArr12, jArr13);
        zztw.zze(jArr5, jArr12, jArr14);
        zztw.zze(jArr6, jArr5, jArr4);
        zztw.zzf(jArr12, jArr6);
        zztw.zze(jArr7, jArr12, jArr5);
        zztw.zzf(jArr12, jArr7);
        zztw.zzf(jArr13, jArr12);
        zztw.zzf(jArr12, jArr13);
        zztw.zzf(jArr13, jArr12);
        zztw.zzf(jArr12, jArr13);
        zztw.zze(jArr8, jArr12, jArr7);
        zztw.zzf(jArr12, jArr8);
        zztw.zzf(jArr13, jArr12);
        for (int i2 = 2; i2 < 10; i2 += 2) {
            zztw.zzf(jArr12, jArr13);
            zztw.zzf(jArr13, jArr12);
        }
        zztw.zze(jArr9, jArr13, jArr8);
        zztw.zzf(jArr12, jArr9);
        zztw.zzf(jArr13, jArr12);
        for (int i3 = 2; i3 < 20; i3 += 2) {
            zztw.zzf(jArr12, jArr13);
            zztw.zzf(jArr13, jArr12);
        }
        zztw.zze(jArr12, jArr13, jArr9);
        zztw.zzf(jArr13, jArr12);
        zztw.zzf(jArr12, jArr13);
        for (int i4 = 2; i4 < 10; i4 += 2) {
            zztw.zzf(jArr13, jArr12);
            zztw.zzf(jArr12, jArr13);
        }
        zztw.zze(jArr10, jArr12, jArr8);
        zztw.zzf(jArr12, jArr10);
        zztw.zzf(jArr13, jArr12);
        for (int i5 = 2; i5 < 50; i5 += 2) {
            zztw.zzf(jArr12, jArr13);
            zztw.zzf(jArr13, jArr12);
        }
        zztw.zze(jArr11, jArr13, jArr10);
        zztw.zzf(jArr13, jArr11);
        zztw.zzf(jArr12, jArr13);
        for (int i6 = 2; i6 < 100; i6 += 2) {
            zztw.zzf(jArr13, jArr12);
            zztw.zzf(jArr12, jArr13);
        }
        zztw.zze(jArr13, jArr12, jArr11);
        zztw.zzf(jArr12, jArr13);
        zztw.zzf(jArr13, jArr12);
        for (int i7 = 2; i7 < 50; i7 += 2) {
            zztw.zzf(jArr12, jArr13);
            zztw.zzf(jArr13, jArr12);
        }
        zztw.zze(jArr12, jArr13, jArr10);
        zztw.zzf(jArr13, jArr12);
        zztw.zzf(jArr12, jArr13);
        zztw.zzf(jArr13, jArr12);
        zztw.zzf(jArr12, jArr13);
        zztw.zzf(jArr13, jArr12);
        zztw.zze(jArr, jArr13, jArr6);
        zztw.zze(jArr2, this.zza, jArr);
        zztw.zze(jArr3, this.zzb, jArr);
        byte[] bArrZzh = zztw.zzh(jArr3);
        bArrZzh[31] = (byte) (bArrZzh[31] ^ (zztp.zzf(jArr2) << 7));
        return bArrZzh;
    }

    public zztn(zztm zztmVar) {
        this();
        zza(this, zztmVar);
    }

    public zztn(zztn zztnVar) {
        this.zza = Arrays.copyOf(zztnVar.zza, 10);
        this.zzb = Arrays.copyOf(zztnVar.zzb, 10);
        this.zzc = Arrays.copyOf(zztnVar.zzc, 10);
    }
}
