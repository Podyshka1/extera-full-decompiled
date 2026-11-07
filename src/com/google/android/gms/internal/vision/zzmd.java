package com.google.android.gms.internal.vision;

import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline0;
import okio.AsyncTimeout$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzmd {
    private static final zzme zza;

    public static boolean zza(byte[] bArr) {
        return zza.zza(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzb(int i) {
        if (i > -12) {
            return -1;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzb(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzb(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    public static boolean zza(byte[] bArr, int i, int i2) {
        return zza.zza(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzd(byte[] bArr, int i, int i2) {
        byte b2 = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return zzb(b2);
        }
        if (i3 == 1) {
            return zzb(b2, bArr[i]);
        }
        if (i3 == 2) {
            return zzb(b2, bArr[i], bArr[i + 1]);
        }
        AsyncTimeout$$ExternalSyntheticBUOutline0.m914m();
        return 0;
    }

    public static int zza(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < 128) {
            i++;
        }
        int i2 = length;
        while (true) {
            if (i >= length) {
                break;
            }
            char cCharAt = charSequence.charAt(i);
            if (cCharAt < 2048) {
                i2 += (127 - cCharAt) >>> 31;
                i++;
            } else {
                int length2 = charSequence.length();
                int i3 = 0;
                while (i < length2) {
                    char cCharAt2 = charSequence.charAt(i);
                    if (cCharAt2 < 2048) {
                        i3 += (127 - cCharAt2) >>> 31;
                    } else {
                        i3 += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i) < 65536) {
                                throw new zzmg(i, length2);
                            }
                            i++;
                        }
                    }
                    i++;
                }
                i2 += i3;
            }
        }
        if (i2 >= length) {
            return i2;
        }
        zzar$$ExternalSyntheticBUOutline0.m296m(54, "UTF-8 length does not fit in int: ", ((long) i2) + 4294967296L);
        return 0;
    }

    public static int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return zza.zza(charSequence, bArr, i, i2);
    }

    public static String zzb(byte[] bArr, int i, int i2) {
        return zza.zzb(bArr, i, i2);
    }

    static {
        zzme zzmhVar;
        if (zzma.zza() && zzma.zzb() && !zzhi.zza()) {
            zzmhVar = new zzmj();
        } else {
            zzmhVar = new zzmh();
        }
        zza = zzmhVar;
    }
}
