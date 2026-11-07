package com.google.android.recaptcha.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import org.telegram.tgnet.TLObject;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzqb<E> extends zzpq<E> implements Set<E> {
    private transient zzpt zza;

    public static int zzg(int i) {
        int iMax = Math.max(i, 2);
        if (iMax < 751619276) {
            int iHighestOneBit = Integer.highestOneBit(iMax - 1);
            do {
                iHighestOneBit += iHighestOneBit;
            } while (((double) iHighestOneBit) * 0.7d < iMax);
            return iHighestOneBit;
        }
        if (iMax < 1073741824) {
            return TLObject.FLAG_30;
        }
        f$$ExternalSyntheticBUOutline1.m215m("collection too large");
        return 0;
    }

    public static zzqb zzh(Collection collection) {
        if ((collection instanceof zzqb) && !(collection instanceof SortedSet)) {
            zzqb zzqbVar = (zzqb) collection;
            if (!zzqbVar.zze()) {
                return zzqbVar;
            }
        }
        Object[] array = collection.toArray();
        return zzn(array.length, array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzo(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzqb) && zzi() && ((zzqb) obj).zzi() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    return containsAll(set);
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzqs.zza(this);
    }

    @Override // com.google.android.recaptcha.internal.zzpq
    public abstract zzqu zza();

    public boolean zzi() {
        return false;
    }

    public final zzpt zzj() {
        zzpt zzptVar = this.zza;
        if (zzptVar != null) {
            return zzptVar;
        }
        zzpt zzptVarZzk = zzk();
        this.zza = zzptVarZzk;
        return zzptVarZzk;
    }

    public zzpt zzk() {
        Object[] array = toArray();
        int i = zzpt.$r8$clinit;
        return zzpt.zzi(array, array.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzqb zzn(int i, Object... objArr) {
        if (i == 0) {
            return zzqr.zza;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new zzqt(obj);
        }
        int iZzg = zzg(i);
        Object[] objArr2 = new Object[iZzg];
        int i2 = iZzg - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            zzqj.zza(obj2, i5);
            int iHashCode = obj2.hashCode();
            int iZza = zzpn.zza(iHashCode);
            while (true) {
                int i6 = iZza & i2;
                Object obj3 = objArr2[i6];
                if (obj3 == null) {
                    objArr[i4] = obj2;
                    objArr2[i6] = obj2;
                    i3 += iHashCode;
                    i4++;
                    break;
                }
                if (!obj3.equals(obj2)) {
                    iZza++;
                }
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new zzqt(obj4);
        }
        if (zzg(i4) < iZzg / 2) {
            return zzn(i4, objArr);
        }
        if (zzo(i4, objArr.length)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new zzqr(objArr, i3, objArr2, i2, i4);
    }
}
