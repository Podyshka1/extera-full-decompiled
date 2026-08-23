package com.google.android.gms.internal.clearcut;

import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline0;
import java.nio.ByteBuffer;
import okio.AsyncTimeout$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzff {
    private static final zzfg zzqb;

    static {
        zzqb = (zzfd.zzed() && zzfd.zzee()) ? new zzfj() : new zzfh();
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
                                throw new zzfi(i, length2);
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
        zzar$$ExternalSyntheticBUOutline0.m291m(54, "UTF-8 length does not fit in int: ", ((long) i2) + 4294967296L);
        return 0;
    }

    public static int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return zzqb.zzb(charSequence, bArr, i, i2);
    }

    public static void zza(CharSequence charSequence, ByteBuffer byteBuffer) {
        zzfg zzfgVar = zzqb;
        if (byteBuffer.hasArray()) {
            int iArrayOffset = byteBuffer.arrayOffset();
            byteBuffer.position(zza(charSequence, byteBuffer.array(), byteBuffer.position() + iArrayOffset, byteBuffer.remaining()) - iArrayOffset);
        } else if (byteBuffer.isDirect()) {
            zzfgVar.zzb(charSequence, byteBuffer);
        } else {
            zzfg.zzc(charSequence, byteBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzam(int i) {
        if (i > -12) {
            return -1;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzd(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    public static boolean zze(byte[] bArr) {
        return zzqb.zze(bArr, 0, bArr.length);
    }

    public static boolean zze(byte[] bArr, int i, int i2) {
        return zzqb.zze(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzf(byte[] bArr, int i, int i2) {
        byte b2 = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return zzam(b2);
        }
        if (i3 == 1) {
            return zzp(b2, bArr[i]);
        }
        if (i3 == 2) {
            return zzd(b2, bArr[i], bArr[i + 1]);
        }
        AsyncTimeout$$ExternalSyntheticBUOutline0.m832m();
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzp(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }
}
