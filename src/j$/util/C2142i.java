package j$.util;

import j$.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;

/* JADX INFO: renamed from: j$.util.i */
/* JADX INFO: loaded from: classes2.dex */
public class C2142i extends C2141h implements java.util.List, List {
    private static final long serialVersionUID = -7754090372962971524L;

    /* JADX INFO: renamed from: c */
    public final java.util.List f817c;

    public C2142i(java.util.List list) {
        super(list);
        this.f817c = list;
    }

    public C2142i(java.util.List list, Object obj) {
        super(list, obj);
        this.f817c = list;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this == obj) {
            return true;
        }
        synchronized (this.f813b) {
            zEquals = this.f817c.equals(obj);
        }
        return zEquals;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int iHashCode;
        synchronized (this.f813b) {
            iHashCode = this.f817c.hashCode();
        }
        return iHashCode;
    }

    @Override // java.util.List
    public final Object get(int i) {
        Object obj;
        synchronized (this.f813b) {
            obj = this.f817c.get(i);
        }
        return obj;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        Object obj2;
        synchronized (this.f813b) {
            obj2 = this.f817c.set(i, obj);
        }
        return obj2;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        synchronized (this.f813b) {
            this.f817c.add(i, obj);
        }
    }

    @Override // java.util.List
    public final Object remove(int i) {
        Object objRemove;
        synchronized (this.f813b) {
            objRemove = this.f817c.remove(i);
        }
        return objRemove;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        int iIndexOf;
        synchronized (this.f813b) {
            iIndexOf = this.f817c.indexOf(obj);
        }
        return iIndexOf;
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        int iLastIndexOf;
        synchronized (this.f813b) {
            iLastIndexOf = this.f817c.lastIndexOf(obj);
        }
        return iLastIndexOf;
    }

    @Override // java.util.List
    public final boolean addAll(int i, java.util.Collection collection) {
        boolean zAddAll;
        synchronized (this.f813b) {
            zAddAll = this.f817c.addAll(i, collection);
        }
        return zAddAll;
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return this.f817c.listIterator();
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        return this.f817c.listIterator(i);
    }

    @Override // java.util.List
    public java.util.List subList(int i, int i2) {
        C2142i c2142i;
        synchronized (this.f813b) {
            c2142i = new C2142i(this.f817c.subList(i, i2), this.f813b);
        }
        return c2142i;
    }

    @Override // java.util.List, j$.util.List
    public final void replaceAll(UnaryOperator unaryOperator) {
        synchronized (this.f813b) {
            java.util.List list = this.f817c;
            if (list instanceof List) {
                ((List) list).replaceAll(unaryOperator);
            } else {
                List.CC.$default$replaceAll(list, unaryOperator);
            }
        }
    }

    @Override // java.util.List, j$.util.List
    public final void sort(java.util.Comparator comparator) {
        synchronized (this.f813b) {
            List.EL.sort(this.f817c, comparator);
        }
    }

    private Object readResolve() {
        java.util.List list = this.f817c;
        return list instanceof RandomAccess ? new C2144k(list) : this;
    }
}
