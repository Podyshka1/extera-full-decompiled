package p022j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;
import p022j$.util.List;

/* JADX INFO: renamed from: j$.util.i */
/* JADX INFO: loaded from: classes2.dex */
public class C2289i extends C2287h implements List, List {
    private static final long serialVersionUID = -7754090372962971524L;

    /* JADX INFO: renamed from: c */
    public final List f1052c;

    public C2289i(List list) {
        super(list);
        this.f1052c = list;
    }

    public C2289i(List list, Object obj) {
        super(list, obj);
        this.f1052c = list;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this == obj) {
            return true;
        }
        synchronized (this.f1048b) {
            zEquals = this.f1052c.equals(obj);
        }
        return zEquals;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int iHashCode;
        synchronized (this.f1048b) {
            iHashCode = this.f1052c.hashCode();
        }
        return iHashCode;
    }

    @Override // java.util.List
    public final Object get(int i) {
        Object obj;
        synchronized (this.f1048b) {
            obj = this.f1052c.get(i);
        }
        return obj;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        Object obj2;
        synchronized (this.f1048b) {
            obj2 = this.f1052c.set(i, obj);
        }
        return obj2;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        synchronized (this.f1048b) {
            this.f1052c.add(i, obj);
        }
    }

    @Override // java.util.List
    public final Object remove(int i) {
        Object objRemove;
        synchronized (this.f1048b) {
            objRemove = this.f1052c.remove(i);
        }
        return objRemove;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        int iIndexOf;
        synchronized (this.f1048b) {
            iIndexOf = this.f1052c.indexOf(obj);
        }
        return iIndexOf;
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        int iLastIndexOf;
        synchronized (this.f1048b) {
            iLastIndexOf = this.f1052c.lastIndexOf(obj);
        }
        return iLastIndexOf;
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        boolean zAddAll;
        synchronized (this.f1048b) {
            zAddAll = this.f1052c.addAll(i, collection);
        }
        return zAddAll;
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return this.f1052c.listIterator();
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        return this.f1052c.listIterator(i);
    }

    @Override // java.util.List
    public List subList(int i, int i2) {
        C2289i c2289i;
        synchronized (this.f1048b) {
            c2289i = new C2289i(this.f1052c.subList(i, i2), this.f1048b);
        }
        return c2289i;
    }

    @Override // java.util.List, p022j$.util.List
    public final void replaceAll(UnaryOperator unaryOperator) {
        synchronized (this.f1048b) {
            List list = this.f1052c;
            if (list instanceof List) {
                ((List) list).replaceAll(unaryOperator);
            } else {
                List.CC.$default$replaceAll(list, unaryOperator);
            }
        }
    }

    @Override // java.util.List, p022j$.util.List
    public final void sort(Comparator comparator) {
        synchronized (this.f1048b) {
            List.EL.sort(this.f1052c, comparator);
        }
    }

    private Object readResolve() {
        java.util.List list = this.f1052c;
        return list instanceof RandomAccess ? new C2293k(list) : this;
    }
}
