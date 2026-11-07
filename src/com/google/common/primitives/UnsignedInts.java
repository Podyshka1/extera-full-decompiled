package com.google.common.primitives;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes5.dex */
public abstract class UnsignedInts {
    public static int checkedCast(long j) {
        Preconditions.checkArgument((j >> 32) == 0, "out of range: %s", j);
        return (int) j;
    }
}
