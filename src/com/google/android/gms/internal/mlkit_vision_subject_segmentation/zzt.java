package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import androidx.collection.ArraySet$$ExternalSyntheticBUOutline0;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzt extends AbstractCollection {
    final Object zza;
    Collection zzb;

    @CheckForNull
    final zzt zzc;

    @CheckForNull
    final Collection zzd;
    final /* synthetic */ zzw zze;

    public zzt(zzw zzwVar, Object obj, @CheckForNull Collection collection, zzt zztVar) {
        this.zze = zzwVar;
        this.zza = obj;
        this.zzb = collection;
        this.zzc = zztVar;
        this.zzd = zztVar == null ? null : zztVar.zzb;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        zzb();
        boolean zIsEmpty = this.zzb.isEmpty();
        boolean zAdd = this.zzb.add(obj);
        if (zAdd) {
            this.zze.zzb++;
            if (zIsEmpty) {
                zza();
                return true;
            }
        }
        return zAdd;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = this.zzb.addAll(collection);
        if (zAddAll) {
            int size2 = this.zzb.size();
            this.zze.zzb += size2 - size;
            if (size == 0) {
                zza();
                return true;
            }
        }
        return zAddAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.zzb.clear();
        this.zze.zzb -= size;
        zzc();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        zzb();
        return this.zzb.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        zzb();
        return this.zzb.containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean equals(@CheckForNull Object obj) {
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
        return new zzs(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(@CheckForNull Object obj) {
        zzb();
        boolean zRemove = this.zzb.remove(obj);
        if (zRemove) {
            zzw zzwVar = this.zze;
            zzwVar.zzb--;
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
            int size2 = this.zzb.size();
            this.zze.zzb += size2 - size;
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

    public final void zza() {
        zzt zztVar = this.zzc;
        if (zztVar != null) {
            zztVar.zza();
            return;
        }
        zzw zzwVar = this.zze;
        zzwVar.zza.put(this.zza, this.zzb);
    }

    public final void zzb() {
        zzt zztVar = this.zzc;
        if (zztVar != null) {
            zztVar.zzb();
            zzt zztVar2 = this.zzc;
            if (zztVar2.zzb == this.zzd) {
                return;
            }
            ArraySet$$ExternalSyntheticBUOutline0.m86m();
            return;
        }
        if (this.zzb.isEmpty()) {
            zzw zzwVar = this.zze;
            Collection collection = (Collection) zzwVar.zza.get(this.zza);
            if (collection != null) {
                this.zzb = collection;
            }
        }
    }

    public final void zzc() {
        zzt zztVar = this.zzc;
        if (zztVar != null) {
            zztVar.zzc();
        } else if (this.zzb.isEmpty()) {
            zzw zzwVar = this.zze;
            zzwVar.zza.remove(this.zza);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        int size = size();
        boolean zRetainAll = this.zzb.retainAll(collection);
        if (zRetainAll) {
            int size2 = this.zzb.size();
            this.zze.zzb += size2 - size;
            zzc();
        }
        return zRetainAll;
    }
}
