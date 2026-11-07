package com.google.android.recaptcha.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes5.dex */
final class zzpj extends AbstractMap implements Serializable {
    private static final Object zzd = new Object();
    transient int[] zza;
    transient Object[] zzb;
    transient Object[] zzc;
    private transient Object zze;
    private transient int zzf = zzrz.zza(3, 1, 1073741823);
    private transient int zzg;
    private transient Set zzh;
    private transient Set zzi;
    private transient Collection zzj;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzA, reason: merged with bridge method [inline-methods] */
    public final Object[] zzl() {
        Object[] objArr = this.zzb;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzB, reason: merged with bridge method [inline-methods] */
    public final Object[] zzm() {
        Object[] objArr = this.zzc;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    private final void zzu(int i) {
        this.zzf = ((32 - Integer.numberOfLeadingZeros(i)) & 31) | (this.zzf & (-32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzv, reason: merged with bridge method [inline-methods] */
    public final int zzg() {
        return (1 << (this.zzf & 31)) - 1;
    }

    private final int zzw(int i, int i2, int i3, int i4) {
        int i5 = i2 - 1;
        Object objZza = zzpk.zza(i2);
        if (i4 != 0) {
            zzpk.zzc(objZza, i3 & i5, i4 + 1);
        }
        Object obj = this.zze;
        Objects.requireNonNull(obj);
        int[] iArrZzk = zzk();
        for (int i6 = 0; i6 <= i; i6++) {
            int iZzb = zzpk.zzb(obj, i6);
            while (iZzb != 0) {
                int i7 = iZzb - 1;
                int i8 = iArrZzk[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int iZzb2 = zzpk.zzb(objZza, i10);
                zzpk.zzc(objZza, i10, iZzb);
                iArrZzk[i7] = ((~i5) & i9) | (iZzb2 & i5);
                iZzb = i8 & i;
            }
        }
        this.zze = objZza;
        zzu(i5);
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzx, reason: merged with bridge method [inline-methods] */
    public final int zzh(Object obj) {
        if (zza()) {
            return -1;
        }
        int iZzb = zzpn.zzb(obj);
        int iZzg = zzg();
        Object obj2 = this.zze;
        Objects.requireNonNull(obj2);
        int iZzb2 = zzpk.zzb(obj2, iZzb & iZzg);
        if (iZzb2 != 0) {
            int i = ~iZzg;
            int i2 = iZzb & i;
            do {
                int i3 = iZzb2 - 1;
                int i4 = zzk()[i3];
                if ((i4 & i) == i2 && Objects.equals(obj, zzl()[i3])) {
                    return i3;
                }
                iZzb2 = i4 & iZzg;
            } while (iZzb2 != 0);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzy, reason: merged with bridge method [inline-methods] */
    public final Object zzi(Object obj) {
        if (!zza()) {
            int iZzg = zzg();
            Object obj2 = this.zze;
            Objects.requireNonNull(obj2);
            int iZze = zzpk.zze(obj, null, iZzg, obj2, zzk(), zzl(), null);
            if (iZze != -1) {
                Object obj3 = zzm()[iZze];
                zzd(iZze, iZzg);
                this.zzg--;
                zzc();
                return obj3;
            }
        }
        return zzd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzz, reason: merged with bridge method [inline-methods] */
    public final int[] zzk() {
        int[] iArr = this.zza;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (zza()) {
            return;
        }
        zzc();
        Map mapZzb = zzb();
        if (mapZzb != null) {
            this.zzf = zzrz.zza(size(), 3, 1073741823);
            mapZzb.clear();
            this.zze = null;
            this.zzg = 0;
            return;
        }
        Arrays.fill(zzl(), 0, this.zzg, (Object) null);
        Arrays.fill(zzm(), 0, this.zzg, (Object) null);
        Object obj = this.zze;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(zzk(), 0, this.zzg, 0);
        this.zzg = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map mapZzb = zzb();
        return mapZzb != null ? mapZzb.containsKey(obj) : zzh(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map mapZzb = zzb();
        if (mapZzb != null) {
            return mapZzb.containsValue(obj);
        }
        for (int i = 0; i < this.zzg; i++) {
            if (Objects.equals(obj, zzm()[i])) {
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
        zzpe zzpeVar = new zzpe(this, null);
        this.zzi = zzpeVar;
        return zzpeVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Map mapZzb = zzb();
        if (mapZzb != null) {
            return mapZzb.get(obj);
        }
        int iZzh = zzh(obj);
        if (iZzh == -1) {
            return null;
        }
        return zzm()[iZzh];
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
        zzpg zzpgVar = new zzpg(this, null);
        this.zzh = zzpgVar;
        return zzpgVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        int i;
        if (zza()) {
            zzoq.zzc(zza(), "Arrays already allocated");
            int i2 = this.zzf;
            int iMax = Math.max(i2 + 1, 2);
            int iHighestOneBit = Integer.highestOneBit(iMax);
            if (iMax > iHighestOneBit && (iHighestOneBit = iHighestOneBit + iHighestOneBit) <= 0) {
                iHighestOneBit = TLObject.FLAG_30;
            }
            int iMax2 = Math.max(4, iHighestOneBit);
            this.zze = zzpk.zza(iMax2);
            zzu(iMax2 - 1);
            this.zza = new int[i2];
            this.zzb = new Object[i2];
            this.zzc = new Object[i2];
        }
        Map mapZzb = zzb();
        if (mapZzb != null) {
            return mapZzb.put(obj, obj2);
        }
        int[] iArrZzk = zzk();
        Object[] objArrZzl = zzl();
        Object[] objArrZzm = zzm();
        int i3 = this.zzg;
        int i4 = i3 + 1;
        int iZzb = zzpn.zzb(obj);
        int iZzg = zzg();
        int i5 = iZzb & iZzg;
        Object obj3 = this.zze;
        Objects.requireNonNull(obj3);
        int iZzb2 = zzpk.zzb(obj3, i5);
        if (iZzb2 == 0) {
            if (i4 > iZzg) {
                iZzg = zzw(iZzg, zzpk.zzd(iZzg), iZzb, i3);
            } else {
                Object obj4 = this.zze;
                Objects.requireNonNull(obj4);
                zzpk.zzc(obj4, i5, i4);
            }
            i = 1;
        } else {
            int i6 = ~iZzg;
            int i7 = iZzb & i6;
            int i8 = 0;
            while (true) {
                int i9 = iZzb2 - 1;
                int i10 = iArrZzk[i9];
                i = 1;
                int i11 = i10 & i6;
                if (i11 == i7 && Objects.equals(obj, objArrZzl[i9])) {
                    Object obj5 = objArrZzm[i9];
                    objArrZzm[i9] = obj2;
                    return obj5;
                }
                int i12 = i10 & iZzg;
                i8++;
                if (i12 != 0) {
                    iZzb2 = i12;
                } else {
                    if (i8 >= 9) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap(zzg() + 1, 1.0f);
                        int iZze = zze();
                        while (iZze >= 0) {
                            linkedHashMap.put(zzl()[iZze], zzm()[iZze]);
                            iZze = zzf(iZze);
                        }
                        this.zze = linkedHashMap;
                        this.zza = null;
                        this.zzb = null;
                        this.zzc = null;
                        zzc();
                        return linkedHashMap.put(obj, obj2);
                    }
                    if (i4 > iZzg) {
                        iZzg = zzw(iZzg, zzpk.zzd(iZzg), iZzb, i3);
                    } else {
                        iArrZzk[i9] = (i4 & iZzg) | i11;
                    }
                }
            }
        }
        int length = zzk().length;
        if (i4 > length) {
            int i13 = i;
            int iMin = Math.min(1073741823, (Math.max(i13, length >>> 1) + length) | i13);
            if (iMin != length) {
                this.zza = Arrays.copyOf(zzk(), iMin);
                this.zzb = Arrays.copyOf(zzl(), iMin);
                this.zzc = Arrays.copyOf(zzm(), iMin);
            }
        }
        zzk()[i3] = (~iZzg) & iZzb;
        zzl()[i3] = obj;
        zzm()[i3] = obj2;
        this.zzg = i4;
        zzc();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Map mapZzb = zzb();
        if (mapZzb != null) {
            return mapZzb.remove(obj);
        }
        Object objZzi = zzi(obj);
        if (objZzi == zzd) {
            return null;
        }
        return objZzi;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map mapZzb = zzb();
        return mapZzb != null ? mapZzb.size() : this.zzg;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.zzj;
        if (collection != null) {
            return collection;
        }
        zzpi zzpiVar = new zzpi(this, null);
        this.zzj = zzpiVar;
        return zzpiVar;
    }

    public final boolean zza() {
        return this.zze == null;
    }

    public final Map zzb() {
        Object obj = this.zze;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final void zzc() {
        this.zzf += 32;
    }

    public final void zzd(int i, int i2) {
        Object obj = this.zze;
        Objects.requireNonNull(obj);
        int[] iArrZzk = zzk();
        Object[] objArrZzl = zzl();
        Object[] objArrZzm = zzm();
        int size = size();
        int i3 = size - 1;
        if (i >= i3) {
            objArrZzl[i] = null;
            objArrZzm[i] = null;
            iArrZzk[i] = 0;
            return;
        }
        int i4 = i + 1;
        Object obj2 = objArrZzl[i3];
        objArrZzl[i] = obj2;
        objArrZzm[i] = objArrZzm[i3];
        objArrZzl[i3] = null;
        objArrZzm[i3] = null;
        iArrZzk[i] = iArrZzk[i3];
        iArrZzk[i3] = 0;
        int iZzb = zzpn.zzb(obj2) & i2;
        int iZzb2 = zzpk.zzb(obj, iZzb);
        if (iZzb2 == size) {
            zzpk.zzc(obj, iZzb, i4);
            return;
        }
        while (true) {
            int i5 = iZzb2 - 1;
            int i6 = iArrZzk[i5];
            int i7 = i6 & i2;
            if (i7 == size) {
                iArrZzk[i5] = ((~i2) & i6) | (i4 & i2);
                return;
            }
            iZzb2 = i7;
        }
    }

    public final int zze() {
        return isEmpty() ? -1 : 0;
    }

    public final int zzf(int i) {
        int i2 = i + 1;
        if (i2 < this.zzg) {
            return i2;
        }
        return -1;
    }

    public final /* synthetic */ Object zzj() {
        Object obj = this.zze;
        Objects.requireNonNull(obj);
        return obj;
    }

    public final /* synthetic */ Object zzn(int i) {
        return zzl()[i];
    }

    public final /* synthetic */ Object zzo(int i) {
        return zzm()[i];
    }

    public final /* synthetic */ void zzp(int i, Object obj) {
        zzm()[i] = obj;
    }

    public final /* synthetic */ int zzr() {
        return this.zzf;
    }

    public final /* synthetic */ int zzs() {
        return this.zzg;
    }

    public final /* synthetic */ void zzt(int i) {
        this.zzg = i;
    }
}
