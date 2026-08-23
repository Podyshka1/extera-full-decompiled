package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractList extends AbstractCollection implements List, KMappedMarker {
    public static final Companion Companion = new Companion(null);

    @Override // java.util.List
    public void add(int i, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public abstract Object get(int i);

    @Override // java.util.List
    public Object remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public Object set(int i, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    protected AbstractList() {
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return new IteratorImpl();
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return new ListIteratorImpl(0);
    }

    @Override // java.util.List
    public ListIterator listIterator(int i) {
        return new ListIteratorImpl(i);
    }

    @Override // java.util.List
    public List subList(int i, int i2) {
        return new SubList(this, i, i2);
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static final class SubList extends AbstractList implements RandomAccess {
        private int _size;
        private final int fromIndex;
        private final AbstractList list;

        public SubList(AbstractList list, int i, int i2) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.list = list;
            this.fromIndex = i;
            AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i, i2, list.size());
            this._size = i2 - i;
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public Object get(int i) {
            AbstractList.Companion.checkElementIndex$kotlin_stdlib(i, this._size);
            return this.list.get(this.fromIndex + i);
        }

        @Override // kotlin.collections.AbstractCollection
        public int getSize() {
            return this._size;
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public List subList(int i, int i2) {
            AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i, i2, this._size);
            AbstractList abstractList = this.list;
            int i3 = this.fromIndex;
            return new SubList(abstractList, i + i3, i3 + i2);
        }
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            return Companion.orderedEquals$kotlin_stdlib(this, (Collection) obj);
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return Companion.orderedHashCode$kotlin_stdlib(this);
    }

    /* JADX INFO: loaded from: classes5.dex */
    private class IteratorImpl implements Iterator, KMappedMarker {
        private int index;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public IteratorImpl() {
        }

        protected final int getIndex() {
            return this.index;
        }

        protected final void setIndex(int i) {
            this.index = i;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < AbstractList.this.size();
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            AbstractList abstractList = AbstractList.this;
            int i = this.index;
            this.index = i + 1;
            return abstractList.get(i);
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    private class ListIteratorImpl extends IteratorImpl implements ListIterator, KMappedMarker {
        @Override // java.util.ListIterator
        public void add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public ListIteratorImpl(int i) {
            super();
            AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i, AbstractList.this.size());
            setIndex(i);
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return getIndex() > 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return getIndex();
        }

        @Override // java.util.ListIterator
        public Object previous() {
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            AbstractList abstractList = AbstractList.this;
            setIndex(getIndex() - 1);
            return abstractList.get(getIndex());
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return getIndex() - 1;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int newCapacity$kotlin_stdlib(int i, int i2) {
            int i3 = i + (i >> 1);
            if (i3 - i2 < 0) {
                i3 = i2;
            }
            return i3 - 2147483639 > 0 ? i2 > 2147483639 ? Integer.MAX_VALUE : 2147483639 : i3;
        }

        private Companion() {
        }

        public final void checkElementIndex$kotlin_stdlib(int i, int i2) {
            if (i < 0 || i >= i2) {
                throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
            }
        }

        public final void checkPositionIndex$kotlin_stdlib(int i, int i2) {
            if (i < 0 || i > i2) {
                throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
            }
        }

        public final void checkRangeIndexes$kotlin_stdlib(int i, int i2, int i3) {
            if (i < 0 || i2 > i3) {
                throw new IndexOutOfBoundsException("fromIndex: " + i + ", toIndex: " + i2 + ", size: " + i3);
            }
            if (i <= i2) {
                return;
            }
            throw new IllegalArgumentException("fromIndex: " + i + " > toIndex: " + i2);
        }

        public final void checkBoundsIndexes$kotlin_stdlib(int i, int i2, int i3) {
            if (i < 0 || i2 > i3) {
                throw new IndexOutOfBoundsException("startIndex: " + i + ", endIndex: " + i2 + ", size: " + i3);
            }
            if (i <= i2) {
                return;
            }
            throw new IllegalArgumentException("startIndex: " + i + " > endIndex: " + i2);
        }

        public final int orderedHashCode$kotlin_stdlib(Collection c) {
            Intrinsics.checkNotNullParameter(c, "c");
            Iterator it = c.iterator();
            int iHashCode = 1;
            while (it.hasNext()) {
                Object next = it.next();
                iHashCode = (iHashCode * 31) + (next != null ? next.hashCode() : 0);
            }
            return iHashCode;
        }

        public final boolean orderedEquals$kotlin_stdlib(Collection c, Collection other) {
            Intrinsics.checkNotNullParameter(c, "c");
            Intrinsics.checkNotNullParameter(other, "other");
            if (c.size() != other.size()) {
                return false;
            }
            Iterator it = other.iterator();
            Iterator it2 = c.iterator();
            while (it2.hasNext()) {
                if (!Intrinsics.areEqual(it2.next(), it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public int indexOf(Object obj) {
        Iterator it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (Intrinsics.areEqual(it.next(), obj)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public int lastIndexOf(Object obj) {
        ListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (Intrinsics.areEqual(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }
}
