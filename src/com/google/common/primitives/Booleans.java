package com.google.common.primitives;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Booleans {
    public static boolean contains(boolean[] zArr, boolean z) {
        for (boolean z2 : zArr) {
            if (z2 == z) {
                return true;
            }
        }
        return false;
    }
}
