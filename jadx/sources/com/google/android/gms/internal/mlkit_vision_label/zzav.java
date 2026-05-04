package com.google.android.gms.internal.mlkit_vision_label;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzav {
    static int zza(int i) {
        return (i < 32 ? 4 : 2) * (i + 1);
    }

    static int zzb(Object obj, Object obj2, int i, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int i2;
        int i3;
        int iZza = zzaw.zza(obj);
        int i4 = iZza & i;
        int iZzc = zzc(obj3, i4);
        if (iZzc != 0) {
            int i5 = ~i;
            int i6 = iZza & i5;
            int i7 = -1;
            while (true) {
                i2 = iZzc - 1;
                i3 = iArr[i2];
                if ((i3 & i5) != i6 || !zzo.zza(obj, objArr[i2]) || (objArr2 != null && !zzo.zza(obj2, objArr2[i2]))) {
                    int i8 = i3 & i;
                    if (i8 == 0) {
                        break;
                    }
                    i7 = i2;
                    iZzc = i8;
                } else {
                    break;
                }
            }
            int i9 = i3 & i;
            if (i7 == -1) {
                zze(obj3, i4, i9);
                return i2;
            }
            iArr[i7] = (i9 & i) | (iArr[i7] & i5);
            return i2;
        }
        return -1;
    }

    static int zzc(Object obj, int i) {
        return obj instanceof byte[] ? ((byte[]) obj)[i] & 255 : obj instanceof short[] ? (char) ((short[]) obj)[i] : ((int[]) obj)[i];
    }

    static Object zzd(int i) {
        if (i >= 2 && i <= 1073741824 && Integer.highestOneBit(i) == i) {
            return i <= 256 ? new byte[i] : i <= 65536 ? new short[i] : new int[i];
        }
        throw new IllegalArgumentException("must be power of 2 between 2^1 and 2^30: " + i);
    }

    static void zze(Object obj, int i, int i2) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }
}
