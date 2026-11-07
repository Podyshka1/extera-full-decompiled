package com.google.android.gms.internal.play_billing;

import com.android.dx.util.LabeledList$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzbz {
    public static Object[] zza(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                LabeledList$$ExternalSyntheticBUOutline0.m229m("at index ", i2);
                return null;
            }
        }
        return objArr;
    }
}
