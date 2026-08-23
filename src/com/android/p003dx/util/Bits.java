package com.android.p003dx.util;

/* JADX INFO: loaded from: classes4.dex */
public final class Bits {
    private Bits() {
    }

    public static int[] makeBitSet(int i) {
        return new int[(i + 31) >> 5];
    }

    public static int getMax(int[] iArr) {
        return iArr.length * 32;
    }

    public static boolean get(int[] iArr, int i) {
        return (iArr[i >> 5] & (1 << (i & 31))) != 0;
    }

    public static void set(int[] iArr, int i, boolean z) {
        int i2 = i >> 5;
        int i3 = 1 << (i & 31);
        if (z) {
            iArr[i2] = i3 | iArr[i2];
        } else {
            iArr[i2] = (~i3) & iArr[i2];
        }
    }

    public static void set(int[] iArr, int i) {
        int i2 = i >> 5;
        iArr[i2] = (1 << (i & 31)) | iArr[i2];
    }

    public static void clear(int[] iArr, int i) {
        int i2 = i >> 5;
        iArr[i2] = (~(1 << (i & 31))) & iArr[i2];
    }

    public static boolean isEmpty(int[] iArr) {
        for (int i : iArr) {
            if (i != 0) {
                return false;
            }
        }
        return true;
    }

    public static int bitCount(int[] iArr) {
        int iBitCount = 0;
        for (int i : iArr) {
            iBitCount += Integer.bitCount(i);
        }
        return iBitCount;
    }

    public static boolean anyInRange(int[] iArr, int i, int i2) {
        int iFindFirst = findFirst(iArr, i);
        return iFindFirst >= 0 && iFindFirst < i2;
    }

    public static int findFirst(int[] iArr, int i) {
        int iFindFirst;
        int length = iArr.length;
        int i2 = i & 31;
        int i3 = i >> 5;
        while (i3 < length) {
            int i4 = iArr[i3];
            if (i4 != 0 && (iFindFirst = findFirst(i4, i2)) >= 0) {
                return (i3 << 5) + iFindFirst;
            }
            i3++;
            i2 = 0;
        }
        return -1;
    }

    public static int findFirst(int i, int i2) {
        int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i & (~((1 << i2) - 1)));
        if (iNumberOfTrailingZeros == 32) {
            return -1;
        }
        return iNumberOfTrailingZeros;
    }

    /* JADX INFO: renamed from: or */
    public static void m206or(int[] iArr, int[] iArr2) {
        for (int i = 0; i < iArr2.length; i++) {
            iArr[i] = iArr[i] | iArr2[i];
        }
    }

    public static String toHuman(int[] iArr) {
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        int length = iArr.length * 32;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            if (get(iArr, i)) {
                if (z) {
                    sb.append(',');
                }
                sb.append(i);
                z = true;
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
