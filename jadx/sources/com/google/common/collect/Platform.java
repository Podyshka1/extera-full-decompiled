package com.google.common.collect;

import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
abstract class Platform {
    static Map newHashMapWithExpectedSize(int i) {
        return CompactHashMap.createWithExpectedSize(i);
    }

    static Object[] newArray(Object[] objArr, int i) {
        if (objArr.length != 0) {
            objArr = Arrays.copyOf(objArr, 0);
        }
        return Arrays.copyOf(objArr, i);
    }

    static Object[] copy(Object[] objArr, int i, int i2, Object[] objArr2) {
        return Arrays.copyOfRange(objArr, i, i2, objArr2.getClass());
    }
}
