package com.google.android.recaptcha.internal;

import android.util.Base64;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes5.dex */
public final class zzmh {
    protected static final Charset zza = StandardCharsets.UTF_16;

    protected static int zza(int i, int i2) {
        if (i % 2 != 0) {
            return (i | i2) - (i & i2);
        }
        return ((~i) & i2) | ((~i2) & i);
    }

    public static String zzb(String str, byte[] bArr, zzmi zzmiVar) {
        byte[] bArr2 = bArr;
        int i = 0;
        byte[] bArrDecode = Base64.decode(str, 0);
        byte[] bArr3 = new byte[12];
        int length = bArrDecode.length - 12;
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArrDecode, 0, bArr3, 0, 12);
        System.arraycopy(bArrDecode, 12, bArr4, 0, length);
        int[] iArr = {511133343, 1277647508, 107287496, 338123662};
        if (bArr2.length != 32) {
            throw new IllegalArgumentException();
        }
        int[] iArr2 = new int[16];
        for (int i2 = 0; i2 < 4; i2++) {
            iArr2[i2] = zza(iArr[i2], 2131181306);
        }
        for (int i3 = 4; i3 < 12; i3++) {
            iArr2[i3] = zze(bArr2, (i3 - 4) * 4);
        }
        iArr2[12] = 1;
        for (int i4 = 13; i4 < 16; i4++) {
            iArr2[i4] = zze(bArr3, (i4 - 13) * 4);
        }
        int[] iArr3 = new int[16];
        System.arraycopy(iArr2, 0, iArr3, 0, 16);
        byte[] bArr5 = new byte[length];
        int i5 = 1;
        int i6 = length;
        int i7 = 0;
        while (i6 > 0) {
            System.arraycopy(iArr3, i, iArr2, i, 16);
            iArr2[12] = i5;
            for (int i8 = i; i8 < 10; i8++) {
                zzc(0, 4, 8, 12, iArr, bArr2, bArr3, i5, iArr2, iArr3);
                bArr2 = bArr;
                zzc(1, 5, 9, 13, iArr, bArr2, bArr3, i5, iArr2, iArr3);
                zzc(2, 6, 10, 14, iArr, bArr2, bArr3, i5, iArr2, iArr3);
                zzc(3, 7, 11, 15, iArr, bArr2, bArr3, i5, iArr2, iArr3);
                zzc(0, 5, 10, 15, iArr, bArr2, bArr3, i5, iArr2, iArr3);
                zzc(1, 6, 11, 12, iArr, bArr2, bArr3, i5, iArr2, iArr3);
                zzc(2, 7, 8, 13, iArr, bArr2, bArr3, i5, iArr2, iArr3);
                zzc(3, 4, 9, 14, iArr, bArr2, bArr3, i5, iArr2, iArr3);
            }
            byte[] bArr6 = new byte[64];
            for (int i9 = i; i9 < 16; i9++) {
                int i10 = iArr2[i9];
                int i11 = i9 * 4;
                bArr6[i11] = (byte) (i10 & 255);
                bArr6[i11 + 1] = (byte) ((i10 >> 8) & 255);
                bArr6[i11 + 2] = (byte) ((i10 >> 16) & 255);
                bArr6[i11 + 3] = (byte) ((i10 >> 24) & 255);
            }
            for (int i12 = 0; i12 < Math.min(64, i6); i12++) {
                int i13 = i7 + i12;
                bArr5[i13] = (byte) zza(bArr6[i12], bArr4[i13]);
            }
            i5++;
            i6 -= 64;
            i7 += 64;
            bArr2 = bArr;
            i = 0;
        }
        return new String(bArr5, zza);
    }

    protected static final void zzc(int i, int i2, int i3, int i4, int[] iArr, byte[] bArr, byte[] bArr2, int i5, int[] iArr2, int[] iArr3) {
        zzd(i, i2, i4, 16, iArr, bArr, bArr2, i5, iArr2, iArr3);
        zzd(i3, i4, i2, 12, iArr, bArr, bArr2, i5, iArr2, iArr3);
        zzd(i, i2, i4, 8, iArr, bArr, bArr2, i5, iArr2, iArr3);
        zzd(i3, i4, i2, 7, iArr, bArr, bArr2, i5, iArr2, iArr3);
    }

    protected static final void zzd(int i, int i2, int i3, int i4, int[] iArr, byte[] bArr, byte[] bArr2, int i5, int[] iArr2, int[] iArr3) {
        int i6 = iArr2[i] + iArr2[i2];
        iArr2[i] = i6;
        int iZza = zza(iArr2[i3], i6);
        iArr2[i3] = (iZza << i4) | (iZza >>> (32 - i4));
    }

    private static final int zze(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }
}
