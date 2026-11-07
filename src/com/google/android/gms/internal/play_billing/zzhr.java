package com.google.android.gms.internal.play_billing;

import com.google.protobuf.Utf8$SafeProcessor$$ExternalSyntheticBUOutline0;
import okio.AsyncTimeout$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
abstract class zzhr {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        if (zzho.zzx() && zzho.zzy()) {
            int i = zzdv.$r8$clinit;
        }
    }

    public static /* bridge */ /* synthetic */ int zza(byte[] bArr, int i, int i2) {
        int i3 = i2 - i;
        byte b2 = bArr[i - 1];
        if (i3 == 0) {
            if (b2 <= -12) {
                return b2;
            }
            return -1;
        }
        if (i3 == 1) {
            byte b3 = bArr[i];
            if (b2 > -12 || b3 > -65) {
                return -1;
            }
            return (b3 << 8) ^ b2;
        }
        if (i3 != 2) {
            AsyncTimeout$$ExternalSyntheticBUOutline0.m914m();
            return 0;
        }
        byte b4 = bArr[i];
        byte b5 = bArr[i + 1];
        if (b2 > -12 || b4 > -65 || b5 > -65) {
            return -1;
        }
        return (b5 << 16) ^ ((b4 << 8) ^ b2);
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
                        if (cCharAt2 >= 55296 && cCharAt2 <= 57343 && ((i4 = i6 + 1) == str.length() || !Character.isSurrogatePair(cCharAt2, str.charAt(i4)))) {
                            throw new zzhq(i6, length);
                        }
                        Utf8$SafeProcessor$$ExternalSyntheticBUOutline0.m485m(cCharAt2, i7);
                        return 0;
                    }
                    int i8 = i6 + 1;
                    if (i8 != str.length()) {
                        char cCharAt3 = str.charAt(i8);
                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                            int i9 = i7 + 3;
                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                            bArr[i7] = (byte) ((codePoint >>> 18) | 240);
                            bArr[i7 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                            bArr[i7 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i7 += 4;
                            bArr[i9] = (byte) ((codePoint & 63) | 128);
                            i6 = i8;
                        } else {
                            i6 = i8;
                        }
                    }
                    throw new zzhq(i6 - 1, length);
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

    public static int zzc(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && str.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char cCharAt = str.charAt(i2);
            if (cCharAt < 2048) {
                i3 += (127 - cCharAt) >>> 31;
                i2++;
            } else {
                int length2 = str.length();
                while (i2 < length2) {
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 < 2048) {
                        i += (127 - cCharAt2) >>> 31;
                    } else {
                        i += 2;
                        if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(str, i2) < 65536) {
                                throw new zzhq(i2, length2);
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) i3) + 4294967296L));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0076 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x007a A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean zzd(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] >= 0) {
            i++;
        }
        if (i >= i2) {
            return true;
        }
        while (i < i2) {
            int i3 = i + 1;
            int iZza = bArr[i];
            if (iZza >= 0) {
                i = i3;
            } else if (iZza < -32) {
                if (i3 >= i2) {
                    return iZza == 0;
                }
                if (iZza < -62) {
                    return false;
                }
                i += 2;
                if (bArr[i3] > -65) {
                    return false;
                }
            } else if (iZza < -16) {
                if (i3 >= i2 - 1) {
                    iZza = zza(bArr, i3, i2);
                    if (iZza == 0) {
                    }
                } else {
                    int i4 = i + 2;
                    char c2 = bArr[i3];
                    if (c2 > -65) {
                        return false;
                    }
                    if (iZza == -32 && c2 < -96) {
                        return false;
                    }
                    if (iZza == -19 && c2 >= -96) {
                        return false;
                    }
                    i += 3;
                    if (bArr[i4] > -65) {
                        return false;
                    }
                }
            } else if (i3 >= i2 - 2) {
                iZza = zza(bArr, i3, i2);
                if (iZza == 0) {
                }
            } else {
                int i5 = i + 2;
                int i6 = bArr[i3];
                if (i6 > -65 || (((iZza << 28) + (i6 + 112)) >> 30) != 0) {
                    return false;
                }
                int i7 = i + 3;
                if (bArr[i5] > -65) {
                    return false;
                }
                i += 4;
                if (bArr[i7] > -65) {
                    return false;
                }
            }
        }
        return true;
    }
}
