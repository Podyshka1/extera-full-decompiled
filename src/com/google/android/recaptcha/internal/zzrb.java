package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
final class zzrb extends zzra {
    static final zzrf zza = new zzrb();

    public static long zzd(long j, long j2) {
        long j3 = (j2 ^ j) * (-4132994306676758123L);
        long j4 = (j ^ (j3 ^ (j3 >>> 47))) * (-4132994306676758123L);
        return (j4 ^ (j4 >>> 47)) * (-4132994306676758123L);
    }

    private static void zze(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long jZza = j + zzrn.zza(bArr, i);
        long jZza2 = zzrn.zza(bArr, i + 8);
        long jZza3 = zzrn.zza(bArr, i + 16);
        long jZza4 = zzrn.zza(bArr, i + 24);
        long j3 = jZza2 + jZza + jZza3;
        long jRotateRight = Long.rotateRight(j2 + jZza + jZza4, 51) + Long.rotateRight(j3, 23);
        jArr[0] = j3 + jZza4;
        jArr[1] = jRotateRight + jZza;
    }

    public final String toString() {
        return "Hashing.fingerprint2011()";
    }

    @Override // com.google.android.recaptcha.internal.zzqx
    public final zzre zzb(byte[] bArr, int i, int i2) {
        long j;
        long j2;
        long j3;
        long jRotateRight;
        long[] jArr;
        long jZzd;
        int i3;
        long j4;
        byte[] bArr2 = bArr;
        zzoq.zzg(0, i2, bArr2.length);
        if (i2 <= 32) {
            long j5 = -4132994306676758123L;
            long j6 = (((long) i2) * (-4132994306676758123L)) ^ (-1397348546323613475L);
            int i4 = 0;
            while (true) {
                i3 = i2 & (-8);
                if (i4 >= i3) {
                    break;
                }
                long jZza = zzrn.zza(bArr2, i4) * (-4132994306676758123L);
                j6 = (j6 ^ ((jZza ^ (jZza >>> 47)) * (-4132994306676758123L))) * (-4132994306676758123L);
                i4 += 8;
            }
            int i5 = i2 & 7;
            if (i5 != 0) {
                int i6 = zzrn.$r8$clinit;
                int iMin = Math.min(i5, 8);
                int i7 = 0;
                long j7 = 0;
                while (i7 < iMin) {
                    j7 |= (((long) bArr2[i3 + i7]) & 255) << (i7 * 8);
                    i7++;
                    j5 = j5;
                }
                j4 = j5;
                j6 = (j6 ^ j7) * j4;
            } else {
                j4 = -4132994306676758123L;
            }
            long j8 = (j6 ^ (j6 >>> 47)) * j4;
            jZzd = j8 ^ (j8 >>> 47);
            j = -6505348102511208375L;
            j2 = 0;
        } else if (i2 <= 64) {
            long jZza2 = zzrn.zza(bArr2, 24);
            int i8 = i2 - 16;
            j2 = 0;
            long jZza3 = zzrn.zza(bArr2, 0) + ((((long) i2) + zzrn.zza(bArr2, i8)) * (-6505348102511208375L));
            long jRotateRight2 = Long.rotateRight(jZza3 + jZza2, 52);
            long jRotateRight3 = Long.rotateRight(jZza3, 37);
            long jZza4 = jZza3 + zzrn.zza(bArr2, 8);
            j = -6505348102511208375L;
            long jRotateRight4 = jRotateRight3 + Long.rotateRight(jZza4, 7);
            long jZza5 = jZza4 + zzrn.zza(bArr2, 16);
            long j9 = jZza2 + jZza5;
            long jRotateRight5 = jRotateRight2 + Long.rotateRight(jZza5, 31);
            long jZza6 = zzrn.zza(bArr2, 16) + zzrn.zza(bArr2, i2 - 32);
            long jZza7 = zzrn.zza(bArr2, i2 - 8);
            long jRotateRight6 = Long.rotateRight(jZza6 + jZza7, 52);
            long jRotateRight7 = Long.rotateRight(jZza6, 37);
            long jZza8 = jZza6 + zzrn.zza(bArr2, i2 - 24);
            long jRotateRight8 = jRotateRight7 + Long.rotateRight(jZza8, 7);
            long jZza9 = jZza8 + zzrn.zza(bArr2, i8);
            long j10 = jZza9 + jZza7;
            long jRotateRight9 = jRotateRight6 + Long.rotateRight(jZza9, 31);
            long j11 = jRotateRight5 + jRotateRight4;
            long j12 = ((j9 + jRotateRight9 + jRotateRight8) * (-4288712594273399085L)) + ((j10 + j11) * (-6505348102511208375L));
            long j13 = ((j12 ^ (j12 >>> 47)) * (-6505348102511208375L)) + j11;
            jZzd = (j13 ^ (j13 >>> 47)) * (-4288712594273399085L);
        } else {
            j = -6505348102511208375L;
            j2 = 0;
            long jZza10 = zzrn.zza(bArr2, 0);
            long jZza11 = zzrn.zza(bArr2, i2 - 16) ^ (-8261664234251669945L);
            long jZza12 = zzrn.zza(bArr2, i2 - 56) ^ (-6505348102511208375L);
            long j14 = i2;
            long[] jArr2 = new long[2];
            long[] jArr3 = new long[2];
            zze(bArr2, i2 - 64, j14, jZza11, jArr2);
            bArr2 = bArr;
            zze(bArr2, i2 - 32, j14 * (-8261664234251669945L), -6505348102511208375L, jArr3);
            long j15 = jArr2[1];
            long j16 = jZza12 + ((j15 ^ (j15 >>> 47)) * (-8261664234251669945L));
            long jRotateRight10 = Long.rotateRight(j16 + jZza10, 39) * (-8261664234251669945L);
            int i9 = (i2 - 1) & (-64);
            char c2 = 0;
            long jRotateRight11 = Long.rotateRight(jZza11, 33) * (-8261664234251669945L);
            long j17 = jRotateRight10;
            int i10 = 0;
            while (true) {
                long jRotateRight12 = Long.rotateRight(j17 + jRotateRight11 + jArr2[c2] + zzrn.zza(bArr2, i10 + 16), 37) * (-8261664234251669945L);
                long jRotateRight13 = Long.rotateRight(jRotateRight11 + jArr2[1] + zzrn.zza(bArr2, i10 + 48), 42) * (-8261664234251669945L);
                j3 = jArr3[1] ^ jRotateRight12;
                long j18 = jRotateRight13 ^ jArr2[0];
                jRotateRight = Long.rotateRight(j16 ^ jArr3[0], 33);
                zze(bArr2, i10, jArr2[1] * (-8261664234251669945L), jArr3[0] + j3, jArr2);
                int i11 = i10;
                bArr2 = bArr;
                jArr = jArr3;
                jRotateRight11 = j18;
                zze(bArr2, i11 + 32, jRotateRight + jArr3[1], jRotateRight11, jArr);
                i10 = i11 + 64;
                i9 -= 64;
                if (i9 == 0) {
                    break;
                }
                jArr3 = jArr;
                j17 = jRotateRight;
                c2 = 0;
                j16 = j3;
            }
            jZzd = zzd(zzd(jArr2[0], jArr[0]) + ((jRotateRight11 ^ (jRotateRight11 >>> 47)) * (-8261664234251669945L)) + j3, zzd(jArr2[1], jArr[1]) + jRotateRight);
        }
        long jZzd2 = zzd(jZzd + (i2 >= 9 ? zzrn.zza(bArr2, i2 - 8) : j), i2 >= 8 ? zzrn.zza(bArr2, 0) : j);
        if (jZzd2 == j2) {
            jZzd2 -= 2;
        } else if (jZzd2 == 1) {
            jZzd2 = 1;
            jZzd2 -= 2;
        }
        int i12 = zzre.$r8$clinit;
        return new zzrd(jZzd2);
    }
}
