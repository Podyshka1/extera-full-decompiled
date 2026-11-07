package com.google.android.gms.internal.common;

import com.google.android.gms.internal.cast.zzib$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzai {
    public static Object[] zza(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                zzib$$ExternalSyntheticBUOutline0.m310m(String.valueOf(i2).length() + 9, i2);
                return null;
            }
        }
        return objArr;
    }
}
