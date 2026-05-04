package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractMultimap;
import com.google.common.collect.Maps;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
abstract class AbstractMapBasedMultimap extends AbstractMultimap implements Serializable {
    private transient Map map;
    private transient int totalSize;

    abstract Collection createCollection();

    abstract Collection unmodifiableCollectionSubclass(Collection collection);

    abstract Collection wrapCollection(Object obj, Collection collection);

    static /* synthetic */ int access$208(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i = abstractMapBasedMultimap.totalSize;
        abstractMapBasedMultimap.totalSize = i + 1;
        return i;
    }

    static /* synthetic */ int access$210(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i = abstractMapBasedMultimap.totalSize;
        abstractMapBasedMultimap.totalSize = i - 1;
        return i;
    }

    static /* synthetic */ int access$212(AbstractMapBasedMultimap abstractMapBasedMultimap, int i) {
        int i2 = abstractMapBasedMultimap.totalSize + i;
        abstractMapBasedMultimap.totalSize = i2;
        return i2;
    }

    static /* synthetic */ int access$220(AbstractMapBasedMultimap abstractMapBasedMultimap, int i) {
        int i2 = abstractMapBasedMultimap.totalSize - i;
        abstractMapBasedMultimap.totalSize = i2;
        return i2;
    }

    protected AbstractMapBasedMultimap(Map map) {
        Preconditions.checkArgument(map.isEmpty());
        this.map = map;
    }

    Collection createCollection(Object obj) {
        return createCollection();
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.totalSize;
    }

    @Override // com.google.common.collect.Multimap
    public boolean put(Object obj, Object obj2) {
        Collection collection = (Collection) this.map.get(obj);
        if (collection == null) {
            Collection collectionCreateCollection = createCollection(obj);
            if (collectionCreateCollection.add(obj2)) {
                this.totalSize++;
                this.map.put(obj, collectionCreateCollection);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        }
        if (!collection.add(obj2)) {
            return false;
        }
        this.totalSize++;
        return true;
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        Iterator it = this.map.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        this.map.clear();
        this.totalSize = 0;
    }

    @Override // com.google.common.collect.Multimap
    public Collection get(Object obj) {
        Collection collectionCreateCollection = (Collection) this.map.get(obj);
        if (collectionCreateCollection == null) {
            collectionCreateCollection = createCollection(obj);
        }
        return wrapCollection(obj, collectionCreateCollection);
    }

    final List wrapList(Object obj, List list, WrappedCollection wrappedCollection) {
        if (list instanceof RandomAccess) {
            return new RandomAccessWrappedList(obj, list, wrappedCollection);
        }
        return new WrappedList(obj, list, wrappedCollection);
    }

    class WrappedCollection extends AbstractCollection {
        final WrappedCollection ancestor;
        final Collection ancestorDelegate;
        Collection delegate;
        final Object key;

        WrappedCollection(Object obj, Collection collection, WrappedCollection wrappedCollection) {
            this.key = obj;
            this.delegate = collection;
            this.ancestor = wrappedCollection;
            this.ancestorDelegate = wrappedCollection == null ? null : wrappedCollection.getDelegate();
        }

        void refreshIfEmpty() {
            Collection collection;
            WrappedCollection wrappedCollection = this.ancestor;
            if (wrappedCollection != null) {
                wrappedCollection.refreshIfEmpty();
                if (this.ancestor.getDelegate() != this.ancestorDelegate) {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (!this.delegate.isEmpty() || (collection = (Collection) AbstractMapBasedMultimap.this.map.get(this.key)) == null) {
                    return;
                }
                this.delegate = collection;
            }
        }

        void removeIfEmpty() {
            WrappedCollection wrappedCollection = this.ancestor;
            if (wrappedCollection != null) {
                wrappedCollection.removeIfEmpty();
            } else if (this.delegate.isEmpty()) {
                AbstractMapBasedMultimap.this.map.remove(this.key);
            }
        }

        Object getKey() {
            return this.key;
        }

        void addToMap() {
            WrappedCollection wrappedCollection = this.ancestor;
            if (wrappedCollection == null) {
                AbstractMapBasedMultimap.this.map.put(this.key, this.delegate);
            } else {
                wrappedCollection.addToMap();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            refreshIfEmpty();
            return this.delegate.size();
        }

        @Override // java.util.Collection
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            refreshIfEmpty();
            return this.delegate.equals(obj);
        }

        @Override // java.util.Collection
        public int hashCode() {
            refreshIfEmpty();
            return this.delegate.hashCode();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            refreshIfEmpty();
            return this.delegate.toString();
        }

        Collection getDelegate() {
            return this.delegate;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            refreshIfEmpty();
            return new WrappedIterator();
        }

        class WrappedIterator implements Iterator {
            final Iterator delegateIterator;
            final Collection originalDelegate;

            WrappedIterator() {
                Collection collection = WrappedCollection.this.delegate;
                this.originalDelegate = collection;
                this.delegateIterator = AbstractMapBasedMultimap.iteratorOrListIterator(collection);
            }

            WrappedIterator(Iterator it) {
                this.originalDelegate = WrappedCollection.this.delegate;
                this.delegateIterator = it;
            }

            void validateIterator() {
                WrappedCollection.this.refreshIfEmpty();
                if (WrappedCollection.this.delegate != this.originalDelegate) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                validateIterator();
                return this.delegateIterator.hasNext();
            }

            @Override // java.util.Iterator
            public Object next() {
                validateIterator();
                return this.delegateIterator.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.delegateIterator.remove();
                AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
                WrappedCollection.this.removeIfEmpty();
            }

            Iterator getDelegateIterator() {
                validateIterator();
                return this.delegateIterator;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(Object obj) {
            refreshIfEmpty();
            boolean zIsEmpty = this.delegate.isEmpty();
            boolean zAdd = this.delegate.add(obj);
            if (zAdd) {
                AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
                if (zIsEmpty) {
                    addToMap();
                }
            }
            return zAdd;
        }

        WrappedCollection getAncestor() {
            return this.ancestor;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = this.delegate.addAll(collection);
            if (zAddAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.delegate.size() - size);
                if (size == 0) {
                    addToMap();
                }
            }
            return zAddAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            refreshIfEmpty();
            return this.delegate.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection collection) {
            refreshIfEmpty();
            return this.delegate.containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.delegate.clear();
            AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, size);
            removeIfEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            refreshIfEmpty();
            boolean zRemove = this.delegate.remove(obj);
            if (zRemove) {
                AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
                removeIfEmpty();
            }
            return zRemove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.delegate.removeAll(collection);
            if (zRemoveAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.delegate.size() - size);
                removeIfEmpty();
            }
            return zRemoveAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection collection) {
            Preconditions.checkNotNull(collection);
            int size = size();
            boolean zRetainAll = this.delegate.retainAll(collection);
            if (zRetainAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.delegate.size() - size);
                removeIfEmpty();
            }
            return zRetainAll;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Iterator iteratorOrListIterator(Collection collection) {
        if (collection instanceof List) {
            return ((List) collection).listIterator();
        }
        return collection.iterator();
    }

    private class WrappedList extends WrappedCollection implements List {
        WrappedList(Object obj, List list, WrappedCollection wrappedCollection) {
            super(obj, list, wrappedCollection);
        }

        List getListDelegate() {
            return (List) getDelegate();
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = getListDelegate().addAll(i, collection);
            if (zAddAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, getDelegate().size() - size);
                if (size == 0) {
                    addToMap();
                }
            }
            return zAddAll;
        }

        @Override // java.util.List
        public Object get(int i) {
            refreshIfEmpty();
            return getListDelegate().get(i);
        }

        @Override // java.util.List
        public Object set(int i, Object obj) {
            refreshIfEmpty();
            return getListDelegate().set(i, obj);
        }

        @Override // java.util.List
        public void add(int i, Object obj) {
            refreshIfEmpty();
            boolean zIsEmpty = getDelegate().isEmpty();
            getListDelegate().add(i, obj);
            AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
            if (zIsEmpty) {
                addToMap();
            }
        }

        @Override // java.util.List
        public Object remove(int i) {
            refreshIfEmpty();
            Object objRemove = getListDelegate().remove(i);
            AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
            removeIfEmpty();
            return objRemove;
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            refreshIfEmpty();
            return getListDelegate().indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            refreshIfEmpty();
            return getListDelegate().lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator listIterator() {
            refreshIfEmpty();
            return new WrappedListIterator();
        }

        @Override // java.util.List
        public ListIterator listIterator(int i) {
            refreshIfEmpty();
            return new WrappedListIterator(i);
        }

        @Override // java.util.List
        public List subList(int i, int i2) {
            refreshIfEmpty();
            return AbstractMapBasedMultimap.this.wrapList(getKey(), getListDelegate().subList(i, i2), getAncestor() == null ? this : getAncestor());
        }

        private final class WrappedListIterator extends WrappedCollection.WrappedIterator implements ListIterator {
            WrappedListIterator() {
                super();
            }

            WrappedListIterator(int i) {
                super(WrappedList.this.getListDelegate().listIterator(i));
            }

            private ListIterator getDelegateListIterator() {
                return (ListIterator) getDelegateIterator();
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return getDelegateListIterator().hasPrevious();
            }

            @Override // java.util.ListIterator
            public Object previous() {
                return getDelegateListIterator().previous();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return getDelegateListIterator().nextIndex();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return getDelegateListIterator().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(Object obj) {
                getDelegateListIterator().set(obj);
            }

            @Override // java.util.ListIterator
            public void add(Object obj) {
                boolean zIsEmpty = WrappedList.this.isEmpty();
                getDelegateListIterator().add(obj);
                AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
                if (zIsEmpty) {
                    WrappedList.this.addToMap();
                }
            }
        }
    }

    private final class RandomAccessWrappedList extends WrappedList implements RandomAccess {
        RandomAccessWrappedList(Object obj, List list, WrappedCollection wrappedCollection) {
            super(obj, list, wrappedCollection);
        }
    }

    final Set createMaybeNavigableKeySet() {
        Map map = this.map;
        if (map instanceof NavigableMap) {
            return new NavigableKeySet((NavigableMap) this.map);
        }
        if (map instanceof SortedMap) {
            return new SortedKeySet((SortedMap) this.map);
        }
        return new KeySet(this.map);
    }

    private class KeySet extends Maps.KeySet {
        KeySet(Map map) {
            super(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            final Iterator it = map().entrySet().iterator();
            return new Iterator(this) { // from class: com.google.common.collect.AbstractMapBasedMultimap.KeySet.1
                Map.Entry entry;
                final /* synthetic */ KeySet this$1;

                {
                    this.this$1 = this;
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return it.hasNext();
                }

                @Override // java.util.Iterator
                public Object next() {
                    Map.Entry entry = (Map.Entry) it.next();
                    this.entry = entry;
                    return entry.getKey();
                }

                @Override // java.util.Iterator
                public void remove() {
                    Preconditions.checkState(this.entry != null, "no calls to next() since the last call to remove()");
                    Collection collection = (Collection) this.entry.getValue();
                    it.remove();
                    AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, collection.size());
                    collection.clear();
                    this.entry = null;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int size;
            Collection collection = (Collection) map().remove(obj);
            if (collection != null) {
                size = collection.size();
                collection.clear();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, size);
            } else {
                size = 0;
            }
            return size > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Iterators.clear(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection collection) {
            return map().keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return this == obj || map().keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return map().keySet().hashCode();
        }
    }

    private class SortedKeySet extends KeySet implements SortedSet {
        SortedKeySet(SortedMap sortedMap) {
            super(sortedMap);
        }

        SortedMap sortedMap() {
            return (SortedMap) super.map();
        }

        @Override // java.util.SortedSet
        public Comparator comparator() {
            return sortedMap().comparator();
        }

        @Override // java.util.SortedSet
        public Object first() {
            return sortedMap().firstKey();
        }

        public SortedSet headSet(Object obj) {
            return AbstractMapBasedMultimap.this.new SortedKeySet(sortedMap().headMap(obj));
        }

        @Override // java.util.SortedSet
        public Object last() {
            return sortedMap().lastKey();
        }

        public SortedSet subSet(Object obj, Object obj2) {
            return AbstractMapBasedMultimap.this.new SortedKeySet(sortedMap().subMap(obj, obj2));
        }

        public SortedSet tailSet(Object obj) {
            return AbstractMapBasedMultimap.this.new SortedKeySet(sortedMap().tailMap(obj));
        }
    }

    private final class NavigableKeySet extends SortedKeySet implements NavigableSet {
        NavigableKeySet(NavigableMap navigableMap) {
            super(navigableMap);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet
        public NavigableMap sortedMap() {
            return (NavigableMap) super.sortedMap();
        }

        @Override // java.util.NavigableSet
        public Object lower(Object obj) {
            return sortedMap().lowerKey(obj);
        }

        @Override // java.util.NavigableSet
        public Object floor(Object obj) {
            return sortedMap().floorKey(obj);
        }

        @Override // java.util.NavigableSet
        public Object ceiling(Object obj) {
            return sortedMap().ceilingKey(obj);
        }

        @Override // java.util.NavigableSet
        public Object higher(Object obj) {
            return sortedMap().higherKey(obj);
        }

        @Override // java.util.NavigableSet
        public Object pollFirst() {
            return Iterators.pollNext(iterator());
        }

        @Override // java.util.NavigableSet
        public Object pollLast() {
            return Iterators.pollNext(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet descendingSet() {
            return AbstractMapBasedMultimap.this.new NavigableKeySet(sortedMap().descendingMap());
        }

        @Override // java.util.NavigableSet
        public Iterator descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public NavigableSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override // java.util.NavigableSet
        public NavigableSet headSet(Object obj, boolean z) {
            return AbstractMapBasedMultimap.this.new NavigableKeySet(sortedMap().headMap(obj, z));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public NavigableSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override // java.util.NavigableSet
        public NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            return AbstractMapBasedMultimap.this.new NavigableKeySet(sortedMap().subMap(obj, z, obj2, z2));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public NavigableSet tailSet(Object obj) {
            return tailSet(obj, true);
        }

        @Override // java.util.NavigableSet
        public NavigableSet tailSet(Object obj, boolean z) {
            return AbstractMapBasedMultimap.this.new NavigableKeySet(sortedMap().tailMap(obj, z));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeValuesForKey(Object obj) {
        Collection collection = (Collection) Maps.safeRemove(this.map, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.totalSize -= size;
        }
    }

    private abstract class Itr implements Iterator {
        final Iterator keyIterator;
        Object key = null;
        Collection collection = null;
        Iterator valueIterator = Iterators.emptyModifiableIterator();

        abstract Object output(Object obj, Object obj2);

        Itr() {
            this.keyIterator = AbstractMapBasedMultimap.this.map.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.keyIterator.hasNext() || this.valueIterator.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!this.valueIterator.hasNext()) {
                Map.Entry entry = (Map.Entry) this.keyIterator.next();
                this.key = entry.getKey();
                Collection collection = (Collection) entry.getValue();
                this.collection = collection;
                this.valueIterator = collection.iterator();
            }
            return output(NullnessCasts.uncheckedCastNullableTToT(this.key), this.valueIterator.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.valueIterator.remove();
            Collection collection = this.collection;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.keyIterator.remove();
            }
            AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
        }
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public Collection values() {
        return super.values();
    }

    @Override // com.google.common.collect.AbstractMultimap
    Collection createValues() {
        return new AbstractMultimap.Values();
    }

    @Override // com.google.common.collect.AbstractMultimap
    Iterator valueIterator() {
        return new Itr() { // from class: com.google.common.collect.AbstractMapBasedMultimap.1
            @Override // com.google.common.collect.AbstractMapBasedMultimap.Itr
            Object output(Object obj, Object obj2) {
                return obj2;
            }
        };
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public Collection entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.AbstractMultimap
    Collection createEntries() {
        return new AbstractMultimap.Entries();
    }

    @Override // com.google.common.collect.AbstractMultimap
    Iterator entryIterator() {
        return new Itr() { // from class: com.google.common.collect.AbstractMapBasedMultimap.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.AbstractMapBasedMultimap.Itr
            public Map.Entry output(Object obj, Object obj2) {
                return Maps.immutableEntry(obj, obj2);
            }
        };
    }

    final Map createMaybeNavigableAsMap() {
        Map map = this.map;
        if (map instanceof NavigableMap) {
            return new NavigableAsMap((NavigableMap) this.map);
        }
        if (map instanceof SortedMap) {
            return new SortedAsMap((SortedMap) this.map);
        }
        return new AsMap(this.map);
    }

    private class AsMap extends Maps.ViewCachingAbstractMap {
        final transient Map submap;

        AsMap(Map map) {
            this.submap = map;
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        protected Set createEntrySet() {
            return new AsMapEntries();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return Maps.safeContainsKey(this.submap, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection get(Object obj) {
            Collection collection = (Collection) Maps.safeGet(this.submap, obj);
            if (collection == null) {
                return null;
            }
            return AbstractMapBasedMultimap.this.wrapCollection(obj, collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set keySet() {
            return AbstractMapBasedMultimap.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.submap.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection remove(Object obj) {
            Collection collection = (Collection) this.submap.remove(obj);
            if (collection == null) {
                return null;
            }
            Collection collectionCreateCollection = AbstractMapBasedMultimap.this.createCollection();
            collectionCreateCollection.addAll(collection);
            AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, collection.size());
            collection.clear();
            return collectionCreateCollection;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(Object obj) {
            return this == obj || this.submap.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.submap.hashCode();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.submap.toString();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.submap == AbstractMapBasedMultimap.this.map) {
                AbstractMapBasedMultimap.this.clear();
            } else {
                Iterators.clear(new AsMapIterator());
            }
        }

        Map.Entry wrapEntry(Map.Entry entry) {
            Object key = entry.getKey();
            return Maps.immutableEntry(key, AbstractMapBasedMultimap.this.wrapCollection(key, (Collection) entry.getValue()));
        }

        final class AsMapEntries extends Maps.EntrySet {
            AsMapEntries() {
            }

            @Override // com.google.common.collect.Maps.EntrySet
            Map map() {
                return AsMap.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator iterator() {
                return AsMap.this.new AsMapIterator();
            }

            @Override // com.google.common.collect.Maps.EntrySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return Collections2.safeContains(AsMap.this.submap.entrySet(), obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                AbstractMapBasedMultimap.this.removeValuesForKey(entry.getKey());
                return true;
            }
        }

        final class AsMapIterator implements Iterator {
            Collection collection;
            final Iterator delegateIterator;

            AsMapIterator() {
                this.delegateIterator = AsMap.this.submap.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.delegateIterator.hasNext();
            }

            @Override // java.util.Iterator
            public Map.Entry next() {
                Map.Entry entry = (Map.Entry) this.delegateIterator.next();
                this.collection = (Collection) entry.getValue();
                return AsMap.this.wrapEntry(entry);
            }

            @Override // java.util.Iterator
            public void remove() {
                Preconditions.checkState(this.collection != null, "no calls to next() since the last call to remove()");
                this.delegateIterator.remove();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, this.collection.size());
                this.collection.clear();
                this.collection = null;
            }
        }
    }

    private class SortedAsMap extends AsMap implements SortedMap {
        SortedSet sortedKeySet;

        SortedAsMap(SortedMap sortedMap) {
            super(sortedMap);
        }

        SortedMap sortedMap() {
            return (SortedMap) this.submap;
        }

        @Override // java.util.SortedMap
        public Comparator comparator() {
            return sortedMap().comparator();
        }

        @Override // java.util.SortedMap
        public Object firstKey() {
            return sortedMap().firstKey();
        }

        @Override // java.util.SortedMap
        public Object lastKey() {
            return sortedMap().lastKey();
        }

        public SortedMap headMap(Object obj) {
            return AbstractMapBasedMultimap.this.new SortedAsMap(sortedMap().headMap(obj));
        }

        public SortedMap subMap(Object obj, Object obj2) {
            return AbstractMapBasedMultimap.this.new SortedAsMap(sortedMap().subMap(obj, obj2));
        }

        public SortedMap tailMap(Object obj) {
            return AbstractMapBasedMultimap.this.new SortedAsMap(sortedMap().tailMap(obj));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.AsMap, java.util.AbstractMap, java.util.Map
        public SortedSet keySet() {
            SortedSet sortedSet = this.sortedKeySet;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet sortedSetCreateKeySet = createKeySet();
            this.sortedKeySet = sortedSetCreateKeySet;
            return sortedSetCreateKeySet;
        }

        SortedSet createKeySet() {
            return AbstractMapBasedMultimap.this.new SortedKeySet(sortedMap());
        }
    }

    private final class NavigableAsMap extends SortedAsMap implements NavigableMap {
        NavigableAsMap(NavigableMap navigableMap) {
            super(navigableMap);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap
        public NavigableMap sortedMap() {
            return (NavigableMap) super.sortedMap();
        }

        @Override // java.util.NavigableMap
        public Map.Entry lowerEntry(Object obj) {
            Map.Entry entryLowerEntry = sortedMap().lowerEntry(obj);
            if (entryLowerEntry == null) {
                return null;
            }
            return wrapEntry(entryLowerEntry);
        }

        @Override // java.util.NavigableMap
        public Object lowerKey(Object obj) {
            return sortedMap().lowerKey(obj);
        }

        @Override // java.util.NavigableMap
        public Map.Entry floorEntry(Object obj) {
            Map.Entry entryFloorEntry = sortedMap().floorEntry(obj);
            if (entryFloorEntry == null) {
                return null;
            }
            return wrapEntry(entryFloorEntry);
        }

        @Override // java.util.NavigableMap
        public Object floorKey(Object obj) {
            return sortedMap().floorKey(obj);
        }

        @Override // java.util.NavigableMap
        public Map.Entry ceilingEntry(Object obj) {
            Map.Entry entryCeilingEntry = sortedMap().ceilingEntry(obj);
            if (entryCeilingEntry == null) {
                return null;
            }
            return wrapEntry(entryCeilingEntry);
        }

        @Override // java.util.NavigableMap
        public Object ceilingKey(Object obj) {
            return sortedMap().ceilingKey(obj);
        }

        @Override // java.util.NavigableMap
        public Map.Entry higherEntry(Object obj) {
            Map.Entry entryHigherEntry = sortedMap().higherEntry(obj);
            if (entryHigherEntry == null) {
                return null;
            }
            return wrapEntry(entryHigherEntry);
        }

        @Override // java.util.NavigableMap
        public Object higherKey(Object obj) {
            return sortedMap().higherKey(obj);
        }

        @Override // java.util.NavigableMap
        public Map.Entry firstEntry() {
            Map.Entry entryFirstEntry = sortedMap().firstEntry();
            if (entryFirstEntry == null) {
                return null;
            }
            return wrapEntry(entryFirstEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry lastEntry() {
            Map.Entry entryLastEntry = sortedMap().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return wrapEntry(entryLastEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry pollFirstEntry() {
            return pollAsMapEntry(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public Map.Entry pollLastEntry() {
            return pollAsMapEntry(descendingMap().entrySet().iterator());
        }

        Map.Entry pollAsMapEntry(Iterator it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) it.next();
            Collection collectionCreateCollection = AbstractMapBasedMultimap.this.createCollection();
            collectionCreateCollection.addAll((Collection) entry.getValue());
            it.remove();
            return Maps.immutableEntry(entry.getKey(), AbstractMapBasedMultimap.this.unmodifiableCollectionSubclass(collectionCreateCollection));
        }

        @Override // java.util.NavigableMap
        public NavigableMap descendingMap() {
            return AbstractMapBasedMultimap.this.new NavigableAsMap(sortedMap().descendingMap());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, com.google.common.collect.AbstractMapBasedMultimap.AsMap, java.util.AbstractMap, java.util.Map
        public NavigableSet keySet() {
            return (NavigableSet) super.keySet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap
        public NavigableSet createKeySet() {
            return AbstractMapBasedMultimap.this.new NavigableKeySet(sortedMap());
        }

        @Override // java.util.NavigableMap
        public NavigableSet navigableKeySet() {
            return keySet();
        }

        @Override // java.util.NavigableMap
        public NavigableSet descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public NavigableMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            return AbstractMapBasedMultimap.this.new NavigableAsMap(sortedMap().subMap(obj, z, obj2, z2));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public NavigableMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap headMap(Object obj, boolean z) {
            return AbstractMapBasedMultimap.this.new NavigableAsMap(sortedMap().headMap(obj, z));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public NavigableMap tailMap(Object obj) {
            return tailMap(obj, true);
        }

        @Override // java.util.NavigableMap
        public NavigableMap tailMap(Object obj, boolean z) {
            return AbstractMapBasedMultimap.this.new NavigableAsMap(sortedMap().tailMap(obj, z));
        }
    }
}
