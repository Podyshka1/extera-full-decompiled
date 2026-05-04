package com.google.android.gms.internal.mlkit_vision_label;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes4.dex */
class zzaf extends zzad implements List {
    final /* synthetic */ zzag zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzaf(zzag zzagVar, Object obj, List list, zzad zzadVar) {
        super(zzagVar, obj, list, zzadVar);
        this.zzf = zzagVar;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        zzb();
        boolean zIsEmpty = this.zzb.isEmpty();
        ((List) this.zzb).add(i, obj);
        zzag.zzd(this.zzf);
        if (zIsEmpty) {
            zza();
        }
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = ((List) this.zzb).addAll(i, collection);
        if (!zAddAll) {
            return zAddAll;
        }
        zzag.zzf(this.zzf, this.zzb.size() - size);
        if (size != 0) {
            return zAddAll;
        }
        zza();
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzb();
        return ((List) this.zzb).get(i);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        zzb();
        return ((List) this.zzb).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        zzb();
        return ((List) this.zzb).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        zzb();
        return new zzae(this);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        zzb();
        Object objRemove = ((List) this.zzb).remove(i);
        zzag.zze(this.zzf);
        zzc();
        return objRemove;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        zzb();
        return ((List) this.zzb).set(i, obj);
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        zzb();
        zzag zzagVar = this.zzf;
        Object obj = this.zza;
        List listSubList = ((List) this.zzb).subList(i, i2);
        zzad zzadVar = this.zzc;
        if (zzadVar == null) {
            zzadVar = this;
        }
        return zzagVar.zzi(obj, listSubList, zzadVar);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        zzb();
        return new zzae(this, i);
    }
}
