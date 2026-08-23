package com.google.android.gms.internal.fido;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzcc extends zzby implements List, RandomAccess {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final zzdd zza = new zzbz(zzct.zza, 0);

    public static zzcc zzh(Object[] objArr, int i) {
        return i == 0 ? zzct.zza : new zzct(objArr, i);
    }

    public static zzcc zzi(Object[] objArr) {
        if (objArr.length == 0) {
            return zzct.zza;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        int length = objArr2.length;
        zzcr.zzb(objArr2, length);
        return zzh(objArr2, length);
    }

    public static zzcc zzj(Object obj) {
        Object[] objArr = {obj};
        zzcr.zzb(objArr, 1);
        return zzh(objArr, 1);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.fido.zzby, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@CheckForNull Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(@CheckForNull Object obj) {
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
                if (!zzbk.zza(get(i), list.get(i))) {
                    return false;
                }
            }
            return true;
        }
        Iterator it = iterator();
        Iterator it2 = list.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || !zzbk.zza(it.next(), it2.next())) {
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

    public int indexOf(@CheckForNull Object obj) {
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

    public int lastIndexOf(@CheckForNull Object obj) {
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
    @Deprecated
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i2] = get(i2);
        }
        return size;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final zzdc zzd() {
        return listIterator(0);
    }

    public zzcc zzf() {
        return size() <= 1 ? this : new zzca(this);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public zzcc subList(int i, int i2) {
        zzbm.zze(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? zzct.zza : new zzcb(this, i, i3);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: zzk, reason: merged with bridge method [inline-methods] */
    public final zzdd listIterator(int i) {
        zzbm.zzb(i, size(), "index");
        return isEmpty() ? zza : new zzbz(this, i);
    }
}
