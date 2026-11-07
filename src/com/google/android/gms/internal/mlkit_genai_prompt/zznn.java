package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
final class zznn extends zzmt {
    static final zznn zzc;
    final transient zzml zzd;

    static {
        int i = zzml.$r8$clinit;
        zzc = new zznn(zzng.zza, zzmz.zza);
    }

    public zznn(zzml zzmlVar, Comparator comparator) {
        super(comparator);
        this.zzd = zzmlVar;
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        zzml zzmlVar = this.zzd;
        int iZzt = zzt(obj, true);
        if (iZzt == zzmlVar.size()) {
            return null;
        }
        return zzmlVar.get(iZzt);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            try {
                if (Collections.binarySearch(this.zzd, obj, ((zzmt) this).zza) >= 0) {
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
        if (collection instanceof zzmy) {
            collection = ((zzmy) collection).zza();
        }
        Comparator comparator = ((zzmt) this).zza;
        if (!zznr.zza(comparator, collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        zznt zzntVarListIterator = this.zzd.listIterator(0);
        Iterator it = collection.iterator();
        if (!zzntVarListIterator.hasNext()) {
            return false;
        }
        Object next = it.next();
        E next2 = zzntVarListIterator.next();
        while (true) {
            try {
                int iCompare = comparator.compare(next2, next);
                if (iCompare >= 0) {
                    if (iCompare != 0) {
                        break;
                    }
                    if (!it.hasNext()) {
                        return true;
                    }
                    next = it.next();
                } else {
                    if (!zzntVarListIterator.hasNext()) {
                        return false;
                    }
                    next2 = zzntVarListIterator.next();
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzms, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        zzml zzmlVar = this.zzd;
        if (zzmlVar.size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        if (!zznr.zza(((zzmt) this).zza, set)) {
            return containsAll(set);
        }
        Iterator it = set.iterator();
        try {
            zznt zzntVarListIterator = zzmlVar.listIterator(0);
            while (zzntVarListIterator.hasNext()) {
                E next = zzntVarListIterator.next();
                Object next2 = it.next();
                if (next2 == null || ((zzmt) this).zza.compare(next, next2) != 0) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmt, java.util.SortedSet
    public final Object first() {
        if (!isEmpty()) {
            return this.zzd.get(0);
        }
        Utils$$ExternalSyntheticBUOutline0.m1068m();
        return null;
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        int iZzs = zzs(obj, true) - 1;
        if (iZzs == -1) {
            return null;
        }
        return this.zzd.get(iZzs);
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        zzml zzmlVar = this.zzd;
        int iZzt = zzt(obj, false);
        if (iZzt == zzmlVar.size()) {
            return null;
        }
        return zzmlVar.get(iZzt);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public final /* synthetic */ Iterator iterator() {
        return this.zzd.listIterator(0);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmt, java.util.SortedSet
    public final Object last() {
        if (isEmpty()) {
            Utils$$ExternalSyntheticBUOutline0.m1068m();
            return null;
        }
        return this.zzd.get(r1.size() - 1);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        int iZzs = zzs(obj, false) - 1;
        if (iZzs == -1) {
            return null;
        }
        return this.zzd.get(iZzs);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzd.size();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzms
    public final zzns zza() {
        return this.zzd.listIterator(0);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    public final Object[] zzb() {
        return this.zzd.zzb();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    public final int zzc() {
        return this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    public final int zzd() {
        return this.zzd.zzd();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzms, com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    public final zzml zze() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    public final int zzg(Object[] objArr, int i) {
        return this.zzd.zzg(objArr, 0);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmt
    public final zzmt zzn(Object obj, boolean z) {
        return zzu(0, zzs(obj, z));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmt
    public final zzmt zzo(Object obj, boolean z, Object obj2, boolean z2) {
        return zzp(obj, z).zzn(obj2, z2);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmt
    public final zzmt zzp(Object obj, boolean z) {
        return zzu(zzt(obj, z), this.zzd.size());
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmt
    public final zzmt zzq() {
        Comparator comparatorReverseOrder = Collections.reverseOrder(((zzmt) this).zza);
        return isEmpty() ? zzmt.zzl(comparatorReverseOrder) : new zznn(this.zzd.zzh(), comparatorReverseOrder);
    }

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: zzr, reason: merged with bridge method [inline-methods] */
    public final zzns descendingIterator() {
        return this.zzd.zzh().listIterator(0);
    }

    public final zznn zzu(int i, int i2) {
        if (i == 0) {
            if (i2 == this.zzd.size()) {
                return this;
            }
            i = 0;
        }
        if (i >= i2) {
            return zzmt.zzl(((zzmt) this).zza);
        }
        zzml zzmlVar = this.zzd;
        return new zznn(zzmlVar.subList(i, i2), ((zzmt) this).zza);
    }

    public final int zzs(Object obj, boolean z) {
        obj.getClass();
        int iBinarySearch = Collections.binarySearch(this.zzd, obj, ((zzmt) this).zza);
        return iBinarySearch >= 0 ? z ? iBinarySearch + 1 : iBinarySearch : ~iBinarySearch;
    }

    public final int zzt(Object obj, boolean z) {
        obj.getClass();
        int iBinarySearch = Collections.binarySearch(this.zzd, obj, ((zzmt) this).zza);
        return iBinarySearch >= 0 ? z ? iBinarySearch : iBinarySearch + 1 : ~iBinarySearch;
    }
}
