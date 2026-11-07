package com.google.common.primitives;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Bytes {
    public static byte[] concat(byte[]... bArr) {
        long length = 0;
        for (byte[] bArr2 : bArr) {
            length += (long) bArr2.length;
        }
        byte[] bArr3 = new byte[checkNoOverflow(length)];
        int length2 = 0;
        for (byte[] bArr4 : bArr) {
            System.arraycopy(bArr4, 0, bArr3, length2, bArr4.length);
            length2 += bArr4.length;
        }
        return bArr3;
    }

    private static int checkNoOverflow(long j) {
        int i = (int) j;
        Preconditions.checkArgument(j == ((long) i), "the total number of elements (%s) in the arrays must fit in an int", j);
        return i;
    }
}
