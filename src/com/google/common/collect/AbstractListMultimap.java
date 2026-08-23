package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
abstract class AbstractListMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements ListMultimap<K, V> {
    public AbstractListMultimap(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public Collection<V> wrapCollection(K k, Collection<V> collection) {
        return wrapList(k, (List) collection, null);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public List<V> get(K k) {
        return (List) super.get((Object) k);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public boolean put(K k, V v) {
        return super.put(k, v);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.AbstractMultimap
    public boolean equals(Object obj) {
        return super.equals(obj);
    }
}
