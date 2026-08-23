package com.google.common.collect;

import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
abstract class Platform {
    public static <K, V> Map<K, V> newHashMapWithExpectedSize(int i) {
        return CompactHashMap.createWithExpectedSize(i);
    }

    public static <T> T[] copy(Object[] objArr, int i, int i2, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i, i2, tArr.getClass());
    }
}
