package com.google.android.gms.internal.mlkit_common;

import okio.Buffer$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaa {
    public static int zza(int i, int i2) {
        if (i2 < 0) {
            Buffer$$ExternalSyntheticBUOutline2.m835m("cannot store more than MAX_VALUE elements");
            return 0;
        }
        int i3 = i + (i >> 1) + 1;
        if (i3 < i2) {
            int iHighestOneBit = Integer.highestOneBit(i2 - 1);
            i3 = iHighestOneBit + iHighestOneBit;
        }
        if (i3 < 0) {
            return Integer.MAX_VALUE;
        }
        return i3;
    }
}
