package com.google.common.primitives;

import androidx.media3.container.MdtaMetadataEntry$$ExternalSyntheticBackport0;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes5.dex */
public abstract class UnsignedBytes {
    public static int toInt(byte b2) {
        return MdtaMetadataEntry$$ExternalSyntheticBackport0.m169m(b2);
    }

    public static byte checkedCast(long j) {
        Preconditions.checkArgument((j >> 8) == 0, "out of range: %s", j);
        return (byte) j;
    }
}
