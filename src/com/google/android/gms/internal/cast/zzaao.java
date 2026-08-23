package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzaao {
    static {
        try {
            if (System.getenv("PROTOBUF_DISABLE_UNSAFE_UTF8_PROCESSOR_FOR_TESTING") != null) {
                return;
            }
        } catch (SecurityException unused) {
        }
        if (zzaak.zza() && zzaak.zzb()) {
            int i = zzxb.$r8$clinit;
        }
    }

    public static int zza(String str) {
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
                    int length2 = str.length();
                    int i3 = 0;
                    while (i < length2) {
                        char cCharAt2 = str.charAt(i);
                        if (cCharAt2 < 2048) {
                            i3 += (127 - cCharAt2) >>> 31;
                        } else {
                            i3 += 2;
                            if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                                if (Character.codePointAt(str, i) < 65536) {
                                    throw new zzaan(i, length2);
                                }
                                i++;
                            }
                        }
                        i++;
                    }
                    i2 += i3;
                } catch (zzaan unused) {
                    return str.getBytes(zzym.zza).length;
                }
            }
        }
        if (i2 >= length) {
            return i2;
        }
        long j = ((long) i2) + 4294967296L;
        zzar$$ExternalSyntheticBUOutline0.m291m(String.valueOf(j).length() + 34, "UTF-8 length does not fit in int: ", j);
        return 0;
    }

    public static int zzb(String str, byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        char cCharAt;
        int length = str.length();
        int i6 = 0;
        while (true) {
            i3 = i + i2;
            if (i6 >= length || (i5 = i6 + i) >= i3 || (cCharAt = str.charAt(i6)) >= 128) {
                break;
            }
            bArr[i5] = (byte) cCharAt;
            i6++;
        }
        if (i6 == length) {
            return i + length;
        }
        int i7 = i + i6;
        while (i6 < length) {
            char cCharAt2 = str.charAt(i6);
            if (cCharAt2 < 128 && i7 < i3) {
                bArr[i7] = (byte) cCharAt2;
                i7++;
            } else if (cCharAt2 < 2048 && i7 <= i3 - 2) {
                bArr[i7] = (byte) ((cCharAt2 >>> 6) | 960);
                bArr[i7 + 1] = (byte) ((cCharAt2 & '?') | 128);
                i7 += 2;
            } else {
                if ((cCharAt2 >= 55296 && cCharAt2 <= 57343) || i7 > i3 - 3) {
                    if (i7 > i3 - 4) {
                        if (cCharAt2 < 55296 || cCharAt2 > 57343 || ((i4 = i6 + 1) != str.length() && Character.isSurrogatePair(cCharAt2, str.charAt(i4)))) {
                            throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
                        }
                        return zzaal.zza(str, bArr, i, i2);
                    }
                    i6++;
                    if (i6 != str.length()) {
                        char cCharAt3 = str.charAt(i6);
                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                            int i8 = i7 + 3;
                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                            bArr[i7] = (byte) ((codePoint >>> 18) | 240);
                            bArr[i7 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                            bArr[i7 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i7 += 4;
                            bArr[i8] = (byte) ((codePoint & 63) | 128);
                        }
                    }
                    return zzaal.zza(str, bArr, i, i2);
                }
                bArr[i7] = (byte) ((cCharAt2 >>> '\f') | 480);
                bArr[i7 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                bArr[i7 + 2] = (byte) ((cCharAt2 & '?') | 128);
                i7 += 3;
            }
            i6++;
        }
        return i7;
    }
}
