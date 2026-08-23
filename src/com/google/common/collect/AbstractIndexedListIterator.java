package com.google.common.collect;

import com.google.common.base.Preconditions;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
abstract class AbstractIndexedListIterator<E> extends UnmodifiableListIterator<E> {
    private int position;
    private final int size;

    public abstract E get(int i);

    public AbstractIndexedListIterator(int i, int i2) {
        Preconditions.checkPositionIndex(i2, i);
        this.size = i;
        this.position = i2;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.position < this.size;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (!hasNext()) {
            Utils$$ExternalSyntheticBUOutline0.m978m();
            return null;
        }
        int i = this.position;
        this.position = i + 1;
        return get(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.position;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.position > 0;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            Utils$$ExternalSyntheticBUOutline0.m978m();
            return null;
        }
        int i = this.position - 1;
        this.position = i;
        return get(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.position - 1;
    }
}
