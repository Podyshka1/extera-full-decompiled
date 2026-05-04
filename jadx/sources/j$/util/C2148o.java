package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.ListIterator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.o */
/* JADX INFO: loaded from: classes2.dex */
public final class C2148o implements ListIterator, InterfaceC2209y {

    /* JADX INFO: renamed from: a */
    public final ListIterator f834a;

    public C2148o(C2149p c2149p, int i) {
        this.f834a = c2149p.f839b.listIterator(i);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f834a.hasNext();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        return this.f834a.next();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f834a.hasPrevious();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return this.f834a.previous();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f834a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f834a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, j$.util.InterfaceC2209y
    public final void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m407M(this.f834a, consumer);
    }
}
