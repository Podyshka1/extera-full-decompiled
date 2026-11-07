package com.google.common.collect;

import java.util.Arrays;
import java.util.Objects;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import kotlin.UByte;
import kotlin.UShort;

/* JADX INFO: loaded from: classes5.dex */
abstract class CompactHashing {
    public static int getHashPrefix(int i, int i2) {
        return i & (~i2);
    }

    public static int getNext(int i, int i2) {
        return i & i2;
    }

    public static int maskCombine(int i, int i2, int i3) {
        return (i & (~i3)) | (i2 & i3);
    }

    public static int newCapacity(int i) {
        return (i < 32 ? 4 : 2) * (i + 1);
    }

    public static int tableSize(int i) {
        return Math.max(4, Hashing.closedTableSize(i + 1, 1.0d));
    }

    public static Object createTable(int i) {
        if (i < 2 || i > 1073741824 || Integer.highestOneBit(i) != i) {
            CharCodeKt$$ExternalSyntheticBUOutline0.m860m("must be power of 2 between 2^1 and 2^30: ", i);
            return null;
        }
        if (i <= 256) {
            return new byte[i];
        }
        if (i <= 65536) {
            return new short[i];
        }
        return new int[i];
    }

    public static void tableClear(Object obj) {
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
    }

    public static int tableGet(Object obj, int i) {
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i] & UByte.MAX_VALUE;
        }
        if (obj instanceof short[]) {
            return ((short[]) obj)[i] & UShort.MAX_VALUE;
        }
        return ((int[]) obj)[i];
    }

    public static void tableSet(Object obj, int i, int i2) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }

    public static int remove(Object obj, Object obj2, int i, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int i2;
        int i3;
        int iSmearedHash = Hashing.smearedHash(obj);
        int i4 = iSmearedHash & i;
        int iTableGet = tableGet(obj3, i4);
        if (iTableGet == 0) {
            return -1;
        }
        int hashPrefix = getHashPrefix(iSmearedHash, i);
        int i5 = -1;
        while (true) {
            i2 = iTableGet - 1;
            i3 = iArr[i2];
            if (getHashPrefix(i3, i) == hashPrefix && Objects.equals(obj, objArr[i2]) && (objArr2 == null || Objects.equals(obj2, objArr2[i2]))) {
                break;
            }
            int next = getNext(i3, i);
            if (next == 0) {
                return -1;
            }
            i5 = i2;
            iTableGet = next;
        }
        int next2 = getNext(i3, i);
        if (i5 == -1) {
            tableSet(obj3, i4, next2);
            return i2;
        }
        iArr[i5] = maskCombine(iArr[i5], next2, i);
        return i2;
    }
}
