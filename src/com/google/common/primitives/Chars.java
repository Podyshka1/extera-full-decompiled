package com.google.common.primitives;

import com.google.common.base.Preconditions;
import kotlin.UByte;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Chars {
    public static char fromBytes(byte b2, byte b3) {
        return (char) ((b2 << 8) | (b3 & UByte.MAX_VALUE));
    }

    public static char checkedCast(long j) {
        char c2 = (char) j;
        Preconditions.checkArgument(((long) c2) == j, "Out of range: %s", j);
        return c2;
    }

    public static boolean contains(char[] cArr, char c2) {
        for (char c3 : cArr) {
            if (c3 == c2) {
                return true;
            }
        }
        return false;
    }
}
