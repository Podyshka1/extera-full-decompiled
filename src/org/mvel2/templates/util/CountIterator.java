package org.mvel2.templates.util;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class CountIterator implements Iterator {
    int countTo;
    int cursor;

    @Override // java.util.Iterator
    public void remove() {
    }

    public CountIterator(int i) {
        this.countTo = i;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.cursor < this.countTo;
    }

    @Override // java.util.Iterator
    public Object next() {
        int i = this.cursor;
        this.cursor = i + 1;
        return Integer.valueOf(i);
    }
}
