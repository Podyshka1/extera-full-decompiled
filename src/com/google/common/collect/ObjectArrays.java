package com.google.common.collect;

import com.android.dx.util.LabeledList$$ExternalSyntheticBUOutline0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class ObjectArrays {
    public static <T> T[] newArray(T[] tArr, int i) {
        if (tArr.length != 0) {
            tArr = (T[]) Arrays.copyOf(tArr, 0);
        }
        return (T[]) Arrays.copyOf(tArr, i);
    }

    public static Object[] checkElementsNotNull(Object... objArr) {
        checkElementsNotNull(objArr, objArr.length);
        return objArr;
    }

    public static Object[] checkElementsNotNull(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            checkElementNotNull(objArr[i2], i2);
        }
        return objArr;
    }

    public static Object checkElementNotNull(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        LabeledList$$ExternalSyntheticBUOutline0.m229m("at index ", i);
        return null;
    }
}
