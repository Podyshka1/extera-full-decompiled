package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import p022j$.lang.Iterable$CC;
import p022j$.util.Collection;
import p022j$.util.Spliterator;
import p022j$.util.Spliterators;
import p022j$.util.stream.Stream;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImmutableCollection extends AbstractCollection implements Serializable, Collection {
    private static final Object[] EMPTY_ARRAY = new Object[0];

    public abstract ImmutableList asList();

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(Object obj);

    abstract int copyIntoArray(Object[] objArr, int i);

    @Override // java.lang.Iterable, p022j$.util.Collection, p022j$.lang.InterfaceC2105a
    public /* synthetic */ void forEach(Consumer consumer) {
        Iterable$CC.$default$forEach(this, consumer);
    }

    Object[] internalArray() {
        return null;
    }

    abstract boolean isPartialView();

    @Override // java.util.Collection, p022j$.util.Collection
    public /* synthetic */ Stream parallelStream() {
        return Collection.CC.$default$parallelStream(this);
    }

    @Override // java.util.Collection
    public /* synthetic */ java.util.stream.Stream parallelStream() {
        return Stream.Wrapper.convert(parallelStream());
    }

    @Override // java.util.Collection, p022j$.util.Collection
    public /* synthetic */ boolean removeIf(Predicate predicate) {
        return Collection.CC.$default$removeIf(this, predicate);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    @Override // java.util.Collection, p022j$.util.Collection
    public /* synthetic */ Stream stream() {
        return Collection.CC.$default$stream(this);
    }

    @Override // java.util.Collection
    public /* synthetic */ java.util.stream.Stream stream() {
        return Stream.Wrapper.convert(stream());
    }

    @Override // java.util.Collection, p022j$.util.Collection
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return toArray((Object[]) intFunction.apply(0));
    }

    ImmutableCollection() {
    }

    @Override // java.util.Collection, java.lang.Iterable, p022j$.util.Collection
    public p022j$.util.Spliterator spliterator() {
        return Spliterators.spliterator(this, 1296);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(EMPTY_ARRAY);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Preconditions.checkNotNull(objArr);
        int size = size();
        if (objArr.length < size) {
            Object[] objArrInternalArray = internalArray();
            if (objArrInternalArray != null) {
                return Platform.copy(objArrInternalArray, internalArrayStart(), internalArrayEnd(), objArr);
            }
            objArr = ObjectArrays.newArray(objArr, size);
        } else if (objArr.length > size) {
            objArr[size] = null;
        }
        copyIntoArray(objArr, 0);
        return objArr;
    }

    int internalArrayStart() {
        throw new UnsupportedOperationException();
    }

    int internalArrayEnd() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public static abstract class Builder {
        public abstract Builder add(Object obj);

        static int expandedCapacity(int i, int i2) {
            if (i2 < 0) {
                throw new IllegalArgumentException("cannot store more than Integer.MAX_VALUE elements");
            }
            if (i2 <= i) {
                return i;
            }
            int iHighestOneBit = i + (i >> 1) + 1;
            if (iHighestOneBit < i2) {
                iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }

        Builder() {
        }

        public Builder addAll(Iterable iterable) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                add(it.next());
            }
            return this;
        }
    }

    static abstract class ArrayBasedBuilder extends Builder {
        Object[] contents;
        boolean forceCopy;
        int size;

        ArrayBasedBuilder(int i) {
            CollectPreconditions.checkNonnegative(i, "initialCapacity");
            this.contents = new Object[i];
            this.size = 0;
        }

        private void ensureRoomFor(int i) {
            Object[] objArr = this.contents;
            int iExpandedCapacity = Builder.expandedCapacity(objArr.length, this.size + i);
            if (iExpandedCapacity > objArr.length || this.forceCopy) {
                this.contents = Arrays.copyOf(this.contents, iExpandedCapacity);
                this.forceCopy = false;
            }
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public ArrayBasedBuilder add(Object obj) {
            Preconditions.checkNotNull(obj);
            ensureRoomFor(1);
            Object[] objArr = this.contents;
            int i = this.size;
            this.size = i + 1;
            objArr[i] = obj;
            return this;
        }

        public Builder add(Object... objArr) {
            addAll(objArr, objArr.length);
            return this;
        }

        final void addAll(Object[] objArr, int i) {
            ObjectArrays.checkElementsNotNull(objArr, i);
            ensureRoomFor(i);
            System.arraycopy(objArr, 0, this.contents, this.size, i);
            this.size += i;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public Builder addAll(Iterable iterable) {
            if (iterable instanceof java.util.Collection) {
                java.util.Collection collection = (java.util.Collection) iterable;
                ensureRoomFor(collection.size());
                if (collection instanceof ImmutableCollection) {
                    this.size = ((ImmutableCollection) collection).copyIntoArray(this.contents, this.size);
                    return this;
                }
            }
            super.addAll(iterable);
            return this;
        }
    }
}
