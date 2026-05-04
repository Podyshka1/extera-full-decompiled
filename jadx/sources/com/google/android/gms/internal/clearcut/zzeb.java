package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzeb extends zzav {
    private static final zzeb zznf;
    private final List zzls;

    static {
        zzeb zzebVar = new zzeb();
        zznf = zzebVar;
        zzebVar.zzv();
    }

    zzeb() {
        this(new ArrayList(10));
    }

    private zzeb(List list) {
        this.zzls = list;
    }

    public static zzeb zzcn() {
        return zznf;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        zzw();
        this.zzls.add(i, obj);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return this.zzls.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        zzw();
        Object objRemove = this.zzls.remove(i);
        ((AbstractList) this).modCount++;
        return objRemove;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        zzw();
        Object obj2 = this.zzls.set(i, obj);
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzls.size();
    }

    @Override // com.google.android.gms.internal.clearcut.zzcn
    public final /* synthetic */ zzcn zzi(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzls);
        return new zzeb(arrayList);
    }
}
