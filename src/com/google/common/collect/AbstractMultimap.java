package com.google.common.collect;

import com.google.common.collect.Multimaps;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
abstract class AbstractMultimap implements Multimap {
    private transient Map asMap;
    private transient Collection entries;
    private transient Set keySet;
    private transient Collection values;

    abstract Map createAsMap();

    abstract Collection createEntries();

    abstract Set createKeySet();

    abstract Collection createValues();

    abstract Iterator entryIterator();

    abstract Iterator valueIterator();

    AbstractMultimap() {
    }

    public boolean containsValue(Object obj) {
        Iterator it = asMap().values().iterator();
        while (it.hasNext()) {
            if (((Collection) it.next()).contains(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsEntry(Object obj, Object obj2) {
        Collection collection = (Collection) asMap().get(obj);
        return collection != null && collection.contains(obj2);
    }

    @Override // com.google.common.collect.Multimap
    public boolean remove(Object obj, Object obj2) {
        Collection collection = (Collection) asMap().get(obj);
        return collection != null && collection.remove(obj2);
    }

    @Override // com.google.common.collect.Multimap
    public Collection entries() {
        Collection collection = this.entries;
        if (collection != null) {
            return collection;
        }
        Collection collectionCreateEntries = createEntries();
        this.entries = collectionCreateEntries;
        return collectionCreateEntries;
    }

    class Entries extends Multimaps.Entries {
        Entries() {
        }

        @Override // com.google.common.collect.Multimaps.Entries
        Multimap multimap() {
            return AbstractMultimap.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return AbstractMultimap.this.entryIterator();
        }
    }

    public Set keySet() {
        Set set = this.keySet;
        if (set != null) {
            return set;
        }
        Set setCreateKeySet = createKeySet();
        this.keySet = setCreateKeySet;
        return setCreateKeySet;
    }

    @Override // com.google.common.collect.Multimap
    public Collection values() {
        Collection collection = this.values;
        if (collection != null) {
            return collection;
        }
        Collection collectionCreateValues = createValues();
        this.values = collectionCreateValues;
        return collectionCreateValues;
    }

    final class Values extends AbstractCollection {
        Values() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
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
    public Map asMap() {
        Map map = this.asMap;
        if (map != null) {
            return map;
        }
        Map mapCreateAsMap = createAsMap();
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
