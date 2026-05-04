package com.google.android.gms.internal.mlkit_vision_label;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzad extends AbstractCollection {
    final Object zza;
    Collection zzb;
    final zzad zzc;
    final Collection zzd;
    final /* synthetic */ zzag zze;

    zzad(zzag zzagVar, Object obj, Collection collection, zzad zzadVar) {
        this.zze = zzagVar;
        this.zza = obj;
        this.zzb = collection;
        this.zzc = zzadVar;
        this.zzd = zzadVar == null ? null : zzadVar.zzb;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        zzb();
        boolean zIsEmpty = this.zzb.isEmpty();
        boolean zAdd = this.zzb.add(obj);
        if (!zAdd) {
            return zAdd;
        }
        zzag.zzd(this.zze);
        if (!zIsEmpty) {
            return zAdd;
        }
        zza();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = this.zzb.addAll(collection);
        if (!zAddAll) {
            return zAddAll;
        }
        zzag.zzf(this.zze, this.zzb.size() - size);
        if (size != 0) {
            return zAddAll;
        }
        zza();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.zzb.clear();
        zzag.zzg(this.zze, size);
        zzc();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        zzb();
        return this.zzb.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        zzb();
        return this.zzb.containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        zzb();
        return this.zzb.equals(obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        zzb();
        return this.zzb.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzb();
        return new zzac(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        zzb();
        boolean zRemove = this.zzb.remove(obj);
        if (zRemove) {
            zzag.zze(this.zze);
            zzc();
        }
        return zRemove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zRemoveAll = this.zzb.removeAll(collection);
        if (zRemoveAll) {
            zzag.zzf(this.zze, this.zzb.size() - size);
            zzc();
        }
        return zRemoveAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        zzb();
        return this.zzb.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        zzb();
        return this.zzb.toString();
    }

    final void zza() {
        zzad zzadVar = this.zzc;
        if (zzadVar != null) {
            zzadVar.zza();
        } else {
            this.zze.zza.put(this.zza, this.zzb);
        }
    }

    final void zzb() {
        Collection collection;
        zzad zzadVar = this.zzc;
        if (zzadVar != null) {
            zzadVar.zzb();
            if (this.zzc.zzb != this.zzd) {
                throw new ConcurrentModificationException();
            }
        } else {
            if (!this.zzb.isEmpty() || (collection = (Collection) this.zze.zza.get(this.zza)) == null) {
                return;
            }
            this.zzb = collection;
        }
    }

    final void zzc() {
        zzad zzadVar = this.zzc;
        if (zzadVar != null) {
            zzadVar.zzc();
        } else if (this.zzb.isEmpty()) {
            this.zze.zza.remove(this.zza);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        int size = size();
        boolean zRetainAll = this.zzb.retainAll(collection);
        if (zRetainAll) {
            zzag.zzf(this.zze, this.zzb.size() - size);
            zzc();
        }
        return zRetainAll;
    }
}
