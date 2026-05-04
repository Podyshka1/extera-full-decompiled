package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableIterable;

/* JADX INFO: loaded from: classes.dex */
public final class ArraySet implements Collection, Set, KMutableIterable {
    private int _size;
    private Object[] array;
    private int[] hashes;

    public ArraySet() {
        this(0, 1, null);
    }

    public ArraySet(int i) {
        this.hashes = ContainerHelpersKt.EMPTY_INTS;
        this.array = ContainerHelpersKt.EMPTY_OBJECTS;
        if (i > 0) {
            ArraySetKt.allocArrays(this, i);
        }
    }

    public /* synthetic */ ArraySet(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    @Override // java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return getSize();
    }

    public final int[] getHashes$collection() {
        return this.hashes;
    }

    public final void setHashes$collection(int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<set-?>");
        this.hashes = iArr;
    }

    public final Object[] getArray$collection() {
        return this.array;
    }

    public final void setArray$collection(Object[] objArr) {
        Intrinsics.checkNotNullParameter(objArr, "<set-?>");
        this.array = objArr;
    }

    public final int get_size$collection() {
        return this._size;
    }

    public final void set_size$collection(int i) {
        this._size = i;
    }

    public int getSize() {
        return this._size;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return ArraysKt.copyOfRange(this.array, 0, this._size);
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        Object[] objArrResizeForToArray = ArraySetJvmUtil.resizeForToArray(array, this._size);
        ArraysKt.copyInto(this.array, objArrResizeForToArray, 0, 0, this._size);
        Intrinsics.checkNotNull(objArrResizeForToArray);
        return objArrResizeForToArray;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return new ElementIterator();
    }

    private final class ElementIterator extends IndexBasedArrayIterator {
        public ElementIterator() {
            super(ArraySet.this.get_size$collection());
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        protected Object elementAt(int i) {
            return ArraySet.this.valueAt(i);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        protected void removeAt(int i) {
            ArraySet.this.removeAt(i);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        if (get_size$collection() != 0) {
            setHashes$collection(ContainerHelpersKt.EMPTY_INTS);
            setArray$collection(ContainerHelpersKt.EMPTY_OBJECTS);
            set_size$collection(0);
        }
        if (get_size$collection() != 0) {
            throw new ConcurrentModificationException();
        }
    }

    public final void ensureCapacity(int i) {
        int i2 = get_size$collection();
        if (getHashes$collection().length < i) {
            int[] hashes$collection = getHashes$collection();
            Object[] array$collection = getArray$collection();
            ArraySetKt.allocArrays(this, i);
            if (get_size$collection() > 0) {
                ArraysKt.copyInto$default(hashes$collection, getHashes$collection(), 0, 0, get_size$collection(), 6, (Object) null);
                ArraysKt.copyInto$default(array$collection, getArray$collection(), 0, 0, get_size$collection(), 6, (Object) null);
            }
        }
        if (get_size$collection() != i2) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    public final int indexOf(Object obj) {
        return obj == null ? ArraySetKt.indexOfNull(this) : ArraySetKt.indexOf(this, obj, obj.hashCode());
    }

    public final Object valueAt(int i) {
        return getArray$collection()[i];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return get_size$collection() <= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(Object obj) {
        int i;
        int iIndexOf;
        int i2 = get_size$collection();
        if (obj == null) {
            iIndexOf = ArraySetKt.indexOfNull(this);
            i = 0;
        } else {
            int iHashCode = obj.hashCode();
            i = iHashCode;
            iIndexOf = ArraySetKt.indexOf(this, obj, iHashCode);
        }
        if (iIndexOf >= 0) {
            return false;
        }
        int i3 = ~iIndexOf;
        if (i2 >= getHashes$collection().length) {
            int i4 = 8;
            if (i2 >= 8) {
                i4 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i4 = 4;
            }
            int[] hashes$collection = getHashes$collection();
            Object[] array$collection = getArray$collection();
            ArraySetKt.allocArrays(this, i4);
            if (i2 != get_size$collection()) {
                throw new ConcurrentModificationException();
            }
            if (!(getHashes$collection().length == 0)) {
                ArraysKt.copyInto$default(hashes$collection, getHashes$collection(), 0, 0, hashes$collection.length, 6, (Object) null);
                ArraysKt.copyInto$default(array$collection, getArray$collection(), 0, 0, array$collection.length, 6, (Object) null);
            }
        }
        if (i3 < i2) {
            int i5 = i3 + 1;
            ArraysKt.copyInto(getHashes$collection(), getHashes$collection(), i5, i3, i2);
            ArraysKt.copyInto(getArray$collection(), getArray$collection(), i5, i3, i2);
        }
        if (i2 != get_size$collection() || i3 >= getHashes$collection().length) {
            throw new ConcurrentModificationException();
        }
        getHashes$collection()[i3] = i;
        getArray$collection()[i3] = obj;
        set_size$collection(get_size$collection() + 1);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public final Object removeAt(int i) {
        int i2;
        Object[] objArr;
        int i3 = get_size$collection();
        Object obj = getArray$collection()[i];
        if (i3 <= 1) {
            clear();
            return obj;
        }
        int i4 = i3 - 1;
        if (getHashes$collection().length > 8 && get_size$collection() < getHashes$collection().length / 3) {
            int i5 = get_size$collection() > 8 ? get_size$collection() + (get_size$collection() >> 1) : 8;
            int[] hashes$collection = getHashes$collection();
            Object[] array$collection = getArray$collection();
            ArraySetKt.allocArrays(this, i5);
            if (i > 0) {
                ArraysKt.copyInto$default(hashes$collection, getHashes$collection(), 0, 0, i, 6, (Object) null);
                objArr = array$collection;
                ArraysKt.copyInto$default(objArr, getArray$collection(), 0, 0, i, 6, (Object) null);
                i2 = i;
            } else {
                i2 = i;
                objArr = array$collection;
            }
            if (i2 < i4) {
                int i6 = i2 + 1;
                ArraysKt.copyInto(hashes$collection, getHashes$collection(), i2, i6, i3);
                ArraysKt.copyInto(objArr, getArray$collection(), i2, i6, i3);
            }
        } else {
            if (i < i4) {
                int i7 = i + 1;
                ArraysKt.copyInto(getHashes$collection(), getHashes$collection(), i, i7, i3);
                ArraysKt.copyInto(getArray$collection(), getArray$collection(), i, i7, i3);
            }
            getArray$collection()[i4] = null;
        }
        if (i3 != get_size$collection()) {
            throw new ConcurrentModificationException();
        }
        set_size$collection(i4);
        return obj;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set) || size() != ((Set) obj).size()) {
            return false;
        }
        try {
            int i = get_size$collection();
            for (int i2 = 0; i2 < i; i2++) {
                if (!((Set) obj).contains(valueAt(i2))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] hashes$collection = getHashes$collection();
        int i = get_size$collection();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += hashes$collection[i3];
        }
        return i2;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(get_size$collection() * 14);
        sb.append('{');
        int i = get_size$collection();
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object objValueAt = valueAt(i2);
            if (objValueAt != this) {
                sb.append(objValueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        ensureCapacity(get_size$collection() + elements.size());
        Iterator it = elements.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator it = elements.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z = false;
        for (int i = get_size$collection() - 1; -1 < i; i--) {
            if (!CollectionsKt.contains(elements, getArray$collection()[i])) {
                removeAt(i);
                z = true;
            }
        }
        return z;
    }
}
