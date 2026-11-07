package com.google.android.gms.common.util;

import com.google.android.gms.common.internal.Objects;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ArrayUtils {
    public static boolean contains(int[] iArr, int i) {
        if (iArr != null) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
        }
        return false;
    }

    public static <T> ArrayList<T> newArrayList() {
        return new ArrayList<>();
    }

    public static <T> boolean contains(T[] tArr, T t) {
        int length = tArr != null ? tArr.length : 0;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (!Objects.equal(tArr[i], t)) {
                i++;
            } else if (i >= 0) {
                return true;
            }
        }
        return false;
    }
}
