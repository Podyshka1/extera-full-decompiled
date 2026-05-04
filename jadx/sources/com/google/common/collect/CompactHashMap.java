package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
class CompactHashMap extends AbstractMap implements Serializable {
    private static final Object NOT_FOUND = new Object();
    transient int[] entries;
    private transient Set entrySetView;
    private transient Set keySetView;
    transient Object[] keys;
    private transient int metadata;
    private transient int size;
    private transient Object table;
    transient Object[] values;
    private transient Collection valuesView;

    void accessEntry(int i) {
    }

    int adjustAfterRemove(int i, int i2) {
        return i - 1;
    }

    static /* synthetic */ int access$1410(CompactHashMap compactHashMap) {
        int i = compactHashMap.size;
        compactHashMap.size = i - 1;
        return i;
    }

    public static CompactHashMap createWithExpectedSize(int i) {
        return new CompactHashMap(i);
    }

    CompactHashMap(int i) {
        init(i);
    }

    void init(int i) {
        Preconditions.checkArgument(i >= 0, "Expected size must be >= 0");
        this.metadata = Ints.constrainToRange(i, 1, 1073741823);
    }

    boolean needsAllocArrays() {
        return this.table == null;
    }

    int allocArrays() {
        Preconditions.checkState(needsAllocArrays(), "Arrays already allocated");
        int i = this.metadata;
        int iTableSize = CompactHashing.tableSize(i);
        this.table = CompactHashing.createTable(iTableSize);
        setHashTableMask(iTableSize - 1);
        this.entries = new int[i];
        this.keys = new Object[i];
        this.values = new Object[i];
        return i;
    }

    Map delegateOrNull() {
        Object obj = this.table;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    Map createHashFloodingResistantDelegate(int i) {
        return new LinkedHashMap(i, 1.0f);
    }

    Map convertToHashFloodingResistantImplementation() {
        Map mapCreateHashFloodingResistantDelegate = createHashFloodingResistantDelegate(hashTableMask() + 1);
        int iFirstEntryIndex = firstEntryIndex();
        while (iFirstEntryIndex >= 0) {
            mapCreateHashFloodingResistantDelegate.put(key(iFirstEntryIndex), value(iFirstEntryIndex));
            iFirstEntryIndex = getSuccessor(iFirstEntryIndex);
        }
        this.table = mapCreateHashFloodingResistantDelegate;
        this.entries = null;
        this.keys = null;
        this.values = null;
        incrementModCount();
        return mapCreateHashFloodingResistantDelegate;
    }

    private void setHashTableMask(int i) {
        this.metadata = CompactHashing.maskCombine(this.metadata, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int hashTableMask() {
        return (1 << (this.metadata & 31)) - 1;
    }

    void incrementModCount() {
        this.metadata += 32;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        if (needsAllocArrays()) {
            allocArrays();
        }
        Map mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.put(obj, obj2);
        }
        int[] iArrRequireEntries = requireEntries();
        Object[] objArrRequireKeys = requireKeys();
        Object[] objArrRequireValues = requireValues();
        int i = this.size;
        int i2 = i + 1;
        int iSmearedHash = Hashing.smearedHash(obj);
        int iHashTableMask = hashTableMask();
        int i3 = iSmearedHash & iHashTableMask;
        int iTableGet = CompactHashing.tableGet(requireTable(), i3);
        if (iTableGet != 0) {
            int hashPrefix = CompactHashing.getHashPrefix(iSmearedHash, iHashTableMask);
            int i4 = 0;
            while (true) {
                int i5 = iTableGet - 1;
                int i6 = iArrRequireEntries[i5];
                if (CompactHashing.getHashPrefix(i6, iHashTableMask) == hashPrefix && Objects.equals(obj, objArrRequireKeys[i5])) {
                    Object obj3 = objArrRequireValues[i5];
                    objArrRequireValues[i5] = obj2;
                    accessEntry(i5);
                    return obj3;
                }
                int next = CompactHashing.getNext(i6, iHashTableMask);
                i4++;
                if (next != 0) {
                    obj = obj;
                    obj2 = obj2;
                    iTableGet = next;
                } else {
                    if (i4 >= 9) {
                        return convertToHashFloodingResistantImplementation().put(obj, obj2);
                    }
                    if (i2 > iHashTableMask) {
                        iHashTableMask = resizeTable(iHashTableMask, CompactHashing.newCapacity(iHashTableMask), iSmearedHash, i);
                    } else {
                        iArrRequireEntries[i5] = CompactHashing.maskCombine(i6, i2, iHashTableMask);
                    }
                }
            }
        } else if (i2 > iHashTableMask) {
            iHashTableMask = resizeTable(iHashTableMask, CompactHashing.newCapacity(iHashTableMask), iSmearedHash, i);
        } else {
            CompactHashing.tableSet(requireTable(), i3, i2);
        }
        int i7 = iHashTableMask;
        resizeMeMaybe(i2);
        insertEntry(i, obj, obj2, iSmearedHash, i7);
        this.size = i2;
        incrementModCount();
        return null;
    }

    void insertEntry(int i, Object obj, Object obj2, int i2, int i3) {
        setEntry(i, CompactHashing.maskCombine(i2, 0, i3));
        setKey(i, obj);
        setValue(i, obj2);
    }

    private void resizeMeMaybe(int i) {
        int iMin;
        int length = requireEntries().length;
        if (i <= length || (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        resizeEntries(iMin);
    }

    void resizeEntries(int i) {
        this.entries = Arrays.copyOf(requireEntries(), i);
        this.keys = Arrays.copyOf(requireKeys(), i);
        this.values = Arrays.copyOf(requireValues(), i);
    }

    private int resizeTable(int i, int i2, int i3, int i4) {
        Object objCreateTable = CompactHashing.createTable(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            CompactHashing.tableSet(objCreateTable, i3 & i5, i4 + 1);
        }
        Object objRequireTable = requireTable();
        int[] iArrRequireEntries = requireEntries();
        for (int i6 = 0; i6 <= i; i6++) {
            int iTableGet = CompactHashing.tableGet(objRequireTable, i6);
            while (iTableGet != 0) {
                int i7 = iTableGet - 1;
                int i8 = iArrRequireEntries[i7];
                int hashPrefix = CompactHashing.getHashPrefix(i8, i) | i6;
                int i9 = hashPrefix & i5;
                int iTableGet2 = CompactHashing.tableGet(objCreateTable, i9);
                CompactHashing.tableSet(objCreateTable, i9, iTableGet);
                iArrRequireEntries[i7] = CompactHashing.maskCombine(hashPrefix, iTableGet2, i5);
                iTableGet = CompactHashing.getNext(i8, i);
            }
        }
        this.table = objCreateTable;
        setHashTableMask(i5);
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int indexOf(Object obj) {
        if (needsAllocArrays()) {
            return -1;
        }
        int iSmearedHash = Hashing.smearedHash(obj);
        int iHashTableMask = hashTableMask();
        int iTableGet = CompactHashing.tableGet(requireTable(), iSmearedHash & iHashTableMask);
        if (iTableGet == 0) {
            return -1;
        }
        int hashPrefix = CompactHashing.getHashPrefix(iSmearedHash, iHashTableMask);
        do {
            int i = iTableGet - 1;
            int iEntry = entry(i);
            if (CompactHashing.getHashPrefix(iEntry, iHashTableMask) == hashPrefix && Objects.equals(obj, key(i))) {
                return i;
            }
            iTableGet = CompactHashing.getNext(iEntry, iHashTableMask);
        } while (iTableGet != 0);
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Map mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.containsKey(obj);
        }
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        Map mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.get(obj);
        }
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return null;
        }
        accessEntry(iIndexOf);
        return value(iIndexOf);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        Map mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.remove(obj);
        }
        Object objRemoveHelper = removeHelper(obj);
        if (objRemoveHelper == NOT_FOUND) {
            return null;
        }
        return objRemoveHelper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object removeHelper(Object obj) {
        if (needsAllocArrays()) {
            return NOT_FOUND;
        }
        int iHashTableMask = hashTableMask();
        int iRemove = CompactHashing.remove(obj, null, iHashTableMask, requireTable(), requireEntries(), requireKeys(), null);
        if (iRemove == -1) {
            return NOT_FOUND;
        }
        Object objValue = value(iRemove);
        moveLastEntry(iRemove, iHashTableMask);
        this.size--;
        incrementModCount();
        return objValue;
    }

    void moveLastEntry(int i, int i2) {
        Object objRequireTable = requireTable();
        int[] iArrRequireEntries = requireEntries();
        Object[] objArrRequireKeys = requireKeys();
        Object[] objArrRequireValues = requireValues();
        int size = size();
        int i3 = size - 1;
        if (i < i3) {
            Object obj = objArrRequireKeys[i3];
            objArrRequireKeys[i] = obj;
            objArrRequireValues[i] = objArrRequireValues[i3];
            objArrRequireKeys[i3] = null;
            objArrRequireValues[i3] = null;
            iArrRequireEntries[i] = iArrRequireEntries[i3];
            iArrRequireEntries[i3] = 0;
            int iSmearedHash = Hashing.smearedHash(obj) & i2;
            int iTableGet = CompactHashing.tableGet(objRequireTable, iSmearedHash);
            if (iTableGet == size) {
                CompactHashing.tableSet(objRequireTable, iSmearedHash, i + 1);
                return;
            }
            while (true) {
                int i4 = iTableGet - 1;
                int i5 = iArrRequireEntries[i4];
                int next = CompactHashing.getNext(i5, i2);
                if (next == size) {
                    iArrRequireEntries[i4] = CompactHashing.maskCombine(i5, i + 1, i2);
                    return;
                }
                iTableGet = next;
            }
        } else {
            objArrRequireKeys[i] = null;
            objArrRequireValues[i] = null;
            iArrRequireEntries[i] = 0;
        }
    }

    int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    int getSuccessor(int i) {
        int i2 = i + 1;
        if (i2 < this.size) {
            return i2;
        }
        return -1;
    }

    private abstract class Itr implements Iterator {
        int currentIndex;
        int expectedMetadata;
        int indexToRemove;

        abstract Object getOutput(int i);

        private Itr() {
            this.expectedMetadata = CompactHashMap.this.metadata;
            this.currentIndex = CompactHashMap.this.firstEntryIndex();
            this.indexToRemove = -1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.currentIndex >= 0;
        }

        @Override // java.util.Iterator
        public Object next() {
            checkForConcurrentModification();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i = this.currentIndex;
            this.indexToRemove = i;
            Object output = getOutput(i);
            this.currentIndex = CompactHashMap.this.getSuccessor(this.currentIndex);
            return output;
        }

        @Override // java.util.Iterator
        public void remove() {
            checkForConcurrentModification();
            CollectPreconditions.checkRemove(this.indexToRemove >= 0);
            incrementExpectedModCount();
            CompactHashMap compactHashMap = CompactHashMap.this;
            compactHashMap.remove(compactHashMap.key(this.indexToRemove));
            this.currentIndex = CompactHashMap.this.adjustAfterRemove(this.currentIndex, this.indexToRemove);
            this.indexToRemove = -1;
        }

        void incrementExpectedModCount() {
            this.expectedMetadata += 32;
        }

        private void checkForConcurrentModification() {
            if (CompactHashMap.this.metadata != this.expectedMetadata) {
                throw new ConcurrentModificationException();
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        Set set = this.keySetView;
        if (set != null) {
            return set;
        }
        Set setCreateKeySet = createKeySet();
        this.keySetView = setCreateKeySet;
        return setCreateKeySet;
    }

    Set createKeySet() {
        return new KeySetView();
    }

    private final class KeySetView extends AbstractSet {
        private KeySetView() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return CompactHashMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return CompactHashMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.keySet().remove(obj);
            }
            return CompactHashMap.this.removeHelper(obj) != CompactHashMap.NOT_FOUND;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return CompactHashMap.this.keySetIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            CompactHashMap.this.clear();
        }
    }

    Iterator keySetIterator() {
        Map mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.keySet().iterator();
        }
        return new Itr() { // from class: com.google.common.collect.CompactHashMap.1
            @Override // com.google.common.collect.CompactHashMap.Itr
            Object getOutput(int i) {
                return CompactHashMap.this.key(i);
            }
        };
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        Set set = this.entrySetView;
        if (set != null) {
            return set;
        }
        Set setCreateEntrySet = createEntrySet();
        this.entrySetView = setCreateEntrySet;
        return setCreateEntrySet;
    }

    Set createEntrySet() {
        return new EntrySetView();
    }

    private final class EntrySetView extends AbstractSet {
        private EntrySetView() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return CompactHashMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return CompactHashMap.this.entrySetIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.entrySet().contains(obj);
            }
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                int iIndexOf = CompactHashMap.this.indexOf(entry.getKey());
                if (iIndexOf != -1 && Objects.equals(CompactHashMap.this.value(iIndexOf), entry.getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int iHashTableMask;
            int iRemove;
            Map mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (CompactHashMap.this.needsAllocArrays() || (iRemove = CompactHashing.remove(entry.getKey(), entry.getValue(), (iHashTableMask = CompactHashMap.this.hashTableMask()), CompactHashMap.this.requireTable(), CompactHashMap.this.requireEntries(), CompactHashMap.this.requireKeys(), CompactHashMap.this.requireValues())) == -1) {
                return false;
            }
            CompactHashMap.this.moveLastEntry(iRemove, iHashTableMask);
            CompactHashMap.access$1410(CompactHashMap.this);
            CompactHashMap.this.incrementModCount();
            return true;
        }
    }

    Iterator entrySetIterator() {
        Map mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.entrySet().iterator();
        }
        return new Itr() { // from class: com.google.common.collect.CompactHashMap.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.CompactHashMap.Itr
            public Map.Entry getOutput(int i) {
                return CompactHashMap.this.new MapEntry(i);
            }
        };
    }

    final class MapEntry extends AbstractMapEntry {
        private final Object key;
        private int lastKnownIndex;

        MapEntry(int i) {
            this.key = CompactHashMap.this.key(i);
            this.lastKnownIndex = i;
        }

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        public Object getKey() {
            return this.key;
        }

        private void updateLastKnownIndex() {
            int i = this.lastKnownIndex;
            if (i == -1 || i >= CompactHashMap.this.size() || !Objects.equals(this.key, CompactHashMap.this.key(this.lastKnownIndex))) {
                this.lastKnownIndex = CompactHashMap.this.indexOf(this.key);
            }
        }

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        public Object getValue() {
            Map mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return NullnessCasts.uncheckedCastNullableTToT(mapDelegateOrNull.get(this.key));
            }
            updateLastKnownIndex();
            int i = this.lastKnownIndex;
            return i == -1 ? NullnessCasts.unsafeNull() : CompactHashMap.this.value(i);
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Map mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return NullnessCasts.uncheckedCastNullableTToT(mapDelegateOrNull.put(this.key, obj));
            }
            updateLastKnownIndex();
            int i = this.lastKnownIndex;
            if (i != -1) {
                Object objValue = CompactHashMap.this.value(i);
                CompactHashMap.this.setValue(this.lastKnownIndex, obj);
                return objValue;
            }
            CompactHashMap.this.put(this.key, obj);
            return NullnessCasts.unsafeNull();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        Map mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.size() : this.size;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        Map mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.containsValue(obj);
        }
        for (int i = 0; i < this.size; i++) {
            if (Objects.equals(obj, value(i))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection values() {
        Collection collection = this.valuesView;
        if (collection != null) {
            return collection;
        }
        Collection collectionCreateValues = createValues();
        this.valuesView = collectionCreateValues;
        return collectionCreateValues;
    }

    Collection createValues() {
        return new ValuesView();
    }

    private final class ValuesView extends AbstractCollection {
        private ValuesView() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return CompactHashMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return CompactHashMap.this.valuesIterator();
        }
    }

    Iterator valuesIterator() {
        Map mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.values().iterator();
        }
        return new Itr() { // from class: com.google.common.collect.CompactHashMap.3
            @Override // com.google.common.collect.CompactHashMap.Itr
            Object getOutput(int i) {
                return CompactHashMap.this.value(i);
            }
        };
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        Map mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            this.metadata = Ints.constrainToRange(size(), 3, 1073741823);
            mapDelegateOrNull.clear();
            this.table = null;
            this.size = 0;
            return;
        }
        Arrays.fill(requireKeys(), 0, this.size, (Object) null);
        Arrays.fill(requireValues(), 0, this.size, (Object) null);
        CompactHashing.tableClear(requireTable());
        Arrays.fill(requireEntries(), 0, this.size, 0);
        this.size = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object requireTable() {
        Object obj = this.table;
        Objects.requireNonNull(obj);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] requireEntries() {
        int[] iArr = this.entries;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] requireKeys() {
        Object[] objArr = this.keys;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] requireValues() {
        Object[] objArr = this.values;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object key(int i) {
        return requireKeys()[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object value(int i) {
        return requireValues()[i];
    }

    private int entry(int i) {
        return requireEntries()[i];
    }

    private void setKey(int i, Object obj) {
        requireKeys()[i] = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(int i, Object obj) {
        requireValues()[i] = obj;
    }

    private void setEntry(int i, int i2) {
        requireEntries()[i] = i2;
    }
}
