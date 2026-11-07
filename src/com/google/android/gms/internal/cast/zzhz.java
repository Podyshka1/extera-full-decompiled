package com.google.android.gms.internal.cast;

import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import org.telegram.tgnet.TLObject;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzhz extends zzhr implements Set {
    private transient zzhv zza;

    public static zzhz zzh() {
        return zzii.zza;
    }

    public static int zzi(int i) {
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
        f$$ExternalSyntheticBUOutline1.m212m("collection too large");
        return 0;
    }

    public static zzhz zzj(Collection collection) {
        Object[] array = collection.toArray();
        return zzm(array.length, array);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzhz) && zzk() && ((zzhz) obj).zzk() && hashCode() != obj.hashCode()) {
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
        return zzij.zza(this);
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public zzhv zze() {
        zzhv zzhvVar = this.zza;
        if (zzhvVar != null) {
            return zzhvVar;
        }
        zzhv zzhvVarZzl = zzl();
        this.zza = zzhvVarZzl;
        return zzhvVarZzl;
    }

    public boolean zzk() {
        return false;
    }

    public zzhv zzl() {
        Object[] array = toArray();
        int i = zzhv.$r8$clinit;
        return zzhv.zzk(array, array.length);
    }

    private static zzhz zzm(int i, Object... objArr) {
        if (i == 0) {
            return zzii.zza;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new zzik(obj);
        }
        int iZzi = zzi(i);
        Object[] objArr2 = new Object[iZzi];
        int i2 = iZzi - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            zzib.zzb(obj2, i5);
            int iHashCode = obj2.hashCode();
            int iZza = zzho.zza(iHashCode);
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
            return new zzik(obj4);
        }
        if (zzi(i4) < iZzi / 2) {
            return zzm(i4, objArr);
        }
        int length = objArr.length;
        if (i4 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new zzii(objArr, i3, objArr2, i2, i4);
    }
}
