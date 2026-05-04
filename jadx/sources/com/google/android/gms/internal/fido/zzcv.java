package com.google.android.gms.internal.fido;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
final class zzcv extends zzck {
    static final zzcv zzc;
    final transient zzcc zzd;

    static {
        int i = zzcc.$r8$clinit;
        zzc = new zzcv(zzct.zza, zzcq.zza);
    }

    zzcv(zzcc zzccVar, Comparator comparator) {
        super(comparator);
        this.zzd = zzccVar;
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        zzcc zzccVar = this.zzd;
        int iZzv = zzv(obj, true);
        if (iZzv == zzccVar.size()) {
            return null;
        }
        return this.zzd.get(iZzv);
    }

    @Override // com.google.android.gms.internal.fido.zzby, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            try {
                if (Collections.binarySearch(this.zzd, obj, ((zzck) this).zza) >= 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        if (collection instanceof zzcp) {
            collection = ((zzcp) collection).zza();
        }
        if (!zzdb.zza(((zzck) this).zza, collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        zzdd zzddVarListIterator = this.zzd.listIterator(0);
        Iterator it = collection.iterator();
        if (!zzddVarListIterator.hasNext()) {
            return false;
        }
        Object next = it.next();
        E next2 = zzddVarListIterator.next();
        while (true) {
            try {
                int iCompare = ((zzck) this).zza.compare(next2, next);
                if (iCompare >= 0) {
                    if (iCompare != 0) {
                        break;
                    }
                    if (!it.hasNext()) {
                        return true;
                    }
                    next = it.next();
                } else {
                    if (!zzddVarListIterator.hasNext()) {
                        return false;
                    }
                    next2 = zzddVarListIterator.next();
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.fido.zzcf, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (this.zzd.size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        if (!zzdb.zza(((zzck) this).zza, set)) {
            return containsAll(set);
        }
        Iterator it = set.iterator();
        try {
            zzdd zzddVarListIterator = this.zzd.listIterator(0);
            while (zzddVarListIterator.hasNext()) {
                E next = zzddVarListIterator.next();
                Object next2 = it.next();
                if (next2 == null || ((zzck) this).zza.compare(next, next2) != 0) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.fido.zzck, java.util.SortedSet
    public final Object first() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.zzd.get(0);
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        int iZzu = zzu(obj, true) - 1;
        if (iZzu == -1) {
            return null;
        }
        return this.zzd.get(iZzu);
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        zzcc zzccVar = this.zzd;
        int iZzv = zzv(obj, false);
        if (iZzv == zzccVar.size()) {
            return null;
        }
        return this.zzd.get(iZzv);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public final /* synthetic */ Iterator iterator() {
        return this.zzd.listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzck, java.util.SortedSet
    public final Object last() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.zzd.get(r0.size() - 1);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        int iZzu = zzu(obj, false) - 1;
        if (iZzu == -1) {
            return null;
        }
        return this.zzd.get(iZzu);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzd.size();
    }

    @Override // com.google.android.gms.internal.fido.zzby
    final int zza(Object[] objArr, int i) {
        return this.zzd.zza(objArr, 0);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    final int zzb() {
        return this.zzd.zzb();
    }

    @Override // com.google.android.gms.internal.fido.zzby
    final int zzc() {
        return this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.fido.zzcf, com.google.android.gms.internal.fido.zzby
    public final zzdc zzd() {
        return this.zzd.listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    final Object[] zze() {
        return this.zzd.zze();
    }

    @Override // com.google.android.gms.internal.fido.zzck
    final zzck zzf() {
        Comparator comparatorReverseOrder = Collections.reverseOrder(((zzck) this).zza);
        return isEmpty() ? zzck.zzs(comparatorReverseOrder) : new zzcv(this.zzd.zzf(), comparatorReverseOrder);
    }

    @Override // com.google.android.gms.internal.fido.zzcf
    public final zzcc zzi() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.fido.zzck
    final zzck zzo(Object obj, boolean z) {
        return zzw(0, zzu(obj, z));
    }

    @Override // com.google.android.gms.internal.fido.zzck
    final zzck zzq(Object obj, boolean z, Object obj2, boolean z2) {
        return zzr(obj, z).zzo(obj2, z2);
    }

    @Override // com.google.android.gms.internal.fido.zzck
    final zzck zzr(Object obj, boolean z) {
        return zzw(zzv(obj, z), this.zzd.size());
    }

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: zzt, reason: merged with bridge method [inline-methods] */
    public final zzdc descendingIterator() {
        return this.zzd.zzf().listIterator(0);
    }

    final zzcv zzw(int i, int i2) {
        if (i == 0) {
            if (i2 == this.zzd.size()) {
                return this;
            }
            i = 0;
        }
        if (i >= i2) {
            return zzck.zzs(((zzck) this).zza);
        }
        zzcc zzccVar = this.zzd;
        return new zzcv(zzccVar.subList(i, i2), ((zzck) this).zza);
    }

    final int zzu(Object obj, boolean z) {
        obj.getClass();
        int iBinarySearch = Collections.binarySearch(this.zzd, obj, ((zzck) this).zza);
        return iBinarySearch >= 0 ? z ? iBinarySearch + 1 : iBinarySearch : ~iBinarySearch;
    }

    final int zzv(Object obj, boolean z) {
        obj.getClass();
        int iBinarySearch = Collections.binarySearch(this.zzd, obj, ((zzck) this).zza);
        return iBinarySearch >= 0 ? z ? iBinarySearch : iBinarySearch + 1 : ~iBinarySearch;
    }
}
