package com.google.android.recaptcha.internal;

import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline0;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzaij {
    public static final int zza(String str, byte[] bArr, int i, int i2) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        int length = bytes.length;
        if (length - i > i2) {
            throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
        }
        System.arraycopy(bytes, 0, bArr, i, length);
        return i + length;
    }

    public static int zzb(String str) {
        int length = str.length();
        int i = 0;
        while (i < length && str.charAt(i) < 128) {
            i++;
        }
        int i2 = length;
        while (true) {
            if (i >= length) {
                break;
            }
            char cCharAt = str.charAt(i);
            if (cCharAt < 2048) {
                i2 += (127 - cCharAt) >>> 31;
                i++;
            } else {
                try {
                    int i3 = zzail.$r8$clinit;
                    int length2 = str.length();
                    int i4 = 0;
                    while (i < length2) {
                        char cCharAt2 = str.charAt(i);
                        if (cCharAt2 < 2048) {
                            i4 += (127 - cCharAt2) >>> 31;
                        } else {
                            i4 += 2;
                            if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                                if (Character.codePointAt(str, i) < 65536) {
                                    throw new zzaik(i, length2);
                                }
                                i++;
                            }
                        }
                        i++;
                    }
                    i2 += i4;
                } catch (zzaik unused) {
                    return str.getBytes(StandardCharsets.UTF_8).length;
                }
            }
        }
        if (i2 >= length) {
            return i2;
        }
        long j = ((long) i2) + 4294967296L;
        zzar$$ExternalSyntheticBUOutline0.m296m(String.valueOf(j).length() + 34, "UTF-8 length does not fit in int: ", j);
        return 0;
    }
}
