package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzal extends AbstractMap implements Serializable {
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

    static /* synthetic */ Object zzh(zzal zzalVar) {
        Object obj = zzalVar.zze;
        obj.getClass();
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int zzp() {
        return (1 << (this.zzf & 31)) - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int zzq(Object obj) {
        if (zzo()) {
            return -1;
        }
        int iZza = zzan.zza(obj);
        int iZzp = zzp();
        Object obj2 = this.zze;
        obj2.getClass();
        int iZzc = zzam.zzc(obj2, iZza & iZzp);
        if (iZzc != 0) {
            int i = ~iZzp;
            int i2 = iZza & i;
            do {
                int i3 = iZzc - 1;
                int[] iArr = this.zza;
                iArr.getClass();
                int i4 = iArr[i3];
                if ((i4 & i) == i2) {
                    Object[] objArr = this.zzb;
                    objArr.getClass();
                    if (zze.zza(obj, objArr[i3])) {
                        return i3;
                    }
                }
                iZzc = i4 & iZzp;
            } while (iZzc != 0);
        }
        return -1;
    }

    private final int zzr(int i, int i2, int i3, int i4) {
        int i5 = i2 - 1;
        Object objZzd = zzam.zzd(i2);
        if (i4 != 0) {
            zzam.zze(objZzd, i3 & i5, i4 + 1);
        }
        Object obj = this.zze;
        obj.getClass();
        int[] iArr = this.zza;
        iArr.getClass();
        for (int i6 = 0; i6 <= i; i6++) {
            int iZzc = zzam.zzc(obj, i6);
            while (iZzc != 0) {
                int i7 = iZzc - 1;
                int i8 = iArr[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int iZzc2 = zzam.zzc(objZzd, i10);
                zzam.zze(objZzd, i10, iZzc);
                iArr[i7] = ((~i5) & i9) | (iZzc2 & i5);
                iZzc = i8 & i;
            }
        }
        this.zze = objZzd;
        zzt(i5);
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object zzs(Object obj) {
        if (zzo()) {
            return zzd;
        }
        int iZzp = zzp();
        Object obj2 = this.zze;
        obj2.getClass();
        int[] iArr = this.zza;
        iArr.getClass();
        Object[] objArr = this.zzb;
        objArr.getClass();
        int iZzb = zzam.zzb(obj, null, iZzp, obj2, iArr, objArr, null);
        if (iZzb == -1) {
            return zzd;
        }
        Object[] objArr2 = this.zzc;
        objArr2.getClass();
        Object obj3 = objArr2[iZzb];
        zzn(iZzb, iZzp);
        this.zzg--;
        zzl();
        return obj3;
    }

    private final void zzt(int i) {
        this.zzf = ((32 - Integer.numberOfLeadingZeros(i)) & 31) | (this.zzf & (-32));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (zzo()) {
            return;
        }
        zzl();
        Map mapZzj = zzj();
        if (mapZzj != null) {
            this.zzf = zzbw.zza(size(), 3, 1073741823);
            mapZzj.clear();
            this.zze = null;
            this.zzg = 0;
            return;
        }
        Object[] objArr = this.zzb;
        objArr.getClass();
        Arrays.fill(objArr, 0, this.zzg, (Object) null);
        Object[] objArr2 = this.zzc;
        objArr2.getClass();
        Arrays.fill(objArr2, 0, this.zzg, (Object) null);
        Object obj = this.zze;
        obj.getClass();
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        int[] iArr = this.zza;
        iArr.getClass();
        Arrays.fill(iArr, 0, this.zzg, 0);
        this.zzg = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map mapZzj = zzj();
        return mapZzj != null ? mapZzj.containsKey(obj) : zzq(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map mapZzj = zzj();
        if (mapZzj != null) {
            return mapZzj.containsValue(obj);
        }
        for (int i = 0; i < this.zzg; i++) {
            Object[] objArr = this.zzc;
            objArr.getClass();
            if (zze.zza(obj, objArr[i])) {
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
        zzaf zzafVar = new zzaf(this);
        this.zzi = zzafVar;
        return zzafVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Map mapZzj = zzj();
        if (mapZzj != null) {
            return mapZzj.get(obj);
        }
        int iZzq = zzq(obj);
        if (iZzq == -1) {
            return null;
        }
        Object[] objArr = this.zzc;
        objArr.getClass();
        return objArr[iZzq];
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
        zzai zzaiVar = new zzai(this);
        this.zzh = zzaiVar;
        return zzaiVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        int i;
        if (zzo()) {
            zzi.zzd(zzo(), "Arrays already allocated");
            int i2 = this.zzf;
            int iMax = Math.max(i2 + 1, 2);
            int iHighestOneBit = Integer.highestOneBit(iMax);
            if (iMax > iHighestOneBit && (iHighestOneBit = iHighestOneBit + iHighestOneBit) <= 0) {
                iHighestOneBit = TLObject.FLAG_30;
            }
            int iMax2 = Math.max(4, iHighestOneBit);
            this.zze = zzam.zzd(iMax2);
            zzt(iMax2 - 1);
            this.zza = new int[i2];
            this.zzb = new Object[i2];
            this.zzc = new Object[i2];
        }
        Map mapZzj = zzj();
        if (mapZzj != null) {
            return mapZzj.put(obj, obj2);
        }
        int[] iArr = this.zza;
        iArr.getClass();
        Object[] objArr = this.zzb;
        objArr.getClass();
        Object[] objArr2 = this.zzc;
        objArr2.getClass();
        int i3 = this.zzg;
        int i4 = i3 + 1;
        int iZza = zzan.zza(obj);
        int iZzp = zzp();
        int i5 = iZza & iZzp;
        Object obj3 = this.zze;
        obj3.getClass();
        int iZzc = zzam.zzc(obj3, i5);
        if (iZzc == 0) {
            if (i4 > iZzp) {
                iZzp = zzr(iZzp, zzam.zza(iZzp), iZza, i3);
            } else {
                Object obj4 = this.zze;
                obj4.getClass();
                zzam.zze(obj4, i5, i4);
            }
            i = 1;
        } else {
            int i6 = ~iZzp;
            int i7 = iZza & i6;
            int i8 = 0;
            while (true) {
                int i9 = iZzc - 1;
                int i10 = iArr[i9];
                i = 1;
                int i11 = i10 & i6;
                if (i11 == i7 && zze.zza(obj, objArr[i9])) {
                    Object obj5 = objArr2[i9];
                    objArr2[i9] = obj2;
                    return obj5;
                }
                int i12 = i10 & iZzp;
                i8++;
                if (i12 != 0) {
                    iZzc = i12;
                } else {
                    if (i8 >= 9) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap(zzp() + 1, 1.0f);
                        int iZze = zze();
                        while (iZze >= 0) {
                            Object[] objArr3 = this.zzb;
                            objArr3.getClass();
                            Object obj6 = objArr3[iZze];
                            Object[] objArr4 = this.zzc;
                            objArr4.getClass();
                            linkedHashMap.put(obj6, objArr4[iZze]);
                            iZze = zzf(iZze);
                        }
                        this.zze = linkedHashMap;
                        this.zza = null;
                        this.zzb = null;
                        this.zzc = null;
                        zzl();
                        return linkedHashMap.put(obj, obj2);
                    }
                    if (i4 > iZzp) {
                        iZzp = zzr(iZzp, zzam.zza(iZzp), iZza, i3);
                    } else {
                        iArr[i9] = (i4 & iZzp) | i11;
                    }
                }
            }
        }
        int[] iArr2 = this.zza;
        iArr2.getClass();
        int length = iArr2.length;
        if (i4 > length) {
            int i13 = i;
            int iMin = Math.min(1073741823, (Math.max(i13, length >>> 1) + length) | i13);
            if (iMin != length) {
                int[] iArr3 = this.zza;
                iArr3.getClass();
                this.zza = Arrays.copyOf(iArr3, iMin);
                Object[] objArr5 = this.zzb;
                objArr5.getClass();
                this.zzb = Arrays.copyOf(objArr5, iMin);
                Object[] objArr6 = this.zzc;
                objArr6.getClass();
                this.zzc = Arrays.copyOf(objArr6, iMin);
            }
        }
        int i14 = (~iZzp) & iZza;
        int[] iArr4 = this.zza;
        iArr4.getClass();
        iArr4[i3] = i14;
        Object[] objArr7 = this.zzb;
        objArr7.getClass();
        objArr7[i3] = obj;
        Object[] objArr8 = this.zzc;
        objArr8.getClass();
        objArr8[i3] = obj2;
        this.zzg = i4;
        zzl();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Map mapZzj = zzj();
        if (mapZzj != null) {
            return mapZzj.remove(obj);
        }
        Object objZzs = zzs(obj);
        if (objZzs == zzd) {
            return null;
        }
        return objZzs;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map mapZzj = zzj();
        return mapZzj != null ? mapZzj.size() : this.zzg;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.zzj;
        if (collection != null) {
            return collection;
        }
        zzak zzakVar = new zzak(this);
        this.zzj = zzakVar;
        return zzakVar;
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

    final Map zzj() {
        Object obj = this.zze;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    final void zzl() {
        this.zzf += 32;
    }

    final void zzm(int i) {
        this.zzf = zzbw.zza(12, 1, 1073741823);
    }

    final void zzn(int i, int i2) {
        Object obj = this.zze;
        obj.getClass();
        int[] iArr = this.zza;
        iArr.getClass();
        Object[] objArr = this.zzb;
        objArr.getClass();
        Object[] objArr2 = this.zzc;
        objArr2.getClass();
        int size = size();
        int i3 = size - 1;
        if (i >= i3) {
            objArr[i] = null;
            objArr2[i] = null;
            iArr[i] = 0;
            return;
        }
        int i4 = i + 1;
        Object obj2 = objArr[i3];
        objArr[i] = obj2;
        objArr2[i] = objArr2[i3];
        objArr[i3] = null;
        objArr2[i3] = null;
        iArr[i] = iArr[i3];
        iArr[i3] = 0;
        int iZza = zzan.zza(obj2) & i2;
        int iZzc = zzam.zzc(obj, iZza);
        if (iZzc == size) {
            zzam.zze(obj, iZza, i4);
            return;
        }
        while (true) {
            int i5 = iZzc - 1;
            int i6 = iArr[i5];
            int i7 = i6 & i2;
            if (i7 == size) {
                iArr[i5] = (i6 & (~i2)) | (i2 & i4);
                return;
            }
            iZzc = i7;
        }
    }

    final boolean zzo() {
        return this.zze == null;
    }

    zzal(int i) {
        zzm(12);
    }
}
