package kotlin.collections.builders;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.collections.AbstractList;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableList;

/* JADX INFO: loaded from: classes.dex */
public final class ListBuilder extends AbstractMutableList implements List, RandomAccess, Serializable, KMutableList {
    private static final Companion Companion = new Companion(null);
    private static final ListBuilder Empty;
    private Object[] backing;
    private boolean isReadOnly;
    private int length;

    public ListBuilder(int i) {
        this.backing = ListBuilderKt.arrayOfUninitializedElements(i);
    }

    public /* synthetic */ ListBuilder(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 10 : i);
    }

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        ListBuilder listBuilder = new ListBuilder(0);
        listBuilder.isReadOnly = true;
        Empty = listBuilder;
    }

    public final List build() {
        checkIsMutable();
        this.isReadOnly = true;
        return this.length > 0 ? this : Empty;
    }

    @Override // kotlin.collections.AbstractMutableList
    public int getSize() {
        return this.length;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.length == 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i, this.length);
        return this.backing[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        checkIsMutable();
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i, this.length);
        Object[] objArr = this.backing;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        for (int i = 0; i < this.length; i++) {
            if (Intrinsics.areEqual(this.backing[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        for (int i = this.length - 1; i >= 0; i--) {
            if (Intrinsics.areEqual(this.backing[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator(int i) {
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i, this.length);
        return new Itr(this, i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        checkIsMutable();
        addAtInternal(this.length, obj);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        checkIsMutable();
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i, this.length);
        addAtInternal(i, obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        checkIsMutable();
        int size = elements.size();
        addAllInternal(this.length, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        checkIsMutable();
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i, this.length);
        int size = elements.size();
        addAllInternal(i, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        checkIsMutable();
        removeRangeInternal(0, this.length);
    }

    @Override // kotlin.collections.AbstractMutableList
    public Object removeAt(int i) {
        checkIsMutable();
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i, this.length);
        return removeAtInternal(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        checkIsMutable();
        int iIndexOf = indexOf(obj);
        if (iIndexOf >= 0) {
            removeAt(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        checkIsMutable();
        return retainOrRemoveAllInternal(0, this.length, elements, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        checkIsMutable();
        return retainOrRemoveAllInternal(0, this.length, elements, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public List subList(int i, int i2) {
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i, i2, this.length);
        return new BuilderSubList(this.backing, i, i2 - i, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray(Object[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        int length = array.length;
        int i = this.length;
        if (length < i) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(this.backing, 0, i, array.getClass());
            Intrinsics.checkNotNullExpressionValue(objArrCopyOfRange, "copyOfRange(...)");
            return objArrCopyOfRange;
        }
        ArraysKt.copyInto(this.backing, array, 0, 0, i);
        return CollectionsKt.terminateCollectionToArray(this.length, array);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return ArraysKt.copyOfRange(this.backing, 0, this.length);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof List) && contentEquals((List) obj);
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        return ListBuilderKt.subarrayContentHashCode(this.backing, 0, this.length);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return ListBuilderKt.subarrayContentToString(this.backing, 0, this.length, this);
    }

    private final void registerModification() {
        ((java.util.AbstractList) this).modCount++;
    }

    private final void checkIsMutable() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    private final void ensureExtraCapacity(int i) {
        ensureCapacityInternal(this.length + i);
    }

    private final void ensureCapacityInternal(int i) {
        if (i < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.backing;
        if (i > objArr.length) {
            this.backing = ListBuilderKt.copyOfUninitializedElements(this.backing, AbstractList.Companion.newCapacity$kotlin_stdlib(objArr.length, i));
        }
    }

    private final boolean contentEquals(List list) {
        return ListBuilderKt.subarrayContentEquals(this.backing, 0, this.length, list);
    }

    private final void insertAtInternal(int i, int i2) {
        ensureExtraCapacity(i2);
        Object[] objArr = this.backing;
        ArraysKt.copyInto(objArr, objArr, i + i2, i, this.length);
        this.length += i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addAtInternal(int i, Object obj) {
        registerModification();
        insertAtInternal(i, 1);
        this.backing[i] = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addAllInternal(int i, Collection collection, int i2) {
        registerModification();
        insertAtInternal(i, i2);
        Iterator it = collection.iterator();
        for (int i3 = 0; i3 < i2; i3++) {
            this.backing[i + i3] = it.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object removeAtInternal(int i) {
        registerModification();
        Object[] objArr = this.backing;
        Object obj = objArr[i];
        ArraysKt.copyInto(objArr, objArr, i, i + 1, this.length);
        ListBuilderKt.resetAt(this.backing, this.length - 1);
        this.length--;
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeRangeInternal(int i, int i2) {
        if (i2 > 0) {
            registerModification();
        }
        Object[] objArr = this.backing;
        ArraysKt.copyInto(objArr, objArr, i, i + i2, this.length);
        Object[] objArr2 = this.backing;
        int i3 = this.length;
        ListBuilderKt.resetRange(objArr2, i3 - i2, i3);
        this.length -= i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int retainOrRemoveAllInternal(int i, int i2, Collection collection, boolean z) {
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i + i3;
            if (collection.contains(this.backing[i5]) == z) {
                Object[] objArr = this.backing;
                i3++;
                objArr[i4 + i] = objArr[i5];
                i4++;
            } else {
                i3++;
            }
        }
        int i6 = i2 - i4;
        Object[] objArr2 = this.backing;
        ArraysKt.copyInto(objArr2, objArr2, i + i4, i2 + i, this.length);
        Object[] objArr3 = this.backing;
        int i7 = this.length;
        ListBuilderKt.resetRange(objArr3, i7 - i6, i7);
        if (i6 > 0) {
            registerModification();
        }
        this.length -= i6;
        return i6;
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static final class Itr implements ListIterator, KMappedMarker {
        private int expectedModCount;
        private int index;
        private int lastIndex;
        private final ListBuilder list;

        public Itr(ListBuilder list, int i) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.list = list;
            this.index = i;
            this.lastIndex = -1;
            this.expectedModCount = ((java.util.AbstractList) list).modCount;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.index > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.index < this.list.length;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.index - 1;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.index;
        }

        @Override // java.util.ListIterator
        public Object previous() {
            checkForComodification();
            int i = this.index;
            if (i <= 0) {
                throw new NoSuchElementException();
            }
            int i2 = i - 1;
            this.index = i2;
            this.lastIndex = i2;
            return this.list.backing[this.lastIndex];
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            checkForComodification();
            if (this.index >= this.list.length) {
                throw new NoSuchElementException();
            }
            int i = this.index;
            this.index = i + 1;
            this.lastIndex = i;
            return this.list.backing[this.lastIndex];
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            checkForComodification();
            int i = this.lastIndex;
            if (i == -1) {
                throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
            }
            this.list.set(i, obj);
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            checkForComodification();
            ListBuilder listBuilder = this.list;
            int i = this.index;
            this.index = i + 1;
            listBuilder.add(i, obj);
            this.lastIndex = -1;
            this.expectedModCount = ((java.util.AbstractList) this.list).modCount;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            checkForComodification();
            int i = this.lastIndex;
            if (i == -1) {
                throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
            }
            this.list.removeAt(i);
            this.index = this.lastIndex;
            this.lastIndex = -1;
            this.expectedModCount = ((java.util.AbstractList) this.list).modCount;
        }

        private final void checkForComodification() {
            if (((java.util.AbstractList) this.list).modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class BuilderSubList extends AbstractMutableList implements List, RandomAccess, Serializable, KMutableList {
        private Object[] backing;
        private int length;
        private final int offset;
        private final BuilderSubList parent;
        private final ListBuilder root;

        public BuilderSubList(Object[] backing, int i, int i2, BuilderSubList builderSubList, ListBuilder root) {
            Intrinsics.checkNotNullParameter(backing, "backing");
            Intrinsics.checkNotNullParameter(root, "root");
            this.backing = backing;
            this.offset = i;
            this.length = i2;
            this.parent = builderSubList;
            this.root = root;
            ((java.util.AbstractList) this).modCount = ((java.util.AbstractList) root).modCount;
        }

        @Override // kotlin.collections.AbstractMutableList
        public int getSize() {
            checkForComodification();
            return this.length;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            checkForComodification();
            return this.length == 0;
        }

        @Override // java.util.AbstractList, java.util.List
        public Object get(int i) {
            checkForComodification();
            AbstractList.Companion.checkElementIndex$kotlin_stdlib(i, this.length);
            return this.backing[this.offset + i];
        }

        @Override // java.util.AbstractList, java.util.List
        public Object set(int i, Object obj) {
            checkIsMutable();
            checkForComodification();
            AbstractList.Companion.checkElementIndex$kotlin_stdlib(i, this.length);
            Object[] objArr = this.backing;
            int i2 = this.offset;
            Object obj2 = objArr[i2 + i];
            objArr[i2 + i] = obj;
            return obj2;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            checkForComodification();
            for (int i = 0; i < this.length; i++) {
                if (Intrinsics.areEqual(this.backing[this.offset + i], obj)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            checkForComodification();
            for (int i = this.length - 1; i >= 0; i--) {
                if (Intrinsics.areEqual(this.backing[this.offset + i], obj)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator iterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator listIterator(int i) {
            checkForComodification();
            AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i, this.length);
            return new Itr(this, i);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean add(Object obj) {
            checkIsMutable();
            checkForComodification();
            addAtInternal(this.offset + this.length, obj);
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i, Object obj) {
            checkIsMutable();
            checkForComodification();
            AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i, this.length);
            addAtInternal(this.offset + i, obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean addAll(Collection elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            checkIsMutable();
            checkForComodification();
            int size = elements.size();
            addAllInternal(this.offset + this.length, elements, size);
            return size > 0;
        }

        @Override // java.util.AbstractList, java.util.List
        public boolean addAll(int i, Collection elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            checkIsMutable();
            checkForComodification();
            AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i, this.length);
            int size = elements.size();
            addAllInternal(this.offset + i, elements, size);
            return size > 0;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            checkIsMutable();
            checkForComodification();
            removeRangeInternal(this.offset, this.length);
        }

        @Override // kotlin.collections.AbstractMutableList
        public Object removeAt(int i) {
            checkIsMutable();
            checkForComodification();
            AbstractList.Companion.checkElementIndex$kotlin_stdlib(i, this.length);
            return removeAtInternal(this.offset + i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean remove(Object obj) {
            checkIsMutable();
            checkForComodification();
            int iIndexOf = indexOf(obj);
            if (iIndexOf >= 0) {
                removeAt(iIndexOf);
            }
            return iIndexOf >= 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean removeAll(Collection elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            checkIsMutable();
            checkForComodification();
            return retainOrRemoveAllInternal(this.offset, this.length, elements, false) > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean retainAll(Collection elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            checkIsMutable();
            checkForComodification();
            return retainOrRemoveAllInternal(this.offset, this.length, elements, true) > 0;
        }

        @Override // java.util.AbstractList, java.util.List
        public List subList(int i, int i2) {
            AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i, i2, this.length);
            return new BuilderSubList(this.backing, this.offset + i, i2 - i, this, this.root);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public Object[] toArray(Object[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            checkForComodification();
            int length = array.length;
            int i = this.length;
            if (length < i) {
                Object[] objArr = this.backing;
                int i2 = this.offset;
                Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i2, i + i2, array.getClass());
                Intrinsics.checkNotNullExpressionValue(objArrCopyOfRange, "copyOfRange(...)");
                return objArrCopyOfRange;
            }
            Object[] objArr2 = this.backing;
            int i3 = this.offset;
            ArraysKt.copyInto(objArr2, array, 0, i3, i + i3);
            return CollectionsKt.terminateCollectionToArray(this.length, array);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public Object[] toArray() {
            checkForComodification();
            Object[] objArr = this.backing;
            int i = this.offset;
            return ArraysKt.copyOfRange(objArr, i, this.length + i);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            checkForComodification();
            if (obj != this) {
                return (obj instanceof List) && contentEquals((List) obj);
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            checkForComodification();
            return ListBuilderKt.subarrayContentHashCode(this.backing, this.offset, this.length);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            checkForComodification();
            return ListBuilderKt.subarrayContentToString(this.backing, this.offset, this.length, this);
        }

        private final void registerModification() {
            ((java.util.AbstractList) this).modCount++;
        }

        private final void checkForComodification() {
            if (((java.util.AbstractList) this.root).modCount != ((java.util.AbstractList) this).modCount) {
                throw new ConcurrentModificationException();
            }
        }

        private final void checkIsMutable() {
            if (isReadOnly()) {
                throw new UnsupportedOperationException();
            }
        }

        private final boolean isReadOnly() {
            return this.root.isReadOnly;
        }

        private final boolean contentEquals(List list) {
            return ListBuilderKt.subarrayContentEquals(this.backing, this.offset, this.length, list);
        }

        private final void addAtInternal(int i, Object obj) {
            registerModification();
            BuilderSubList builderSubList = this.parent;
            if (builderSubList == null) {
                this.root.addAtInternal(i, obj);
            } else {
                builderSubList.addAtInternal(i, obj);
            }
            this.backing = this.root.backing;
            this.length++;
        }

        private final void addAllInternal(int i, Collection collection, int i2) {
            registerModification();
            BuilderSubList builderSubList = this.parent;
            if (builderSubList == null) {
                this.root.addAllInternal(i, collection, i2);
            } else {
                builderSubList.addAllInternal(i, collection, i2);
            }
            this.backing = this.root.backing;
            this.length += i2;
        }

        private final Object removeAtInternal(int i) {
            Object objRemoveAtInternal;
            registerModification();
            BuilderSubList builderSubList = this.parent;
            if (builderSubList == null) {
                objRemoveAtInternal = this.root.removeAtInternal(i);
            } else {
                objRemoveAtInternal = builderSubList.removeAtInternal(i);
            }
            this.length--;
            return objRemoveAtInternal;
        }

        private final void removeRangeInternal(int i, int i2) {
            if (i2 > 0) {
                registerModification();
            }
            BuilderSubList builderSubList = this.parent;
            if (builderSubList == null) {
                this.root.removeRangeInternal(i, i2);
            } else {
                builderSubList.removeRangeInternal(i, i2);
            }
            this.length -= i2;
        }

        private final int retainOrRemoveAllInternal(int i, int i2, Collection collection, boolean z) {
            int iRetainOrRemoveAllInternal;
            BuilderSubList builderSubList = this.parent;
            if (builderSubList == null) {
                iRetainOrRemoveAllInternal = this.root.retainOrRemoveAllInternal(i, i2, collection, z);
            } else {
                iRetainOrRemoveAllInternal = builderSubList.retainOrRemoveAllInternal(i, i2, collection, z);
            }
            if (iRetainOrRemoveAllInternal > 0) {
                registerModification();
            }
            this.length -= iRetainOrRemoveAllInternal;
            return iRetainOrRemoveAllInternal;
        }

        private static final class Itr implements ListIterator, KMappedMarker {
            private int expectedModCount;
            private int index;
            private int lastIndex;
            private final BuilderSubList list;

            public Itr(BuilderSubList list, int i) {
                Intrinsics.checkNotNullParameter(list, "list");
                this.list = list;
                this.index = i;
                this.lastIndex = -1;
                this.expectedModCount = ((java.util.AbstractList) list).modCount;
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return this.index > 0;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public boolean hasNext() {
                return this.index < this.list.length;
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return this.index - 1;
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return this.index;
            }

            @Override // java.util.ListIterator
            public Object previous() {
                checkForComodification();
                int i = this.index;
                if (i <= 0) {
                    throw new NoSuchElementException();
                }
                int i2 = i - 1;
                this.index = i2;
                this.lastIndex = i2;
                return this.list.backing[this.list.offset + this.lastIndex];
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public Object next() {
                checkForComodification();
                if (this.index >= this.list.length) {
                    throw new NoSuchElementException();
                }
                int i = this.index;
                this.index = i + 1;
                this.lastIndex = i;
                return this.list.backing[this.list.offset + this.lastIndex];
            }

            @Override // java.util.ListIterator
            public void set(Object obj) {
                checkForComodification();
                int i = this.lastIndex;
                if (i == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                this.list.set(i, obj);
            }

            @Override // java.util.ListIterator
            public void add(Object obj) {
                checkForComodification();
                BuilderSubList builderSubList = this.list;
                int i = this.index;
                this.index = i + 1;
                builderSubList.add(i, obj);
                this.lastIndex = -1;
                this.expectedModCount = ((java.util.AbstractList) this.list).modCount;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public void remove() {
                checkForComodification();
                int i = this.lastIndex;
                if (i == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                this.list.removeAt(i);
                this.index = this.lastIndex;
                this.lastIndex = -1;
                this.expectedModCount = ((java.util.AbstractList) this.list).modCount;
            }

            private final void checkForComodification() {
                if (((java.util.AbstractList) this.list.root).modCount != this.expectedModCount) {
                    throw new ConcurrentModificationException();
                }
            }
        }
    }
}
