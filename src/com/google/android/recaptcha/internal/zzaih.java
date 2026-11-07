package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzaih {
    public static /* synthetic */ boolean zza(byte b2) {
        return b2 >= 0;
    }

    public static /* synthetic */ void zzb(byte b2, byte b3, char[] cArr, int i) throws zzagk {
        if (b2 < -62 || zze(b3)) {
            zzaeh$$ExternalSyntheticBUOutline0.m477m("Protocol message had invalid UTF-8.");
        } else {
            cArr[i] = (char) (((b2 & 31) << 6) | (b3 & 63));
        }
    }

    public static /* synthetic */ void zzd(byte b2, byte b3, byte b4, byte b5, char[] cArr, int i) throws zzagk {
        if (zze(b3) || (((b2 << 28) + (b3 + 112)) >> 30) != 0 || zze(b4) || zze(b5)) {
            zzaeh$$ExternalSyntheticBUOutline0.m477m("Protocol message had invalid UTF-8.");
            return;
        }
        int i2 = ((b2 & 7) << 18) | ((b3 & 63) << 12) | ((b4 & 63) << 6) | (b5 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    private static boolean zze(byte b2) {
        return b2 > -65;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0016 A[PHI: r2
  0x0016: PHI (r2v3 byte) = (r2v2 byte), (r2v9 byte) binds: [B:9:0x0011, B:11:0x0015] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void zzc(byte b2, byte b3, byte b4, char[] cArr, int i) throws zzagk {
        if (!zze(b3)) {
            if (b2 != -32) {
                if (b2 != -19) {
                    if (!zze(b4)) {
                        cArr[i] = (char) (((b2 & 15) << 12) | ((b3 & 63) << 6) | (b4 & 63));
                        return;
                    }
                } else if (b3 < -96) {
                    b2 = -19;
                    if (!zze(b4)) {
                    }
                }
            } else if (b3 >= -96) {
                b2 = -32;
                if (b2 != -19) {
                }
            }
        }
        zzaeh$$ExternalSyntheticBUOutline0.m477m("Protocol message had invalid UTF-8.");
    }
}
