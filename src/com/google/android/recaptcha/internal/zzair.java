package com.google.android.recaptcha.internal;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.UByte;
import okio.Segment$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzair {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        Charset charset = StandardCharsets.UTF_16;
    }

    public static int zza(int i, int i2) {
        if (i % 2 != 0) {
            return (i | i2) - (i & i2);
        }
        return ((~i) & i2) | ((~i2) & i);
    }

    public static byte[] zzb(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = bArr2;
        byte[] bArr5 = bArr3;
        int[] iArr = {511133343, 1277647508, 107287496, 338123662};
        if (bArr4.length != 32) {
            Segment$$ExternalSyntheticBUOutline0.m972m();
            return null;
        }
        char c2 = '\f';
        if (bArr5.length != 12) {
            Segment$$ExternalSyntheticBUOutline0.m972m();
            return null;
        }
        int i = 16;
        int[] iArr2 = new int[16];
        for (int i2 = 0; i2 < 4; i2++) {
            iArr2[i2] = zza(iArr[i2], 2131181306);
        }
        for (int i3 = 4; i3 < 12; i3++) {
            iArr2[i3] = zze(bArr4, (i3 - 4) * 4);
        }
        iArr2[12] = 1;
        for (int i4 = 13; i4 < 16; i4++) {
            iArr2[i4] = zze(bArr5, (i4 - 13) * 4);
        }
        int[] iArr3 = new int[16];
        System.arraycopy(iArr2, 0, iArr3, 0, 16);
        int length = bArr.length;
        byte[] bArr6 = new byte[length];
        int i5 = 1;
        int i6 = 0;
        int i7 = length;
        while (i7 > 0) {
            System.arraycopy(iArr3, 0, iArr2, 0, i);
            iArr2[c2] = i5;
            int i8 = 0;
            while (i8 < 10) {
                zzd(0, 4, 8, 12, iArr, bArr4, bArr5, i5, iArr2, iArr3);
                bArr4 = bArr2;
                bArr5 = bArr3;
                zzd(1, 5, 9, 13, iArr, bArr4, bArr5, i5, iArr2, iArr3);
                zzd(2, 6, 10, 14, iArr, bArr4, bArr5, i5, iArr2, iArr3);
                zzd(3, 7, 11, 15, iArr, bArr4, bArr5, i5, iArr2, iArr3);
                zzd(0, 5, 10, 15, iArr, bArr4, bArr5, i5, iArr2, iArr3);
                zzd(1, 6, 11, 12, iArr, bArr4, bArr5, i5, iArr2, iArr3);
                zzd(2, 7, 8, 13, iArr, bArr4, bArr5, i5, iArr2, iArr3);
                zzd(3, 4, 9, 14, iArr, bArr4, bArr5, i5, iArr2, iArr3);
                i8++;
                i7 = i7;
            }
            int i9 = i7;
            byte[] bArr7 = new byte[64];
            int i10 = 0;
            while (i10 < i) {
                int i11 = iArr2[i10];
                int i12 = i10 * 4;
                bArr7[i12] = (byte) (i11 & 255);
                bArr7[i12 + 1] = (byte) ((i11 >> 8) & 255);
                bArr7[i12 + 2] = (byte) ((i11 >> 16) & 255);
                bArr7[i12 + 3] = (byte) ((i11 >> 24) & 255);
                i10++;
                i = 16;
            }
            for (int i13 = 0; i13 < Math.min(64, i9); i13++) {
                int i14 = i6 + i13;
                bArr6[i14] = (byte) zza(bArr7[i13], bArr[i14]);
            }
            i5++;
            i7 = i9 - 64;
            i6 += 64;
            bArr4 = bArr2;
            c2 = '\f';
            i = 16;
        }
        byte[] bArr8 = new byte[length + 12];
        System.arraycopy(bArr5, 0, bArr8, 0, 12);
        System.arraycopy(bArr6, 0, bArr8, 12, length);
        return bArr8;
    }

    public static final void zzc(int i, int i2, int i3, int i4, int[] iArr, byte[] bArr, byte[] bArr2, int i5, int[] iArr2, int[] iArr3) {
        int i6 = iArr2[i] + iArr2[i2];
        iArr2[i] = i6;
        int iZza = zza(iArr2[i3], i6);
        iArr2[i3] = (iZza << i4) | (iZza >>> (32 - i4));
    }

    public static final void zzd(int i, int i2, int i3, int i4, int[] iArr, byte[] bArr, byte[] bArr2, int i5, int[] iArr2, int[] iArr3) {
        zzc(i, i2, i4, 16, iArr, bArr, bArr2, i5, iArr2, iArr3);
        zzc(i3, i4, i2, 12, iArr, bArr, bArr2, i5, iArr2, iArr3);
        zzc(i, i2, i4, 8, iArr, bArr, bArr2, i5, iArr2, iArr3);
        zzc(i3, i4, i2, 7, iArr, bArr, bArr2, i5, iArr2, iArr3);
    }

    private static final int zze(byte[] bArr, int i) {
        int i2 = bArr[i] & UByte.MAX_VALUE;
        int i3 = bArr[i + 1] & UByte.MAX_VALUE;
        int i4 = bArr[i + 2] & UByte.MAX_VALUE;
        return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }
}
