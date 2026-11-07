package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzml extends zzmg implements List, RandomAccess {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final zznt zza = new zzmi(zzng.zza, 0);

    public static Collector zzj() {
        return zzlt.zza();
    }

    public static zzml zzk() {
        return zzng.zza;
    }

    public static zzml zzl(Object obj) {
        Object[] objArr = {obj};
        zzna.zza(objArr, 1);
        return zzr(objArr, 1);
    }

    public static zzml zzm(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        zzna.zza(objArr, 2);
        return zzr(objArr, 2);
    }

    public static zzml zzn(Object obj, Object obj2, Object obj3) {
        Object[] objArr = {"auxiliary_lora_file", "auxiliary_drafter_lora_file", "auxiliary_session_state_file"};
        zzna.zza(objArr, 3);
        return zzr(objArr, 3);
    }

    public static zzml zzo(Object obj, Object obj2, Object obj3, Object obj4) {
        Object[] objArr = {obj, obj2, obj3, obj4};
        zzna.zza(objArr, 4);
        return zzr(objArr, 4);
    }

    public static zzml zzp(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        Object[] objArr = {obj, obj2, obj3, obj4, obj5};
        zzna.zza(objArr, 5);
        return zzr(objArr, 5);
    }

    public static zzml zzq(Collection collection) {
        if (!(collection instanceof zzmg)) {
            Object[] array = collection.toArray();
            int length = array.length;
            zzna.zza(array, length);
            return zzr(array, length);
        }
        zzml zzmlVarZze = ((zzmg) collection).zze();
        if (!zzmlVarZze.zzf()) {
            return zzmlVarZze;
        }
        Object[] array2 = zzmlVarZze.toArray();
        return zzr(array2, array2.length);
    }

    public static zzml zzr(Object[] objArr, int i) {
        return i == 0 ? zzng.zza : new zzng(objArr, i);
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

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg, java.util.AbstractCollection, java.util.Collection
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
                if (!Objects.equals(get(i), list.get(i))) {
                    return false;
                }
            }
            return true;
        }
        Iterator it = iterator();
        Iterator it2 = list.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || !Objects.equals(it.next(), it2.next())) {
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
    @Deprecated
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    @Deprecated
    public final zzml zze() {
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    public int zzg(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i2] = get(i2);
        }
        return size;
    }

    public zzml zzh() {
        return size() <= 1 ? this : new zzmj(this);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public zzml subList(int i, int i2) {
        zzla.zzh(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? zzng.zza : new zzmk(this, i, i3);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: zzs, reason: merged with bridge method [inline-methods] */
    public final zznt listIterator(int i) {
        zzla.zzg(i, size(), "index");
        return isEmpty() ? zza : new zzmi(this, i);
    }
}
