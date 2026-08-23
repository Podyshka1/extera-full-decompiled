package com.google.android.gms.internal.mlkit_vision_label;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzau extends AbstractMap implements Serializable {
    private static final Object zzd = new Object();
    transient int[] zza;
    transient Object[] zzb;
    transient Object[] zzc;
    private transient Object zze;
    private transient int zzf;
    private transient int zzg;
    private transient Set zzh;
    private transient Set zzi;
    private transient Collection zzj;

    /* JADX INFO: Access modifiers changed from: private */
    public final Object[] zzA() {
        Object[] objArr = this.zzb;
        objArr.getClass();
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object[] zzB() {
        Object[] objArr = this.zzc;
        objArr.getClass();
        return objArr;
    }

    static /* synthetic */ int zzb(zzau zzauVar) {
        int i = zzauVar.zzg;
        zzauVar.zzg = i - 1;
        return i;
    }

    static /* synthetic */ Object zzg(zzau zzauVar, int i) {
        return zzauVar.zzA()[i];
    }

    static /* synthetic */ Object zzj(zzau zzauVar, int i) {
        return zzauVar.zzB()[i];
    }

    static /* synthetic */ Object zzk(zzau zzauVar) {
        Object obj = zzauVar.zze;
        obj.getClass();
        return obj;
    }

    static /* synthetic */ void zzm(zzau zzauVar, int i, Object obj) {
        zzauVar.zzB()[i] = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int zzu() {
        return (1 << (this.zzf & 31)) - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int zzv(Object obj) {
        if (zzq()) {
            return -1;
        }
        int iZza = zzaw.zza(obj);
        int iZzu = zzu();
        Object obj2 = this.zze;
        obj2.getClass();
        int iZzc = zzav.zzc(obj2, iZza & iZzu);
        if (iZzc != 0) {
            int i = ~iZzu;
            int i2 = iZza & i;
            do {
                int i3 = iZzc - 1;
                int i4 = zzz()[i3];
                if ((i4 & i) == i2 && zzo.zza(obj, zzA()[i3])) {
                    return i3;
                }
                iZzc = i4 & iZzu;
            } while (iZzc != 0);
        }
        return -1;
    }

    private final int zzw(int i, int i2, int i3, int i4) {
        Object objZzd = zzav.zzd(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            zzav.zze(objZzd, i3 & i5, i4 + 1);
        }
        Object obj = this.zze;
        obj.getClass();
        int[] iArrZzz = zzz();
        for (int i6 = 0; i6 <= i; i6++) {
            int iZzc = zzav.zzc(obj, i6);
            while (iZzc != 0) {
                int i7 = iZzc - 1;
                int i8 = iArrZzz[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int iZzc2 = zzav.zzc(objZzd, i10);
                zzav.zze(objZzd, i10, iZzc);
                iArrZzz[i7] = ((~i5) & i9) | (iZzc2 & i5);
                iZzc = i8 & i;
            }
        }
        this.zze = objZzd;
        zzy(i5);
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object zzx(Object obj) {
        if (zzq()) {
            return zzd;
        }
        int iZzu = zzu();
        Object obj2 = this.zze;
        obj2.getClass();
        int iZzb = zzav.zzb(obj, null, iZzu, obj2, zzz(), zzA(), null);
        if (iZzb == -1) {
            return zzd;
        }
        Object obj3 = zzB()[iZzb];
        zzp(iZzb, iZzu);
        this.zzg--;
        zzn();
        return obj3;
    }

    private final void zzy(int i) {
        this.zzf = ((32 - Integer.numberOfLeadingZeros(i)) & 31) | (this.zzf & (-32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int[] zzz() {
        int[] iArr = this.zza;
        iArr.getClass();
        return iArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (zzq()) {
            return;
        }
        zzn();
        Map mapZzl = zzl();
        if (mapZzl != null) {
            this.zzf = zzcf.zza(size(), 3, 1073741823);
            mapZzl.clear();
            this.zze = null;
            this.zzg = 0;
            return;
        }
        Arrays.fill(zzA(), 0, this.zzg, (Object) null);
        Arrays.fill(zzB(), 0, this.zzg, (Object) null);
        Object obj = this.zze;
        obj.getClass();
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(zzz(), 0, this.zzg, 0);
        this.zzg = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map mapZzl = zzl();
        return mapZzl != null ? mapZzl.containsKey(obj) : zzv(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map mapZzl = zzl();
        if (mapZzl != null) {
            return mapZzl.containsValue(obj);
        }
        for (int i = 0; i < this.zzg; i++) {
            if (zzo.zza(obj, zzB()[i])) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.zzi;
        if (set != null) {
            return set;
        }
        zzap zzapVar = new zzap(this);
        this.zzi = zzapVar;
        return zzapVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Map mapZzl = zzl();
        if (mapZzl != null) {
            return mapZzl.get(obj);
        }
        int iZzv = zzv(obj);
        if (iZzv == -1) {
            return null;
        }
        return zzB()[iZzv];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        Set set = this.zzh;
        if (set != null) {
            return set;
        }
        zzar zzarVar = new zzar(this);
        this.zzh = zzarVar;
        return zzarVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        int i;
        if (zzq()) {
            zzs.zzd(zzq(), "Arrays already allocated");
            int i2 = this.zzf;
            int iMax = Math.max(i2 + 1, 2);
            int iHighestOneBit = Integer.highestOneBit(iMax);
            if (iMax > iHighestOneBit && (iHighestOneBit = iHighestOneBit + iHighestOneBit) <= 0) {
                iHighestOneBit = TLObject.FLAG_30;
            }
            int iMax2 = Math.max(4, iHighestOneBit);
            this.zze = zzav.zzd(iMax2);
            zzy(iMax2 - 1);
            this.zza = new int[i2];
            this.zzb = new Object[i2];
            this.zzc = new Object[i2];
        }
        Map mapZzl = zzl();
        if (mapZzl != null) {
            return mapZzl.put(obj, obj2);
        }
        int[] iArrZzz = zzz();
        Object[] objArrZzA = zzA();
        Object[] objArrZzB = zzB();
        int i3 = this.zzg;
        int i4 = i3 + 1;
        int iZza = zzaw.zza(obj);
        int iZzu = zzu();
        int i5 = iZza & iZzu;
        Object obj3 = this.zze;
        obj3.getClass();
        int iZzc = zzav.zzc(obj3, i5);
        if (iZzc == 0) {
            if (i4 > iZzu) {
                iZzu = zzw(iZzu, zzav.zza(iZzu), iZza, i3);
            } else {
                Object obj4 = this.zze;
                obj4.getClass();
                zzav.zze(obj4, i5, i4);
            }
            i = 1;
        } else {
            int i6 = ~iZzu;
            int i7 = iZza & i6;
            int i8 = 0;
            while (true) {
                int i9 = iZzc - 1;
                int i10 = iArrZzz[i9];
                i = 1;
                int i11 = i10 & i6;
                if (i11 == i7 && zzo.zza(obj, objArrZzA[i9])) {
                    Object obj5 = objArrZzB[i9];
                    objArrZzB[i9] = obj2;
                    return obj5;
                }
                int i12 = i10 & iZzu;
                i8++;
                if (i12 != 0) {
                    iZzc = i12;
                } else {
                    if (i8 >= 9) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap(zzu() + 1, 1.0f);
                        int iZze = zze();
                        while (iZze >= 0) {
                            linkedHashMap.put(zzA()[iZze], zzB()[iZze]);
                            iZze = zzf(iZze);
                        }
                        this.zze = linkedHashMap;
                        this.zza = null;
                        this.zzb = null;
                        this.zzc = null;
                        zzn();
                        return linkedHashMap.put(obj, obj2);
                    }
                    if (i4 > iZzu) {
                        iZzu = zzw(iZzu, zzav.zza(iZzu), iZza, i3);
                    } else {
                        iArrZzz[i9] = (i4 & iZzu) | i11;
                    }
                }
            }
        }
        int length = zzz().length;
        if (i4 > length) {
            int i13 = i;
            int iMin = Math.min(1073741823, (Math.max(i13, length >>> 1) + length) | i13);
            if (iMin != length) {
                this.zza = Arrays.copyOf(zzz(), iMin);
                this.zzb = Arrays.copyOf(zzA(), iMin);
                this.zzc = Arrays.copyOf(zzB(), iMin);
            }
        }
        zzz()[i3] = (~iZzu) & iZza;
        zzA()[i3] = obj;
        zzB()[i3] = obj2;
        this.zzg = i4;
        zzn();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Map mapZzl = zzl();
        if (mapZzl != null) {
            return mapZzl.remove(obj);
        }
        Object objZzx = zzx(obj);
        if (objZzx == zzd) {
            return null;
        }
        return objZzx;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map mapZzl = zzl();
        return mapZzl != null ? mapZzl.size() : this.zzg;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.zzj;
        if (collection != null) {
            return collection;
        }
        zzat zzatVar = new zzat(this);
        this.zzj = zzatVar;
        return zzatVar;
    }

    final int zze() {
        return isEmpty() ? -1 : 0;
    }

    final int zzf(int i) {
        int i2 = i + 1;
        if (i2 < this.zzg) {
            return i2;
        }
        return -1;
    }

    final Map zzl() {
        Object obj = this.zze;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    final void zzn() {
        this.zzf += 32;
    }

    final void zzo(int i) {
        this.zzf = zzcf.zza(12, 1, 1073741823);
    }

    final void zzp(int i, int i2) {
        Object obj = this.zze;
        obj.getClass();
        int[] iArrZzz = zzz();
        Object[] objArrZzA = zzA();
        Object[] objArrZzB = zzB();
        int size = size();
        int i3 = size - 1;
        if (i >= i3) {
            objArrZzA[i] = null;
            objArrZzB[i] = null;
            iArrZzz[i] = 0;
            return;
        }
        Object obj2 = objArrZzA[i3];
        objArrZzA[i] = obj2;
        objArrZzB[i] = objArrZzB[i3];
        objArrZzA[i3] = null;
        objArrZzB[i3] = null;
        iArrZzz[i] = iArrZzz[i3];
        iArrZzz[i3] = 0;
        int iZza = zzaw.zza(obj2) & i2;
        int iZzc = zzav.zzc(obj, iZza);
        if (iZzc == size) {
            zzav.zze(obj, iZza, i + 1);
            return;
        }
        while (true) {
            int i4 = iZzc - 1;
            int i5 = iArrZzz[i4];
            int i6 = i5 & i2;
            if (i6 == size) {
                iArrZzz[i4] = ((i + 1) & i2) | (i5 & (~i2));
                return;
            }
            iZzc = i6;
        }
    }

    final boolean zzq() {
        return this.zze == null;
    }

    zzau(int i) {
        zzo(12);
    }
}
