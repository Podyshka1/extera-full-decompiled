package org.mvel2.util;

/* JADX INFO: loaded from: classes5.dex */
public class ArrayTools {
    public static int findFirst(char c2, int i, int i2, char[] cArr) {
        int i3 = i2 + i;
        while (i < i3) {
            if (cArr[i] == c2) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static int findLast(char c2, int i, int i2, char[] cArr) {
        for (int i3 = (i + i2) - 1; i3 >= 0; i3--) {
            if (cArr[i3] == c2) {
                return i3;
            }
        }
        return -1;
    }
}
