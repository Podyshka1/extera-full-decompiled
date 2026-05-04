package com.yandex.runtime;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface TypeDictionary<T> {
    Map<String, T> getAllItems();

    <U extends T> U getItem(Class<U> cls);
}
