package com.google.android.gms.internal.cast;

import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzfu extends zzfm implements Set, p022j$.util.Set {
    private transient zzfq zza;

    zzfu() {
    }

    static int zzh(int i) {
        int iMax = Math.max(i, 2);
        if (iMax >= 751619276) {
            if (iMax < 1073741824) {
                return TLObject.FLAG_30;
            }
            throw new IllegalArgumentException("collection too large");
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1);
        do {
            iHighestOneBit += iHighestOneBit;
        } while (((double) iHighestOneBit) * 0.7d < iMax);
        return iHighestOneBit;
    }

    public static zzfu zzj(Collection collection) {
        Object[] array = collection.toArray();
        return zzm(array.length, array);
    }

    public static zzfu zzk() {
        return zzgd.zza;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzfu) && zzl() && ((zzfu) obj).zzl() && hashCode() != obj.hashCode()) {
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
        return zzge.zza(this);
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    public zzfq zzd() {
        zzfq zzfqVar = this.zza;
        if (zzfqVar != null) {
            return zzfqVar;
        }
        zzfq zzfqVarZzi = zzi();
        this.zza = zzfqVarZzi;
        return zzfqVarZzi;
    }

    zzfq zzi() {
        Object[] array = toArray();
        int i = zzfq.$r8$clinit;
        return zzfq.zzi(array, array.length);
    }

    boolean zzl() {
        return false;
    }

    private static zzfu zzm(int i, Object... objArr) {
        if (i == 0) {
            return zzgd.zza;
        }
        if (i == 1) {
            Object obj = objArr[0];
            obj.getClass();
            return new zzgf(obj);
        }
        int iZzh = zzh(i);
        Object[] objArr2 = new Object[iZzh];
        int i2 = iZzh - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            zzfw.zza(obj2, i5);
            int iHashCode = obj2.hashCode();
            int iZza = zzfj.zza(iHashCode);
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
            obj4.getClass();
            return new zzgf(obj4);
        }
        if (zzh(i4) < iZzh / 2) {
            return zzm(i4, objArr);
        }
        int length = objArr.length;
        if (i4 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new zzgd(objArr, i3, objArr2, i2, i4);
    }
}
