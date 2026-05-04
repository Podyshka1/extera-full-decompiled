package p022j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;

/* JADX INFO: renamed from: j$.util.p */
/* JADX INFO: loaded from: classes2.dex */
public class C2303p extends C2299n implements List, List {
    private static final long serialVersionUID = -283967356065247728L;

    /* JADX INFO: renamed from: b */
    public final List f1074b;

    public C2303p(List list) {
        super(list);
        this.f1074b = list;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        return obj == this || this.f1074b.equals(obj);
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        return this.f1074b.hashCode();
    }

    @Override // java.util.List
    public final Object get(int i) {
        return this.f1074b.get(i);
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
        return this.f1074b.indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        return this.f1074b.lastIndexOf(obj);
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, p022j$.util.List
    public final void replaceAll(UnaryOperator unaryOperator) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, p022j$.util.List
    public final void sort(Comparator comparator) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return new C2301o(this, 0);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        return new C2301o(this, i);
    }

    @Override // java.util.List
    public List subList(int i, int i2) {
        return new C2303p(this.f1074b.subList(i, i2));
    }

    private Object readResolve() {
        List list = this.f1074b;
        return list instanceof RandomAccess ? new C2583u(list) : this;
    }
}
