package com.google.android.gms.internal.play_billing;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;
import p022j$.util.List;
import p022j$.util.stream.Collector;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzco extends zzcj implements List, RandomAccess, p022j$.util.List {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final zzdx zza = new zzcl(zzdk.zza, 0);

    zzco() {
    }

    static zzco zzj(Object[] objArr, int i) {
        return i == 0 ? zzdk.zza : new zzdk(objArr, i);
    }

    public static zzco zzk(Collection collection) {
        if (!(collection instanceof zzcj)) {
            Object[] array = collection.toArray();
            int length = array.length;
            zzdd.zzb(array, length);
            return zzj(array, length);
        }
        zzco zzcoVarZzd = ((zzcj) collection).zzd();
        if (!zzcoVarZzd.zzf()) {
            return zzcoVarZzd;
        }
        Object[] array2 = zzcoVarZzd.toArray();
        return zzj(array2, array2.length);
    }

    public static zzco zzl() {
        return zzdk.zza;
    }

    public static zzco zzm(Object obj) {
        Object[] objArr = {obj};
        zzdd.zzb(objArr, 1);
        return zzj(objArr, 1);
    }

    public static Collector zzo() {
        return zzbv.zza();
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.play_billing.zzcj, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        if (list instanceof RandomAccess) {
            for (int i = 0; i < size; i++) {
                if (!zzbd.zza(get(i), list.get(i))) {
                    return false;
                }
            }
            return true;
        }
        Iterator it = iterator();
        Iterator it2 = list.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || !zzbd.zza(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i = 0; i < size; i++) {
            iHashCode = (iHashCode * 31) + get(i).hashCode();
        }
        return iHashCode;
    }

    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, p022j$.util.List
    public /* synthetic */ void replaceAll(UnaryOperator unaryOperator) {
        List.CC.$default$replaceAll(this, unaryOperator);
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, p022j$.util.List
    public /* synthetic */ void sort(Comparator comparator) {
        List.CC.$default$sort(this, comparator);
    }

    @Override // com.google.android.gms.internal.play_billing.zzcj
    int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i2] = get(i2);
        }
        return size;
    }

    @Override // com.google.android.gms.internal.play_billing.zzcj
    public final zzco zzd() {
        return this;
    }

    public zzco zzh() {
        return size() <= 1 ? this : new zzcm(this);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public zzco subList(int i, int i2) {
        zzbe.zze(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? zzdk.zza : new zzcn(this, i, i3);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: zzn, reason: merged with bridge method [inline-methods] */
    public final zzdx listIterator(int i) {
        zzbe.zzb(i, size(), "index");
        return isEmpty() ? zza : new zzcl(this, i);
    }
}
