package com.google.android.recaptcha.internal;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzaho {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final zzahz zzb;

    static {
        int i = zzaef.$r8$clinit;
        zzb = new zzaib();
    }

    public static zzahz zzA() {
        return zzb;
    }

    public static boolean zzB(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void zzC(zzafi zzafiVar, Object obj, Object obj2) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj2);
        throw null;
    }

    public static void zzD(zzahz zzahzVar, Object obj, Object obj2) {
        zzafv zzafvVar = (zzafv) obj;
        zzaia zzaiaVarZzc = zzafvVar.zzc;
        zzaia zzaiaVar = ((zzafv) obj2).zzc;
        if (!zzaia.zza().equals(zzaiaVar)) {
            if (zzaia.zza().equals(zzaiaVarZzc)) {
                zzaiaVarZzc = zzaia.zzc(zzaiaVarZzc, zzaiaVar);
            } else {
                zzaiaVarZzc.zzl(zzaiaVar);
            }
        }
        zzafvVar.zzc = zzaiaVarZzc;
    }

    public static Object zzE(Object obj, int i, List list, zzaga zzagaVar, Object obj2, zzahz zzahzVar) {
        if (zzagaVar == null) {
            return obj2;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Integer) it.next()).intValue();
                if (!zzagaVar.zza(iIntValue)) {
                    obj2 = zzF(obj, i, iIntValue, obj2, zzahzVar);
                    it.remove();
                }
            }
            return obj2;
        }
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Integer num = (Integer) list.get(i3);
            int iIntValue2 = num.intValue();
            if (zzagaVar.zza(iIntValue2)) {
                if (i3 != i2) {
                    list.set(i2, num);
                }
                i2++;
            } else {
                obj2 = zzF(obj, i, iIntValue2, obj2, zzahzVar);
            }
        }
        if (i2 != size) {
            list.subList(i2, size).clear();
        }
        return obj2;
    }

    public static Object zzF(Object obj, int i, int i2, Object obj2, zzahz zzahzVar) {
        if (obj2 == null) {
            obj2 = zzaib.zzj(obj);
        }
        zzaib.zzi((zzaia) obj2, i, i2);
        return obj2;
    }

    public static void zza(int i, List list, zzafb zzafbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzafbVar.zzC(i, list, z);
    }

    public static void zzb(int i, List list, zzafb zzafbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzafbVar.zzB(i, list, z);
    }

    public static void zzc(int i, List list, zzafb zzafbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzafbVar.zzy(i, list, z);
    }

    public static void zzd(int i, List list, zzafb zzafbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzafbVar.zzz(i, list, z);
    }

    public static void zze(int i, List list, zzafb zzafbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzafbVar.zzL(i, list, z);
    }

    public static void zzf(int i, List list, zzafb zzafbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzafbVar.zzA(i, list, z);
    }

    public static void zzg(int i, List list, zzafb zzafbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzafbVar.zzJ(i, list, z);
    }

    public static void zzh(int i, List list, zzafb zzafbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzafbVar.zzw(i, list, z);
    }

    public static void zzi(int i, List list, zzafb zzafbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzafbVar.zzH(i, list, z);
    }

    public static void zzj(int i, List list, zzafb zzafbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzafbVar.zzK(i, list, z);
    }

    public static void zzk(int i, List list, zzafb zzafbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzafbVar.zzx(i, list, z);
    }

    public static void zzl(int i, List list, zzafb zzafbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzafbVar.zzI(i, list, z);
    }

    public static void zzm(int i, List list, zzafb zzafbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzafbVar.zzD(i, list, z);
    }

    public static void zzn(int i, List list, zzafb zzafbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzafbVar.zzE(i, list, z);
    }

    public static int zzo(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzagq)) {
            int iZzv = 0;
            while (i < size) {
                iZzv += zzafa.zzv(((Long) list.get(i)).longValue());
                i++;
            }
            return iZzv;
        }
        zzagq zzagqVar = (zzagq) list;
        int iZzv2 = 0;
        while (i < size) {
            iZzv2 += zzafa.zzv(zzagqVar.zze(i));
            i++;
        }
        return iZzv2;
    }

    public static int zzp(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzagq)) {
            int iZzv = 0;
            while (i < size) {
                iZzv += zzafa.zzv(((Long) list.get(i)).longValue());
                i++;
            }
            return iZzv;
        }
        zzagq zzagqVar = (zzagq) list;
        int iZzv2 = 0;
        while (i < size) {
            iZzv2 += zzafa.zzv(zzagqVar.zze(i));
            i++;
        }
        return iZzv2;
    }

    public static int zzq(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzagq)) {
            int iZzv = 0;
            while (i < size) {
                long jLongValue = ((Long) list.get(i)).longValue();
                iZzv += zzafa.zzv((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i++;
            }
            return iZzv;
        }
        zzagq zzagqVar = (zzagq) list;
        int iZzv2 = 0;
        while (i < size) {
            long jZze = zzagqVar.zze(i);
            iZzv2 += zzafa.zzv((jZze >> 63) ^ (jZze + jZze));
            i++;
        }
        return iZzv2;
    }

    public static int zzr(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzafw)) {
            int iZzv = 0;
            while (i < size) {
                iZzv += zzafa.zzv(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzv;
        }
        zzafw zzafwVar = (zzafw) list;
        int iZzv2 = 0;
        while (i < size) {
            iZzv2 += zzafa.zzv(zzafwVar.zzf(i));
            i++;
        }
        return iZzv2;
    }

    public static int zzs(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzafw)) {
            int iZzv = 0;
            while (i < size) {
                iZzv += zzafa.zzv(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzv;
        }
        zzafw zzafwVar = (zzafw) list;
        int iZzv2 = 0;
        while (i < size) {
            iZzv2 += zzafa.zzv(zzafwVar.zzf(i));
            i++;
        }
        return iZzv2;
    }

    public static int zzt(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzafw)) {
            int iZzu = 0;
            while (i < size) {
                iZzu += zzafa.zzu(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzu;
        }
        zzafw zzafwVar = (zzafw) list;
        int iZzu2 = 0;
        while (i < size) {
            iZzu2 += zzafa.zzu(zzafwVar.zzf(i));
            i++;
        }
        return iZzu2;
    }

    public static int zzu(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzafw)) {
            int iZzu = 0;
            while (i < size) {
                int iIntValue = ((Integer) list.get(i)).intValue();
                iZzu += zzafa.zzu((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
            return iZzu;
        }
        zzafw zzafwVar = (zzafw) list;
        int iZzu2 = 0;
        while (i < size) {
            int iZzf = zzafwVar.zzf(i);
            iZzu2 += zzafa.zzu((iZzf >> 31) ^ (iZzf + iZzf));
            i++;
        }
        return iZzu2;
    }

    public static int zzv(List list) {
        return list.size() * 4;
    }

    public static int zzw(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzafa.zzu(i << 3) + 4);
    }

    public static int zzx(List list) {
        return list.size() * 8;
    }

    public static int zzy(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzafa.zzu(i << 3) + 8);
    }

    @Deprecated
    public static int zzz(int i, zzagx zzagxVar, zzahn zzahnVar) {
        int iZzu = zzafa.zzu(i << 3);
        return iZzu + iZzu + ((zzaec) zzagxVar).zzx(zzahnVar);
    }
}
