package org.mvel2.templates.util;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class ArrayIterator implements Iterator {
    private Object[] array;
    private int cursor = 0;

    @Override // java.util.Iterator
    public void remove() {
    }

    public ArrayIterator(Object[] objArr) {
        this.array = objArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.cursor != this.array.length;
    }

    @Override // java.util.Iterator
    public Object next() {
        Object[] objArr = this.array;
        int i = this.cursor;
        this.cursor = i + 1;
        return objArr[i];
    }
}
