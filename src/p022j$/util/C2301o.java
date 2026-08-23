package p022j$.util;

import java.util.ListIterator;
import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.o */
/* JADX INFO: loaded from: classes2.dex */
public final class C2301o implements ListIterator, InterfaceC2587y {

    /* JADX INFO: renamed from: a */
    public final ListIterator f1069a;

    public C2301o(C2303p c2303p, int i) {
        this.f1069a = c2303p.f1074b.listIterator(i);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f1069a.hasNext();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        return this.f1069a.next();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f1069a.hasPrevious();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return this.f1069a.previous();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f1069a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f1069a.previousIndex();
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

    @Override // java.util.Iterator, p022j$.util.InterfaceC2587y
    public final void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m527M(this.f1069a, consumer);
    }
}
