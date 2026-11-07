package com.google.android.gms.internal.clearcut;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.UByte;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzk {
    private static int zza(byte[] bArr, int i) {
        return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (bArr[i] & UByte.MAX_VALUE) | ((bArr[i + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i + 2] & UByte.MAX_VALUE) << 16);
    }

    private static long zza(long j, long j2, long j3) {
        long j4 = (j ^ j2) * j3;
        long j5 = ((j4 ^ (j4 >>> 47)) ^ j2) * j3;
        return (j5 ^ (j5 >>> 47)) * j3;
    }

    public static long zza(byte[] bArr) {
        byte[] bArr2 = bArr;
        int length = bArr2.length;
        if (length < 0 || length > bArr2.length) {
            StringBuilder sb = new StringBuilder(67);
            sb.append("Out of bound index with offput: 0 and length: ");
            sb.append(length);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        char c2 = '/';
        char c3 = 0;
        if (length <= 32) {
            if (length > 16) {
                long j = ((long) (length << 1)) - 7286425919675154353L;
                long jZzb = zzb(bArr2, 0) * (-5435081209227447693L);
                long jZzb2 = zzb(bArr2, 8);
                long jZzb3 = zzb(bArr2, length - 8) * j;
                return zza(Long.rotateRight(jZzb + jZzb2, 43) + Long.rotateRight(jZzb3, 30) + (zzb(bArr2, length - 16) * (-7286425919675154353L)), jZzb + Long.rotateRight(jZzb2 - 7286425919675154353L, 18) + jZzb3, j);
            }
            if (length >= 8) {
                long j2 = ((long) (length << 1)) - 7286425919675154353L;
                long jZzb4 = zzb(bArr2, 0) - 7286425919675154353L;
                long jZzb5 = zzb(bArr2, length - 8);
                return zza((Long.rotateRight(jZzb5, 37) * j2) + jZzb4, (Long.rotateRight(jZzb4, 25) + jZzb5) * j2, j2);
            }
            if (length >= 4) {
                return zza(((long) length) + ((((long) zza(bArr2, 0)) & 4294967295L) << 3), ((long) zza(bArr2, length - 4)) & 4294967295L, ((long) (length << 1)) - 7286425919675154353L);
            }
            if (length <= 0) {
                return -7286425919675154353L;
            }
            byte b2 = bArr2[0];
            byte b3 = bArr2[length >> 1];
            long j3 = (((long) (length + ((bArr2[length - 1] & UByte.MAX_VALUE) << 2))) * (-4348849565147123417L)) ^ (((long) ((b2 & UByte.MAX_VALUE) + ((b3 & UByte.MAX_VALUE) << 8))) * (-7286425919675154353L));
            return (j3 ^ (j3 >>> 47)) * (-7286425919675154353L);
        }
        char c4 = '@';
        if (length <= 64) {
            long j4 = ((long) (length << 1)) - 7286425919675154353L;
            long jZzb6 = zzb(bArr2, 0) * (-7286425919675154353L);
            long jZzb7 = zzb(bArr2, 8);
            long jZzb8 = zzb(bArr2, length - 8) * j4;
            long jRotateRight = Long.rotateRight(jZzb6 + jZzb7, 43) + Long.rotateRight(jZzb8, 30) + (zzb(bArr2, length - 16) * (-7286425919675154353L));
            long jZza = zza(jRotateRight, Long.rotateRight(jZzb7 - 7286425919675154353L, 18) + jZzb6 + jZzb8, j4);
            long jZzb9 = zzb(bArr2, 16) * j4;
            long jZzb10 = zzb(bArr2, 24);
            long jZzb11 = (jRotateRight + zzb(bArr2, length - 32)) * j4;
            return zza(Long.rotateRight(jZzb9 + jZzb10, 43) + Long.rotateRight(jZzb11, 30) + ((jZza + zzb(bArr2, length - 24)) * j4), jZzb9 + Long.rotateRight(jZzb10 + jZzb6, 18) + jZzb11, j4);
        }
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long jZzb12 = zzb(bArr2, 0) + 95310865018149119L;
        int i = length - 1;
        int i2 = (i / 64) << 6;
        int i3 = i & 63;
        int i4 = i2 + i3;
        int i5 = i4 - 63;
        long j5 = 2480279821605975764L;
        long j6 = 1390051526045402406L;
        int i6 = i3;
        int i7 = 0;
        while (true) {
            char c5 = c3;
            long jRotateRight2 = Long.rotateRight(jZzb12 + j5 + jArr[c3] + zzb(bArr2, i7 + 8), 37) * (-5435081209227447693L);
            long jRotateRight3 = Long.rotateRight(j5 + jArr[1] + zzb(bArr2, i7 + 48), 42) * (-5435081209227447693L);
            long j7 = jRotateRight2 ^ jArr2[1];
            char c6 = c4;
            long jZzb13 = jRotateRight3 + jArr[c5] + zzb(bArr2, i7 + 40);
            long jRotateRight4 = Long.rotateRight(j6 + jArr2[c5], 33) * (-5435081209227447693L);
            char c7 = c2;
            int i8 = i6;
            zza(bArr2, i7, jArr[1] * (-5435081209227447693L), j7 + jArr2[c5], jArr);
            int i9 = i7;
            long[] jArr3 = jArr;
            zza(bArr2, i9 + 32, jRotateRight4 + jArr2[1], jZzb13 + zzb(bArr2, i9 + 16), jArr2);
            i7 = i9 + 64;
            if (i7 == i2) {
                long j8 = ((j7 & 255) << 1) - 5435081209227447693L;
                long j9 = jArr2[c5] + ((long) i8);
                jArr2[c5] = j9;
                long j10 = jArr3[c5] + j9;
                jArr3[c5] = j10;
                jArr2[c5] = jArr2[c5] + j10;
                long jRotateRight5 = Long.rotateRight(jRotateRight4 + jZzb13 + jArr3[c5] + zzb(bArr2, i4 - 55), 37) * j8;
                long jRotateRight6 = Long.rotateRight(jZzb13 + jArr3[1] + zzb(bArr2, i4 - 15), 42) * j8;
                long j11 = jRotateRight5 ^ (jArr2[1] * 9);
                long jZzb14 = jRotateRight6 + (jArr3[c5] * 9) + zzb(bArr2, i4 - 23);
                long jRotateRight7 = Long.rotateRight(j7 + jArr2[c5], 33) * j8;
                zza(bArr2, i5, jArr3[1] * j8, jArr2[c5] + j11, jArr3);
                zza(bArr2, i4 - 31, jArr2[1] + jRotateRight7, zzb(bArr2, i4 - 47) + jZzb14, jArr2);
                return zza(zza(jArr3[c5], jArr2[c5], j8) + (((jZzb14 >>> c7) ^ jZzb14) * (-4348849565147123417L)) + j11, zza(jArr3[1], jArr2[1], j8) + jRotateRight7, j8);
            }
            bArr2 = bArr;
            jZzb12 = jRotateRight4;
            jArr = jArr3;
            c3 = c5;
            j6 = j7;
            c4 = c6;
            j5 = jZzb13;
            i6 = i8;
            c2 = c7;
        }
    }

    private static void zza(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long jZzb = zzb(bArr, i);
        long jZzb2 = zzb(bArr, i + 8);
        long jZzb3 = zzb(bArr, i + 16);
        long jZzb4 = zzb(bArr, i + 24);
        long j3 = j + jZzb;
        long j4 = jZzb2 + j3 + jZzb3;
        long jRotateRight = Long.rotateRight(j2 + j3 + jZzb4, 21) + Long.rotateRight(j4, 44);
        jArr[0] = j4 + jZzb4;
        jArr[1] = jRotateRight + j3;
    }

    private static long zzb(byte[] bArr, int i) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i, 8);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        return byteBufferWrap.getLong();
    }
}
