package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Collections2;
import com.google.common.math.IntMath;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class Sets {

    /* JADX INFO: loaded from: classes5.dex */
    static abstract class ImprovedAbstractSet extends AbstractSet {
        ImprovedAbstractSet() {
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection collection) {
            return Sets.removeAllImpl(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection collection) {
            return super.retainAll((Collection) Preconditions.checkNotNull(collection));
        }
    }

    public static HashSet newHashSet() {
        return new HashSet();
    }

    public static HashSet newHashSetWithExpectedSize(int i) {
        return new HashSet(Maps.capacity(i));
    }

    public static Set newIdentityHashSet() {
        return Collections.newSetFromMap(Maps.newIdentityHashMap());
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static abstract class SetView extends AbstractSet {
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public abstract UnmodifiableIterator iterator();

        abstract int maxSize();

        abstract int minSize();

        private SetView() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            Set set;
            int iMaxSize;
            int iMinSize;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Set) || minSize() > (iMaxSize = maxSize((set = (Set) obj))) || maxSize() < (iMinSize = minSize(set))) {
                return false;
            }
            UnmodifiableIterator it = iterator();
            int i = 0;
            while (it.hasNext()) {
                try {
                    if (!set.contains(it.next())) {
                        return false;
                    }
                    i++;
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            if (i == iMaxSize) {
                return true;
            }
            if (i < iMinSize) {
                return false;
            }
            Iterator it2 = set.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                it2.next();
                i2++;
                if (i2 > i) {
                    return false;
                }
            }
            return true;
        }

        static int minSize(Set set) {
            return set instanceof SetView ? ((SetView) set).minSize() : set.size();
        }

        static int maxSize(Set set) {
            return set instanceof SetView ? ((SetView) set).maxSize() : set.size();
        }
    }

    public static SetView union(final Set set, final Set set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new SetView() { // from class: com.google.common.collect.Sets.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                int size = set.size();
                Iterator it = set2.iterator();
                while (it.hasNext()) {
                    if (!set.contains(it.next())) {
                        size++;
                    }
                }
                return size;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                return set.isEmpty() && set2.isEmpty();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator iterator() {
                return new AbstractIterator(this, set, set2) { // from class: com.google.common.collect.Sets.1.1
                    final Iterator itr1;
                    final Iterator itr2;
                    final /* synthetic */ C18101 this$0;
                    final /* synthetic */ Set val$set1;
                    final /* synthetic */ Set val$set2;

                    {
                        this.val$set1 = set;
                        this.val$set2 = set;
                        this.this$0 = this;
                        this.itr1 = set.iterator();
                        this.itr2 = set.iterator();
                    }

                    @Override // com.google.common.collect.AbstractIterator
                    protected Object computeNext() {
                        if (this.itr1.hasNext()) {
                            return this.itr1.next();
                        }
                        while (this.itr2.hasNext()) {
                            Object next = this.itr2.next();
                            if (!this.val$set1.contains(next)) {
                                return next;
                            }
                        }
                        return endOfData();
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return set.contains(obj) || set2.contains(obj);
            }

            @Override // com.google.common.collect.Sets.SetView
            int minSize() {
                return Math.max(SetView.minSize(set), SetView.minSize(set2));
            }

            @Override // com.google.common.collect.Sets.SetView
            int maxSize() {
                return IntMath.saturatedAdd(SetView.maxSize(set), SetView.maxSize(set2));
            }
        };
    }

    public static SetView intersection(final Set set, final Set set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new SetView() { // from class: com.google.common.collect.Sets.2
            @Override // com.google.common.collect.Sets.SetView
            int minSize() {
                return 0;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public UnmodifiableIterator iterator() {
                return new AbstractIterator(this, set, set2) { // from class: com.google.common.collect.Sets.2.1
                    final Iterator itr;
                    final /* synthetic */ C18112 this$0;
                    final /* synthetic */ Set val$set1;
                    final /* synthetic */ Set val$set2;

                    {
                        this.val$set1 = set;
                        this.val$set2 = set;
                        this.this$0 = this;
                        this.itr = set.iterator();
                    }

                    @Override // com.google.common.collect.AbstractIterator
                    protected Object computeNext() {
                        while (this.itr.hasNext()) {
                            Object next = this.itr.next();
                            if (this.val$set2.contains(next)) {
                                return next;
                            }
                        }
                        return endOfData();
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                Iterator it = set.iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (set2.contains(it.next())) {
                        i++;
                    }
                }
                return i;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                return Collections.disjoint(set2, set);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return set.contains(obj) && set2.contains(obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean containsAll(Collection collection) {
                return set.containsAll(collection) && set2.containsAll(collection);
            }

            @Override // com.google.common.collect.Sets.SetView
            int maxSize() {
                return Math.min(SetView.maxSize(set), SetView.maxSize(set2));
            }
        };
    }

    public static Set filter(Set set, Predicate predicate) {
        if (set instanceof SortedSet) {
            return filter((SortedSet) set, predicate);
        }
        if (set instanceof FilteredSet) {
            FilteredSet filteredSet = (FilteredSet) set;
            return new FilteredSet((Set) filteredSet.unfiltered, Predicates.and(filteredSet.predicate, predicate));
        }
        return new FilteredSet((Set) Preconditions.checkNotNull(set), (Predicate) Preconditions.checkNotNull(predicate));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SortedSet filter(SortedSet sortedSet, Predicate predicate) {
        if (sortedSet instanceof FilteredSet) {
            FilteredSet filteredSet = (FilteredSet) sortedSet;
            return new FilteredSortedSet((SortedSet) filteredSet.unfiltered, Predicates.and(filteredSet.predicate, predicate));
        }
        return new FilteredSortedSet((SortedSet) Preconditions.checkNotNull(sortedSet), (Predicate) Preconditions.checkNotNull(predicate));
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static class FilteredSet extends Collections2.FilteredCollection implements Set {
        FilteredSet(Set set, Predicate predicate) {
            super(set, predicate);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return Sets.equalsImpl(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.hashCodeImpl(this);
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static class FilteredSortedSet extends FilteredSet implements SortedSet {
        FilteredSortedSet(SortedSet sortedSet, Predicate predicate) {
            super(sortedSet, predicate);
        }

        @Override // java.util.SortedSet
        public Comparator comparator() {
            return ((SortedSet) this.unfiltered).comparator();
        }

        @Override // java.util.SortedSet
        public SortedSet subSet(Object obj, Object obj2) {
            return new FilteredSortedSet(((SortedSet) this.unfiltered).subSet(obj, obj2), this.predicate);
        }

        @Override // java.util.SortedSet
        public SortedSet headSet(Object obj) {
            return new FilteredSortedSet(((SortedSet) this.unfiltered).headSet(obj), this.predicate);
        }

        @Override // java.util.SortedSet
        public SortedSet tailSet(Object obj) {
            return new FilteredSortedSet(((SortedSet) this.unfiltered).tailSet(obj), this.predicate);
        }

        @Override // java.util.SortedSet
        public Object first() {
            return Iterators.find(this.unfiltered.iterator(), this.predicate);
        }

        @Override // java.util.SortedSet
        public Object last() {
            SortedSet sortedSetHeadSet = (SortedSet) this.unfiltered;
            while (true) {
                Object objLast = sortedSetHeadSet.last();
                if (this.predicate.apply(objLast)) {
                    return objLast;
                }
                sortedSetHeadSet = sortedSetHeadSet.headSet(objLast);
            }
        }
    }

    static int hashCodeImpl(Set set) {
        Iterator it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i = ~(~(i + (next != null ? next.hashCode() : 0)));
        }
        return i;
    }

    static boolean equalsImpl(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    static boolean removeAllImpl(Set set, Iterator it) {
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= set.remove(it.next());
        }
        return zRemove;
    }

    static boolean removeAllImpl(Set set, Collection collection) {
        Preconditions.checkNotNull(collection);
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        if ((collection instanceof Set) && collection.size() > set.size()) {
            return Iterators.removeAll(set.iterator(), collection);
        }
        return removeAllImpl(set, collection.iterator());
    }
}
