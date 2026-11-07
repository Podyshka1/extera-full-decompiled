package com.google.android.recaptcha.internal;

import com.google.protobuf.Utf8$Processor$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzail {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        int i = zzaef.$r8$clinit;
    }

    public static boolean zza(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] >= 0) {
            i++;
        }
        if (i >= i2) {
            return true;
        }
        while (i < i2) {
            int i3 = i + 1;
            byte b2 = bArr[i];
            if (b2 >= 0) {
                i = i3;
            } else {
                if (b2 < -32) {
                    if (i3 < i2 && b2 >= -62) {
                        i += 2;
                        if (bArr[i3] > -65) {
                        }
                    }
                    return false;
                }
                if (b2 >= -16) {
                    if (i3 >= i2 - 2) {
                        return false;
                    }
                    int i4 = i + 2;
                    byte b3 = bArr[i3];
                    if (b3 <= -65 && (((b2 << 28) + (b3 + 112)) >> 30) == 0) {
                        int i5 = i + 3;
                        if (bArr[i4] <= -65) {
                            i += 4;
                            if (bArr[i5] > -65) {
                            }
                        }
                    }
                    return false;
                }
                if (i3 >= i2 - 1) {
                    return false;
                }
                int i6 = i + 2;
                byte b4 = bArr[i3];
                if (b4 > -65 || (b2 == -32 && b4 < -96)) {
                    return false;
                }
                if (b2 == -19 && b4 >= -96) {
                    return false;
                }
                i += 3;
                if (bArr[i6] > -65) {
                    return false;
                }
            }
        }
        return true;
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
                        return zzaij.zza(str, bArr, i, i2);
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
                    return zzaij.zza(str, bArr, i, i2);
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

    public static String zzc(byte[] bArr, int i, int i2) throws zzagk {
        int i3;
        if (i2 == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        int length = bArr.length;
        if ((((length - i) - i2) | i | i2) < 0) {
            Utf8$Processor$$ExternalSyntheticBUOutline0.m484m("buffer length=%d, index=%d, size=%d", new Object[]{Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)});
            return null;
        }
        int i4 = i + i2;
        char[] cArr = new char[i2];
        int i5 = 0;
        while (i < i4) {
            byte b2 = bArr[i];
            if (!zzaih.zza(b2)) {
                break;
            }
            i++;
            cArr[i5] = (char) b2;
            i5++;
        }
        int i6 = i5;
        while (i < i4) {
            int i7 = i + 1;
            byte b3 = bArr[i];
            if (zzaih.zza(b3)) {
                cArr[i6] = (char) b3;
                i6++;
                i = i7;
                while (i < i4) {
                    byte b4 = bArr[i];
                    if (zzaih.zza(b4)) {
                        i++;
                        cArr[i6] = (char) b4;
                        i6++;
                    }
                }
            } else {
                if (b3 < -32) {
                    if (i7 >= i4) {
                        zzaeh$$ExternalSyntheticBUOutline0.m453m("Protocol message had invalid UTF-8.");
                        return null;
                    }
                    i3 = i6 + 1;
                    i += 2;
                    zzaih.zzb(b3, bArr[i7], cArr, i6);
                } else if (b3 < -16) {
                    if (i7 >= i4 - 1) {
                        zzaeh$$ExternalSyntheticBUOutline0.m453m("Protocol message had invalid UTF-8.");
                        return null;
                    }
                    i3 = i6 + 1;
                    int i8 = i + 2;
                    i += 3;
                    zzaih.zzc(b3, bArr[i7], bArr[i8], cArr, i6);
                } else {
                    if (i7 >= i4 - 2) {
                        zzaeh$$ExternalSyntheticBUOutline0.m453m("Protocol message had invalid UTF-8.");
                        return null;
                    }
                    byte b5 = bArr[i7];
                    int i9 = i + 3;
                    byte b6 = bArr[i + 2];
                    i += 4;
                    zzaih.zzd(b3, b5, b6, bArr[i9], cArr, i6);
                    i6 += 2;
                }
                i6 = i3;
            }
        }
        return new String(cArr, 0, i6);
    }
}
