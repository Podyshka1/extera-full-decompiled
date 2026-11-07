package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzib {
    public static Object[] zza(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            zzb(objArr[i2], i2);
        }
        return objArr;
    }

    public static Object zzb(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        zzib$$ExternalSyntheticBUOutline0.m310m(String.valueOf(i).length() + 9, i);
        return null;
    }
}
