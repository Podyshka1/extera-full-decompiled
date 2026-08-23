package com.google.common.collect;

import com.google.common.collect.Multimaps;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
abstract class AbstractMultimap<K, V> implements Multimap<K, V> {
    private transient Map<K, Collection<V>> asMap;
    private transient Collection<Map.Entry<K, V>> entries;
    private transient Set<K> keySet;
    private transient Collection<V> values;

    public abstract Map<K, Collection<V>> createAsMap();

    public abstract Collection<Map.Entry<K, V>> createEntries();

    public abstract Set<K> createKeySet();

    public abstract Collection<V> createValues();

    public abstract Iterator<Map.Entry<K, V>> entryIterator();

    public abstract Iterator<V> valueIterator();

    public boolean containsValue(Object obj) {
        Iterator<Collection<V>> it = asMap().values().iterator();
        while (it.hasNext()) {
            if (it.next().contains(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsEntry(Object obj, Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.contains(obj2);
    }

    @Override // com.google.common.collect.Multimap
    public boolean remove(Object obj, Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.remove(obj2);
    }

    @Override // com.google.common.collect.Multimap
    public Collection<Map.Entry<K, V>> entries() {
        Collection<Map.Entry<K, V>> collection = this.entries;
        if (collection != null) {
            return collection;
        }
        Collection<Map.Entry<K, V>> collectionCreateEntries = createEntries();
        this.entries = collectionCreateEntries;
        return collectionCreateEntries;
    }

    public class Entries extends Multimaps.Entries<K, V> {
        public Entries() {
        }

        @Override // com.google.common.collect.Multimaps.Entries
        public Multimap<K, V> multimap() {
            return AbstractMultimap.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return AbstractMultimap.this.entryIterator();
        }
    }

    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        Set<K> setCreateKeySet = createKeySet();
        this.keySet = setCreateKeySet;
        return setCreateKeySet;
    }

    @Override // com.google.common.collect.Multimap
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionCreateValues = createValues();
        this.values = collectionCreateValues;
        return collectionCreateValues;
    }

    public final class Values extends AbstractCollection<V> {
        public Values() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return AbstractMultimap.this.valueIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return AbstractMultimap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return AbstractMultimap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            AbstractMultimap.this.clear();
        }
    }

    @Override // com.google.common.collect.Multimap
    public Map<K, Collection<V>> asMap() {
        Map<K, Collection<V>> map = this.asMap;
        if (map != null) {
            return map;
        }
        Map<K, Collection<V>> mapCreateAsMap = createAsMap();
        this.asMap = mapCreateAsMap;
        return mapCreateAsMap;
    }

    public boolean equals(Object obj) {
        return Multimaps.equalsImpl(this, obj);
    }

    public int hashCode() {
        return asMap().hashCode();
    }

    public String toString() {
        return asMap().toString();
    }
}
