package com.google.android.gms.internal.mlkit_language_id_bundled;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
abstract class zbe extends zbl {
    private final int zba;
    private int zbb;

    protected zbe(int i, int i2) {
        zbc.zbb(i2, i, "index");
        this.zba = i;
        this.zbb = i2;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.zbb < this.zba;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zbb > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.zbb;
        this.zbb = i + 1;
        return zba(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zbb;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.zbb - 1;
        this.zbb = i;
        return zba(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zbb - 1;
    }

    protected abstract Object zba(int i);
}
