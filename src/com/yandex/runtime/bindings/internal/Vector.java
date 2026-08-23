package com.yandex.runtime.bindings.internal;

import com.yandex.runtime.NativeObject;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes5.dex */
class Vector<E> extends AbstractList<E> implements RandomAccess {
    private ArrayList<E> list;
    private int listSize = sizeNative();
    private NativeObject nativeObject;

    public native E getNative(int i);

    public native int sizeNative();

    public Vector(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }

    @Override // java.util.AbstractList, java.util.List
    public synchronized E get(int i) {
        E e;
        try {
            if (this.list == null) {
                this.list = new ArrayList<>(this.listSize);
                for (int i2 = 0; i2 != this.listSize; i2++) {
                    this.list.add(null);
                }
            }
            e = this.list.get(i);
            if (e == null) {
                e = getNative(i);
                this.list.set(i, e);
            }
        } catch (Throwable th) {
            throw th;
        }
        return e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.listSize;
    }
}
