package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Arrays;
import java.util.Objects;
import java.util.Set;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzms extends zzmg implements Set {
    private transient zzml zza;

    public static int zzh(int i) {
        int iMax = Math.max(i, 2);
        if (iMax >= 751619276) {
            zzla.zza(iMax < 1073741824, "collection too large");
            return TLObject.FLAG_30;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1);
        do {
            iHighestOneBit += iHighestOneBit;
        } while (((double) iHighestOneBit) * 0.7d < iMax);
        return iHighestOneBit;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzms) && zzi() && ((zzms) obj).zzi() && hashCode() != obj.hashCode()) {
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
        return zzno.zza(this);
    }

    public abstract zzns zza();

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    public zzml zze() {
        zzml zzmlVar = this.zza;
        if (zzmlVar != null) {
            return zzmlVar;
        }
        zzml zzmlVarZzj = zzj();
        this.zza = zzmlVarZzj;
        return zzmlVarZzj;
    }

    public boolean zzi() {
        return false;
    }

    public zzml zzj() {
        Object[] array = toArray();
        int i = zzml.$r8$clinit;
        return zzml.zzr(array, array.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzms zzl(int i, Object... objArr) {
        if (i == 0) {
            return zznm.zza;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new zznp(obj);
        }
        int iZzh = zzh(i);
        Object[] objArr2 = new Object[iZzh];
        int i2 = iZzh - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            zzna.zzb(obj2, i5);
            int iHashCode = obj2.hashCode();
            int iZza = zzmd.zza(iHashCode);
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
            return new zznp(obj4);
        }
        if (zzh(i4) < iZzh / 2) {
            return zzl(i4, objArr);
        }
        int length = objArr.length;
        if (i4 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new zznm(objArr, i3, objArr2, i2, i4);
    }
}
