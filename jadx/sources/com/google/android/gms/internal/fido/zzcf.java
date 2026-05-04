package com.google.android.gms.internal.fido;

import java.util.Arrays;
import java.util.Set;
import org.telegram.tgnet.TLObject;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzcf extends zzby implements Set, p022j$.util.Set {
    private transient zzcc zza;

    zzcf() {
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

    public static zzcf zzk() {
        return zzcu.zza;
    }

    public static zzcf zzl(Object obj) {
        return new zzcz("FIDO");
    }

    public static zzcf zzm(Object obj, Object obj2) {
        return zzf(2, obj, obj2);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzcf) && zzg() && ((zzcf) obj).zzg() && hashCode() != obj.hashCode()) {
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
        return zzcy.zza(this);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public abstract zzdc zzd();

    boolean zzg() {
        return false;
    }

    public zzcc zzi() {
        zzcc zzccVar = this.zza;
        if (zzccVar != null) {
            return zzccVar;
        }
        zzcc zzccVarZzj = zzj();
        this.zza = zzccVarZzj;
        return zzccVarZzj;
    }

    zzcc zzj() {
        Object[] array = toArray();
        int i = zzcc.$r8$clinit;
        return zzcc.zzh(array, array.length);
    }

    private static zzcf zzf(int i, Object... objArr) {
        if (i == 0) {
            return zzcu.zza;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new zzcz(obj);
        }
        int iZzh = zzh(i);
        Object[] objArr2 = new Object[iZzh];
        int i2 = iZzh - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            zzcr.zza(obj2, i5);
            int iHashCode = obj2.hashCode();
            int iZza = zzbx.zza(iHashCode);
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
            return new zzcz(obj4);
        }
        if (zzh(i4) < iZzh / 2) {
            return zzf(i4, objArr);
        }
        if (i4 <= 0) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new zzcu(objArr, i3, objArr2, i2, i4);
    }
}
