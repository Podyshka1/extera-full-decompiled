package com.google.common.collect;

import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface Multimap<K, V> {
    Map<K, Collection<V>> asMap();

    void clear();

    boolean containsEntry(Object obj, Object obj2);

    Collection<Map.Entry<K, V>> entries();

    Collection<V> get(K k);

    boolean put(K k, V v);

    boolean remove(Object obj, Object obj2);

    int size();

    Collection<V> values();
}
