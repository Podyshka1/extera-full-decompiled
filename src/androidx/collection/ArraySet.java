package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.jvm.internal.markers.KMutableSet;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001f\n\u0002\u0010#\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\u0012\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001EB\u0013\b\u0007\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\u0007J\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001a\u0010\u0010J\u0017\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001b\u0010\u0010J\u0015\u0010\u001c\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\u0004¢\u0006\u0004\b\u001c\u0010\u0017J\u0015\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u001d¢\u0006\u0004\b\u001e\u0010\u001fJ'\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00010\u001d\"\u0004\b\u0001\u0010 2\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00010\u001d¢\u0006\u0004\b\u001e\u0010\"J\u001a\u0010$\u001a\u00020\u000e2\b\u0010#\u001a\u0004\u0018\u00010\u0011H\u0096\u0002¢\u0006\u0004\b$\u0010\u0010J\u000f\u0010%\u001a\u00020\u0004H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)J\u0016\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0096\u0002¢\u0006\u0004\b+\u0010,J\u001d\u0010/\u001a\u00020\u000e2\f\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000-H\u0016¢\u0006\u0004\b/\u00100J\u001d\u00101\u001a\u00020\u000e2\f\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000-H\u0016¢\u0006\u0004\b1\u00100J\u001d\u00102\u001a\u00020\u000e2\f\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000-H\u0016¢\u0006\u0004\b2\u00100J\u001d\u00103\u001a\u00020\u000e2\f\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000-H\u0016¢\u0006\u0004\b3\u00100R\"\u00105\u001a\u0002048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R*\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b!\u0010;\u001a\u0004\b<\u0010\u001f\"\u0004\b=\u0010>R\"\u0010?\u001a\u00020\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010&\"\u0004\bB\u0010\u0007R\u0014\u0010D\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bC\u0010&¨\u0006F"}, d2 = {"Landroidx/collection/ArraySet;", "E", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "capacity", "<init>", "(I)V", _UrlKt.FRAGMENT_ENCODE_SET, "clear", "()V", "minimumCapacity", "ensureCapacity", "element", _UrlKt.FRAGMENT_ENCODE_SET, "contains", "(Ljava/lang/Object;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "key", "indexOf", "(Ljava/lang/Object;)I", "index", "valueAt", "(I)Ljava/lang/Object;", "isEmpty", "()Z", "add", "remove", "removeAt", _UrlKt.FRAGMENT_ENCODE_SET, "toArray", "()[Ljava/lang/Object;", "T", "array", "([Ljava/lang/Object;)[Ljava/lang/Object;", "other", "equals", "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "iterator", "()Ljava/util/Iterator;", _UrlKt.FRAGMENT_ENCODE_SET, "elements", "containsAll", "(Ljava/util/Collection;)Z", "addAll", "removeAll", "retainAll", _UrlKt.FRAGMENT_ENCODE_SET, "hashes", "[I", "getHashes$collection", "()[I", "setHashes$collection", "([I)V", "[Ljava/lang/Object;", "getArray$collection", "setArray$collection", "([Ljava/lang/Object;)V", "_size", "I", "get_size$collection", "set_size$collection", "getSize", "size", "ElementIterator", "collection"}, m754k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nArraySet.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArraySet.jvm.kt\nandroidx/collection/ArraySet\n+ 2 ArraySet.kt\nandroidx/collection/ArraySetKt\n*L\n1#1,283:1\n288#2,10:284\n301#2,14:294\n318#2:308\n323#2:309\n328#2:310\n333#2:311\n338#2,61:312\n403#2,17:373\n423#2,6:390\n433#2,60:396\n501#2,9:456\n514#2,22:465\n540#2,7:487\n551#2,19:494\n574#2,6:513\n584#2,6:519\n594#2,5:525\n603#2,8:530\n*S KotlinDebug\n*F\n+ 1 ArraySet.jvm.kt\nandroidx/collection/ArraySet\n*L\n89#1:284,10\n98#1:294,14\n108#1:308\n118#1:309\n128#1:310\n133#1:311\n145#1:312,61\n155#1:373,17\n165#1:390,6\n176#1:396,60\n185#1:456,9\n210#1:465,22\n215#1:487,7\n223#1:494,19\n250#1:513,6\n259#1:519,6\n269#1:525,5\n280#1:530,8\n*E\n"})
public final class ArraySet<E> implements Collection<E>, Set<E>, KMutableCollection, KMutableSet {
    private int _size;
    private Object[] array;
    private int[] hashes;

    @JvmOverloads
    public ArraySet() {
        this(0, 1, null);
    }

    @JvmOverloads
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
        return get_size();
    }

    /* JADX INFO: renamed from: getHashes$collection, reason: from getter */
    public final int[] getHashes() {
        return this.hashes;
    }

    public final void setHashes$collection(int[] iArr) {
        this.hashes = iArr;
    }

    /* JADX INFO: renamed from: getArray$collection, reason: from getter */
    public final Object[] getArray() {
        return this.array;
    }

    public final void setArray$collection(Object[] objArr) {
        this.array = objArr;
    }

    public final int get_size$collection() {
        return this._size;
    }

    public final void set_size$collection(int i) {
        this._size = i;
    }

    /* JADX INFO: renamed from: getSize, reason: from getter */
    public int get_size() {
        return this._size;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return ArraysKt.copyOfRange(this.array, 0, this._size);
    }

    @Override // java.util.Collection, java.util.Set
    public final <T> T[] toArray(T[] array) {
        T[] tArr = (T[]) ArraySetJvmUtil.resizeForToArray(array, this._size);
        ArraysKt.copyInto(this.array, tArr, 0, 0, this._size);
        return tArr;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return new ElementIterator();
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0014¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0005H\u0014¨\u0006\t"}, d2 = {"Landroidx/collection/ArraySet$ElementIterator;", "Landroidx/collection/IndexBasedArrayIterator;", "(Landroidx/collection/ArraySet;)V", "elementAt", "index", _UrlKt.FRAGMENT_ENCODE_SET, "(I)Ljava/lang/Object;", "removeAt", _UrlKt.FRAGMENT_ENCODE_SET, "collection"}, m754k = 1, mv = {1, 9, 0}, xi = 48)
    public final class ElementIterator extends IndexBasedArrayIterator<E> {
        public ElementIterator() {
            super(ArraySet.this.get_size$collection());
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public E elementAt(int index) {
            return ArraySet.this.valueAt(index);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public void removeAt(int index) {
            ArraySet.this.removeAt(index);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        if (get_size$collection() != 0) {
            setHashes$collection(ContainerHelpersKt.EMPTY_INTS);
            setArray$collection(ContainerHelpersKt.EMPTY_OBJECTS);
            set_size$collection(0);
        }
        if (get_size$collection() == 0) {
            return;
        }
        ArraySet$$ExternalSyntheticBUOutline0.m86m();
    }

    public final void ensureCapacity(int minimumCapacity) {
        int i = get_size$collection();
        if (getHashes().length < minimumCapacity) {
            int[] hashes = getHashes();
            Object[] array = getArray();
            ArraySetKt.allocArrays(this, minimumCapacity);
            if (get_size$collection() > 0) {
                ArraysKt.copyInto$default(hashes, getHashes(), 0, 0, get_size$collection(), 6, (Object) null);
                ArraysKt.copyInto$default(array, getArray(), 0, 0, get_size$collection(), 6, (Object) null);
            }
        }
        if (get_size$collection() == i) {
            return;
        }
        ArraySet$$ExternalSyntheticBUOutline0.m86m();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object element) {
        return indexOf(element) >= 0;
    }

    public final int indexOf(Object key) {
        return key == null ? ArraySetKt.indexOfNull(this) : ArraySetKt.indexOf(this, key, key.hashCode());
    }

    public final E valueAt(int index) {
        return (E) getArray()[index];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return get_size$collection() <= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E element) {
        int i;
        int iIndexOf;
        int i2 = get_size$collection();
        if (element == null) {
            iIndexOf = ArraySetKt.indexOfNull(this);
            i = 0;
        } else {
            int iHashCode = element.hashCode();
            i = iHashCode;
            iIndexOf = ArraySetKt.indexOf(this, element, iHashCode);
        }
        if (iIndexOf >= 0) {
            return false;
        }
        int i3 = ~iIndexOf;
        if (i2 >= getHashes().length) {
            int i4 = 8;
            if (i2 >= 8) {
                i4 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i4 = 4;
            }
            int[] hashes = getHashes();
            Object[] array = getArray();
            ArraySetKt.allocArrays(this, i4);
            if (i2 != get_size$collection()) {
                ArraySet$$ExternalSyntheticBUOutline0.m86m();
                return false;
            }
            if (!(getHashes().length == 0)) {
                ArraysKt.copyInto$default(hashes, getHashes(), 0, 0, hashes.length, 6, (Object) null);
                ArraysKt.copyInto$default(array, getArray(), 0, 0, array.length, 6, (Object) null);
            }
        }
        if (i3 < i2) {
            int i5 = i3 + 1;
            ArraysKt.copyInto(getHashes(), getHashes(), i5, i3, i2);
            ArraysKt.copyInto(getArray(), getArray(), i5, i3, i2);
        }
        if (i2 != get_size$collection() || i3 >= getHashes().length) {
            ArraySet$$ExternalSyntheticBUOutline0.m86m();
            return false;
        }
        getHashes()[i3] = i;
        getArray()[i3] = element;
        set_size$collection(get_size$collection() + 1);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public final E removeAt(int index) {
        int i;
        Object[] objArr;
        int i2 = get_size$collection();
        E e = (E) getArray()[index];
        if (i2 <= 1) {
            clear();
            return e;
        }
        int i3 = i2 - 1;
        if (getHashes().length > 8 && get_size$collection() < getHashes().length / 3) {
            int i4 = get_size$collection() > 8 ? get_size$collection() + (get_size$collection() >> 1) : 8;
            int[] hashes = getHashes();
            Object[] array = getArray();
            ArraySetKt.allocArrays(this, i4);
            if (index > 0) {
                ArraysKt.copyInto$default(hashes, getHashes(), 0, 0, index, 6, (Object) null);
                objArr = array;
                ArraysKt.copyInto$default(objArr, getArray(), 0, 0, index, 6, (Object) null);
                i = index;
            } else {
                i = index;
                objArr = array;
            }
            if (i < i3) {
                int i5 = i + 1;
                ArraysKt.copyInto(hashes, getHashes(), i, i5, i2);
                ArraysKt.copyInto(objArr, getArray(), i, i5, i2);
            }
        } else {
            if (index < i3) {
                int i6 = index + 1;
                ArraysKt.copyInto(getHashes(), getHashes(), index, i6, i2);
                ArraysKt.copyInto(getArray(), getArray(), index, i6, i2);
            }
            getArray()[i3] = null;
        }
        if (i2 != get_size$collection()) {
            ArraySet$$ExternalSyntheticBUOutline0.m86m();
            return null;
        }
        set_size$collection(i3);
        return e;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Set) || size() != ((Set) other).size()) {
            return false;
        }
        try {
            int i = get_size$collection();
            for (int i2 = 0; i2 < i; i2++) {
                if (!((Set) other).contains(valueAt(i2))) {
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
        int[] hashes = getHashes();
        int i = get_size$collection();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += hashes[i3];
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
            E eValueAt = valueAt(i2);
            if (eValueAt != this) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<? extends Object> elements) {
        Iterator<? extends Object> it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> elements) {
        ensureCapacity(get_size$collection() + elements.size());
        Iterator<? extends E> it = elements.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<? extends Object> elements) {
        Iterator<? extends Object> it = elements.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<? extends Object> elements) {
        boolean z = false;
        for (int i = get_size$collection() - 1; -1 < i; i--) {
            if (!CollectionsKt.contains(elements, getArray()[i])) {
                removeAt(i);
                z = true;
            }
        }
        return z;
    }
}
