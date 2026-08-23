package kotlin.collections;

import com.android.dex.Dex$$ExternalSyntheticBUOutline0;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.io.encoding.Base64$$ExternalSyntheticBUOutline0;
import kotlin.io.encoding.Base64$$ExternalSyntheticBUOutline1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal.url._UrlKt;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
@SinceKotlin(version = "1.1")
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010(\n\u0002\b\u0005\n\u0002\u0010*\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\b'\u0018\u0000  *\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0004\u001d\u001e\u001f B\t\bD¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\n\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00020\u0007H¦\u0082\u0004¢\u0006\u0002\u0010\fJ\u0010\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0096\u0082\u0004J\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00028\u0000H\u0096\u0080\u0004¢\u0006\u0002\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00028\u0000H\u0096\u0080\u0004¢\u0006\u0002\u0010\u0011J\u0010\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0096\u0080\u0004J\u0018\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010\u000b\u001a\u00020\u0007H\u0096\u0080\u0004J \u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007H\u0096\u0080\u0004J\u0014\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0082\u0004J\n\u0010\u001c\u001a\u00020\u0007H\u0096\u0080\u0004R\u0013\u0010\u0006\u001a\u00020\u0007X¦\u0084\b¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006!"}, d2 = {"Lkotlin/collections/AbstractList;", "E", "Lkotlin/collections/AbstractCollection;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "size", _UrlKt.FRAGMENT_ENCODE_SET, "getSize", "()I", "get", "index", "(I)Ljava/lang/Object;", "iterator", _UrlKt.FRAGMENT_ENCODE_SET, "indexOf", "element", "(Ljava/lang/Object;)I", "lastIndexOf", "listIterator", _UrlKt.FRAGMENT_ENCODE_SET, "subList", "fromIndex", "toIndex", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "SubList", "IteratorImpl", "ListIteratorImpl", "Companion", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAbstractList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractList.kt\nkotlin/collections/AbstractList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n363#2,7:182\n391#2,7:189\n*S KotlinDebug\n*F\n+ 1 AbstractList.kt\nkotlin/collections/AbstractList\n*L\n27#1:182,7\n29#1:189,7\n*E\n"})
public abstract class AbstractList<E> extends AbstractCollection<E> implements List<E>, KMappedMarker {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int maxArraySize = 2147483639;

    @Override // java.util.List
    public void add(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public abstract E get(int index);

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: getSize */
    public abstract int get_size();

    @Override // java.util.List
    public E remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public E set(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new IteratorImpl();
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return new ListIteratorImpl(0);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int index) {
        return new ListIteratorImpl(index);
    }

    @Override // java.util.List
    public List<E> subList(int fromIndex, int toIndex) {
        return new SubList(this, fromIndex, toIndex);
    }

    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010 \n\u0000\b\u0002\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B'\bF\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00028\u00012\u0006\u0010\r\u001a\u00020\u0007H\u0096\u0082\u0004¢\u0006\u0002\u0010\u000eJ \u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00010\u00132\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0096\u0080\u0004R\u0015\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0006\u001a\u00020\u0007X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\u000b\u001a\u00020\u0007X\u0082\u008e\b¢\u0006\u0002\n\u0000R\u0015\u0010\u000f\u001a\u00020\u00078VX\u0096\u0084\b¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lkotlin/collections/AbstractList$SubList;", "E", "Lkotlin/collections/AbstractList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "list", "fromIndex", _UrlKt.FRAGMENT_ENCODE_SET, "toIndex", "<init>", "(Lkotlin/collections/AbstractList;II)V", "_size", "get", "index", "(I)Ljava/lang/Object;", "size", "getSize", "()I", "subList", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SubList<E> extends AbstractList<E> implements RandomAccess {
        private int _size;
        private final int fromIndex;
        private final AbstractList<E> list;

        /* JADX WARN: Multi-variable type inference failed */
        public SubList(AbstractList<? extends E> abstractList, int i, int i2) {
            this.list = abstractList;
            this.fromIndex = i;
            AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(i, i2, abstractList.size());
            this._size = i2 - i;
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public E get(int index) {
            AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, this._size);
            return this.list.get(this.fromIndex + index);
        }

        @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
        /* JADX INFO: renamed from: getSize, reason: from getter */
        public int get_size() {
            return this._size;
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public List<E> subList(int fromIndex, int toIndex) {
            AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(fromIndex, toIndex, this._size);
            AbstractList<E> abstractList = this.list;
            int i = this.fromIndex;
            return new SubList(abstractList, fromIndex + i, i + toIndex);
        }
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof List) {
            return INSTANCE.orderedEquals$kotlin_stdlib(this, (Collection) other);
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return INSTANCE.orderedHashCode$kotlin_stdlib(this);
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0092\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\t\bF¢\u0006\u0004\b\u0002\u0010\u0003J\n\u0010\n\u001a\u00020\u000bH\u0096\u0082\u0004J\u000f\u0010\f\u001a\u00028\u0000H\u0096\u0082\u0004¢\u0006\u0002\u0010\rR\u001b\u0010\u0004\u001a\u00020\u0005X\u0084\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lkotlin/collections/AbstractList$IteratorImpl;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lkotlin/collections/AbstractList;)V", "index", _UrlKt.FRAGMENT_ENCODE_SET, "getIndex", "()I", "setIndex", "(I)V", "hasNext", _UrlKt.FRAGMENT_ENCODE_SET, "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public class IteratorImpl implements Iterator<E>, KMappedMarker {
        private int index;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public IteratorImpl() {
        }

        public final int getIndex() {
            return this.index;
        }

        public final void setIndex(int i) {
            this.index = i;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < AbstractList.this.size();
        }

        @Override // java.util.Iterator
        public E next() {
            if (!hasNext()) {
                Utils$$ExternalSyntheticBUOutline0.m978m();
                return null;
            }
            AbstractList<E> abstractList = AbstractList.this;
            int i = this.index;
            this.index = i + 1;
            return abstractList.get(i);
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010*\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0092\u0004\u0018\u00002\f0\u0001R\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0011\bF\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\n\u0010\b\u001a\u00020\tH\u0096\u0080\u0004J\n\u0010\n\u001a\u00020\u0005H\u0096\u0080\u0004J\u000f\u0010\u000b\u001a\u00028\u0000H\u0096\u0080\u0004¢\u0006\u0002\u0010\fJ\n\u0010\r\u001a\u00020\u0005H\u0096\u0080\u0004¨\u0006\u000e"}, d2 = {"Lkotlin/collections/AbstractList$ListIteratorImpl;", "Lkotlin/collections/AbstractList$IteratorImpl;", "Lkotlin/collections/AbstractList;", _UrlKt.FRAGMENT_ENCODE_SET, "index", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lkotlin/collections/AbstractList;I)V", "hasPrevious", _UrlKt.FRAGMENT_ENCODE_SET, "nextIndex", "previous", "()Ljava/lang/Object;", "previousIndex", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public class ListIteratorImpl extends AbstractList<E>.IteratorImpl implements ListIterator<E>, KMappedMarker {
        @Override // java.util.ListIterator
        public void add(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public void set(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public ListIteratorImpl(int i) {
            super();
            AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(i, AbstractList.this.size());
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
        public E previous() {
            if (!hasPrevious()) {
                Utils$$ExternalSyntheticBUOutline0.m978m();
                return null;
            }
            AbstractList<E> abstractList = AbstractList.this;
            setIndex(getIndex() - 1);
            return abstractList.get(getIndex());
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return getIndex() - 1;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0080\u0080\u0004¢\u0006\u0002\b\tJ\u001f\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0080\u0080\u0004¢\u0006\u0002\b\u000bJ'\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0080\u0080\u0004¢\u0006\u0002\b\u000fJ'\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0080\u0080\u0004¢\u0006\u0002\b\u0013J\u001f\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007H\u0080\u0080\u0004¢\u0006\u0002\b\u0018J\u001b\u0010\u0019\u001a\u00020\u00072\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001bH\u0080\u0080\u0004¢\u0006\u0002\b\u001cJ'\u0010\u001d\u001a\u00020\u001e2\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001b2\n\u0010\u001f\u001a\u0006\u0012\u0002\b\u00030\u001bH\u0080\u0080\u0004¢\u0006\u0002\b R\u000f\u0010\u0014\u001a\u00020\u0007X\u0082Ô\b¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lkotlin/collections/AbstractList$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "checkElementIndex", _UrlKt.FRAGMENT_ENCODE_SET, "index", _UrlKt.FRAGMENT_ENCODE_SET, "size", "checkElementIndex$kotlin_stdlib", "checkPositionIndex", "checkPositionIndex$kotlin_stdlib", "checkRangeIndexes", "fromIndex", "toIndex", "checkRangeIndexes$kotlin_stdlib", "checkBoundsIndexes", "startIndex", "endIndex", "checkBoundsIndexes$kotlin_stdlib", "maxArraySize", "newCapacity", "oldCapacity", "minCapacity", "newCapacity$kotlin_stdlib", "orderedHashCode", "c", _UrlKt.FRAGMENT_ENCODE_SET, "orderedHashCode$kotlin_stdlib", "orderedEquals", _UrlKt.FRAGMENT_ENCODE_SET, "other", "orderedEquals$kotlin_stdlib", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int newCapacity$kotlin_stdlib(int oldCapacity, int minCapacity) {
            int i = oldCapacity + (oldCapacity >> 1);
            if (i - minCapacity < 0) {
                i = minCapacity;
            }
            if (i - AbstractList.maxArraySize <= 0) {
                return i;
            }
            if (minCapacity > AbstractList.maxArraySize) {
                return Integer.MAX_VALUE;
            }
            return AbstractList.maxArraySize;
        }

        private Companion() {
        }

        public final void checkElementIndex$kotlin_stdlib(int index, int size) {
            if (index < 0 || index >= size) {
                Dex$$ExternalSyntheticBUOutline0.m181m("index: ", index, ", size: ", size);
            }
        }

        public final void checkPositionIndex$kotlin_stdlib(int index, int size) {
            if (index < 0 || index > size) {
                Dex$$ExternalSyntheticBUOutline0.m181m("index: ", index, ", size: ", size);
            }
        }

        public final void checkRangeIndexes$kotlin_stdlib(int fromIndex, int toIndex, int size) {
            if (fromIndex < 0 || toIndex > size) {
                Base64$$ExternalSyntheticBUOutline1.m774m("fromIndex: ", fromIndex, ", toIndex: ", toIndex, ", size: ", size);
            } else {
                if (fromIndex <= toIndex) {
                    return;
                }
                Base64$$ExternalSyntheticBUOutline0.m773m("fromIndex: ", fromIndex, " > toIndex: ", toIndex);
            }
        }

        public final void checkBoundsIndexes$kotlin_stdlib(int startIndex, int endIndex, int size) {
            if (startIndex < 0 || endIndex > size) {
                Base64$$ExternalSyntheticBUOutline1.m774m("startIndex: ", startIndex, ", endIndex: ", endIndex, ", size: ", size);
            } else {
                if (startIndex <= endIndex) {
                    return;
                }
                Base64$$ExternalSyntheticBUOutline0.m773m("startIndex: ", startIndex, " > endIndex: ", endIndex);
            }
        }

        public final int orderedHashCode$kotlin_stdlib(Collection<?> c2) {
            Iterator<?> it = c2.iterator();
            int iHashCode = 1;
            while (it.hasNext()) {
                Object next = it.next();
                iHashCode = (iHashCode * 31) + (next != null ? next.hashCode() : 0);
            }
            return iHashCode;
        }

        public final boolean orderedEquals$kotlin_stdlib(Collection<?> c2, Collection<?> other) {
            if (c2.size() != other.size()) {
                return false;
            }
            Iterator<?> it = other.iterator();
            Iterator<?> it2 = c2.iterator();
            while (it2.hasNext()) {
                if (!Intrinsics.areEqual(it2.next(), it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public int indexOf(Object element) {
        Iterator<E> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (Intrinsics.areEqual(it.next(), element)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public int lastIndexOf(Object element) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (Intrinsics.areEqual(listIterator.previous(), element)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }
}
