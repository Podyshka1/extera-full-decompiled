package com.google.android.recaptcha.internal;

import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline1;
import java.util.Objects;
import kotlin.UByte;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzpk {
    public static Object zza(int i) {
        if (i >= 2 && i <= 1073741824 && Integer.highestOneBit(i) == i) {
            return i <= 256 ? new byte[i] : i <= 65536 ? new short[i] : new int[i];
        }
        zzar$$ExternalSyntheticBUOutline1.m321m(String.valueOf(i).length() + 41, "must be power of 2 between 2^1 and 2^30: ", i);
        return null;
    }

    public static int zzb(Object obj, int i) {
        return obj instanceof byte[] ? ((byte[]) obj)[i] & UByte.MAX_VALUE : obj instanceof short[] ? (char) ((short[]) obj)[i] : ((int[]) obj)[i];
    }

    public static void zzc(Object obj, int i, int i2) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }

    public static int zzd(int i) {
        return (i < 32 ? 4 : 2) * (i + 1);
    }

    public static int zze(Object obj, Object obj2, int i, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int i2;
        int i3;
        int iZzb = zzpn.zzb(obj);
        int i4 = iZzb & i;
        int iZzb2 = zzb(obj3, i4);
        if (iZzb2 != 0) {
            int i5 = ~i;
            int i6 = iZzb & i5;
            int i7 = -1;
            while (true) {
                i2 = iZzb2 - 1;
                int i8 = iArr[i2];
                i3 = i8 & i;
                if ((i8 & i5) != i6 || !Objects.equals(obj, objArr[i2]) || (objArr2 != null && !Objects.equals(obj2, objArr2[i2]))) {
                    if (i3 == 0) {
                        break;
                    }
                    i7 = i2;
                    iZzb2 = i3;
                } else {
                    break;
                }
            }
            if (i7 == -1) {
                zzc(obj3, i4, i3);
                return i2;
            }
            iArr[i7] = (iArr[i7] & i5) | (i3 & i);
            return i2;
        }
        return -1;
    }
}
