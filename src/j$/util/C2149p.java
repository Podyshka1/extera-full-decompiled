package j$.util;

import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;

/* JADX INFO: renamed from: j$.util.p */
/* JADX INFO: loaded from: classes2.dex */
public class C2149p extends C2147n implements java.util.List, List {
    private static final long serialVersionUID = -283967356065247728L;

    /* JADX INFO: renamed from: b */
    public final java.util.List f839b;

    public C2149p(java.util.List list) {
        super(list);
        this.f839b = list;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        return obj == this || this.f839b.equals(obj);
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        return this.f839b.hashCode();
    }

    @Override // java.util.List
    public final Object get(int i) {
        return this.f839b.get(i);
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        return this.f839b.indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        return this.f839b.lastIndexOf(obj);
    }

    @Override // java.util.List
    public final boolean addAll(int i, java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final void replaceAll(UnaryOperator unaryOperator) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final void sort(java.util.Comparator comparator) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return new C2148o(this, 0);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        return new C2148o(this, i);
    }

    @Override // java.util.List
    public java.util.List subList(int i, int i2) {
        return new C2149p(this.f839b.subList(i, i2));
    }

    private Object readResolve() {
        java.util.List list = this.f839b;
        return list instanceof RandomAccess ? new C2205u(list) : this;
    }
}
