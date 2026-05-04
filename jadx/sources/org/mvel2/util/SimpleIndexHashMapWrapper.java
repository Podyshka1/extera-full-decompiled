package org.mvel2.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class SimpleIndexHashMapWrapper<K, V> implements Map<K, V> {
    private final ArrayList<SimpleIndexHashMapWrapper<K, V>.ValueContainer<K, V>> indexBasedLookup;
    private int indexCounter;
    private final Map<K, SimpleIndexHashMapWrapper<K, V>.ValueContainer<K, V>> wrappedMap;

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
    }

    public SimpleIndexHashMapWrapper() {
        this.wrappedMap = new HashMap();
        this.indexBasedLookup = new ArrayList<>();
    }

    public SimpleIndexHashMapWrapper(SimpleIndexHashMapWrapper<K, V> simpleIndexHashMapWrapper, boolean z) {
        this.indexBasedLookup = new ArrayList<>(simpleIndexHashMapWrapper.indexBasedLookup.size());
        this.wrappedMap = new HashMap();
        int i = 0;
        if (z) {
            ArrayList<SimpleIndexHashMapWrapper<K, V>.ValueContainer<K, V>> arrayList = simpleIndexHashMapWrapper.indexBasedLookup;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                SimpleIndexHashMapWrapper<K, V>.ValueContainer<K, V> valueContainer = arrayList.get(i2);
                i2++;
                SimpleIndexHashMapWrapper<K, V>.ValueContainer<K, V> valueContainer2 = valueContainer;
                SimpleIndexHashMapWrapper<K, V>.ValueContainer<K, V> valueContainer3 = new ValueContainer<>(i, valueContainer2.getKey(), null);
                this.indexBasedLookup.add(valueContainer3);
                this.wrappedMap.put(valueContainer2.getKey(), valueContainer3);
                i++;
            }
            return;
        }
        ArrayList<SimpleIndexHashMapWrapper<K, V>.ValueContainer<K, V>> arrayList2 = simpleIndexHashMapWrapper.indexBasedLookup;
        int size2 = arrayList2.size();
        int i3 = 0;
        while (i3 < size2) {
            SimpleIndexHashMapWrapper<K, V>.ValueContainer<K, V> valueContainer4 = arrayList2.get(i3);
            i3++;
            SimpleIndexHashMapWrapper<K, V>.ValueContainer<K, V> valueContainer5 = valueContainer4;
            SimpleIndexHashMapWrapper<K, V>.ValueContainer<K, V> valueContainer6 = new ValueContainer<>(i, valueContainer5.getKey(), valueContainer5.getValue());
            this.indexBasedLookup.add(valueContainer6);
            this.wrappedMap.put(valueContainer5.getKey(), valueContainer6);
            i++;
        }
    }

    public SimpleIndexHashMapWrapper(K[] kArr) {
        this.wrappedMap = new HashMap(kArr.length * 2);
        this.indexBasedLookup = new ArrayList<>(kArr.length);
        initWithKeys(kArr);
    }

    public SimpleIndexHashMapWrapper(K[] kArr, int i, float f) {
        this.wrappedMap = new HashMap(i * 2, f);
        this.indexBasedLookup = new ArrayList<>(i);
        initWithKeys(kArr);
    }

    public void initWithKeys(K[] kArr) {
        int length = kArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            K k = kArr[i];
            SimpleIndexHashMapWrapper<K, V>.ValueContainer<K, V> valueContainer = new ValueContainer<>(i2, k, null);
            this.wrappedMap.put(k, valueContainer);
            this.indexBasedLookup.add(valueContainer);
            i++;
            i2++;
        }
    }

    public void addKey(K k) {
        int i = this.indexCounter;
        this.indexCounter = i + 1;
        SimpleIndexHashMapWrapper<K, V>.ValueContainer<K, V> valueContainer = new ValueContainer<>(i, k, null);
        this.indexBasedLookup.add(valueContainer);
        this.wrappedMap.put(k, valueContainer);
    }

    public void addKey(K k, V v) {
        int i = this.indexCounter;
        this.indexCounter = i + 1;
        SimpleIndexHashMapWrapper<K, V>.ValueContainer<K, V> valueContainer = new ValueContainer<>(i, k, v);
        this.indexBasedLookup.add(valueContainer);
        this.wrappedMap.put(k, valueContainer);
    }

    @Override // java.util.Map
    public int size() {
        return this.wrappedMap.size();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.wrappedMap.isEmpty();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.wrappedMap.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.wrappedMap.containsValue(obj);
    }

    @Override // java.util.Map
    public V get(Object obj) {
        return this.wrappedMap.get(obj).getValue();
    }

    public V getByIndex(int i) {
        return this.indexBasedLookup.get(i).getValue();
    }

    public K getKeyAtIndex(int i) {
        return this.indexBasedLookup.get(i).getKey();
    }

    public int indexOf(K k) {
        return this.wrappedMap.get(k).getIndex();
    }

    @Override // java.util.Map
    public V put(K k, V v) {
        SimpleIndexHashMapWrapper<K, V>.ValueContainer<K, V> valueContainer = this.wrappedMap.get(k);
        if (valueContainer == null) {
            throw new RuntimeException("cannot add a new entry.  you must allocate a new key with addKey() first.");
        }
        this.indexBasedLookup.add(valueContainer);
        return this.wrappedMap.put(k, valueContainer).getValue();
    }

    public void putAtIndex(int i, V v) {
        this.indexBasedLookup.get(i).setValue(v);
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        throw new UnsupportedOperationException("cannot remove keys");
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("cannot clear map");
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return this.wrappedMap.keySet();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        throw new UnsupportedOperationException();
    }

    private class ValueContainer<K, V> {
        private int index;
        private K key;
        private V value;

        public ValueContainer(int i, K k, V v) {
            this.index = i;
            this.key = k;
            this.value = v;
        }

        public int getIndex() {
            return this.index;
        }

        public K getKey() {
            return this.key;
        }

        public V getValue() {
            return this.value;
        }

        void setKey(K k) {
            this.key = k;
        }

        void setValue(V v) {
            this.value = v;
        }
    }
}
