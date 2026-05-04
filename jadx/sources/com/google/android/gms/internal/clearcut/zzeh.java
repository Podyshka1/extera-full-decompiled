package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzeh {
    private static final Class zzoh = zzdp();
    private static final zzex zzoi = zzd(false);
    private static final zzex zzoj = zzd(true);
    private static final zzex zzok = new zzez();

    static int zza(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdc) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iZze = 0;
        for (int i = 0; i < size; i++) {
            iZze += zzbn.zze(((Long) list.get(i)).longValue());
        }
        return iZze;
    }

    private static Object zza(int i, int i2, Object obj, zzex zzexVar) {
        if (obj == null) {
            obj = zzexVar.zzdz();
        }
        zzexVar.zza(obj, i, i2);
        return obj;
    }

    static Object zza(int i, List list, zzck zzckVar, Object obj, zzex zzexVar) {
        if (zzckVar == null) {
            return obj;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Integer) it.next()).intValue();
                if (zzckVar.zzb(iIntValue) == null) {
                    obj = zza(i, iIntValue, obj, zzexVar);
                    it.remove();
                }
            }
            return obj;
        }
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Integer num = (Integer) list.get(i3);
            int iIntValue2 = num.intValue();
            if (zzckVar.zzb(iIntValue2) != null) {
                if (i3 != i2) {
                    list.set(i2, num);
                }
                i2++;
            } else {
                obj = zza(i, iIntValue2, obj, zzexVar);
            }
        }
        if (i2 != size) {
            list.subList(i2, size).clear();
        }
        return obj;
    }

    public static void zza(int i, List list, zzfr zzfrVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zza(i, list);
    }

    public static void zza(int i, List list, zzfr zzfrVar, zzef zzefVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zza(i, list, zzefVar);
    }

    public static void zza(int i, List list, zzfr zzfrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zzg(i, list, z);
    }

    static void zza(zzbu zzbuVar, Object obj, Object obj2) {
        zzby zzbyVarZza = zzbuVar.zza(obj2);
        if (zzbyVarZza.isEmpty()) {
            return;
        }
        zzbuVar.zzb(obj).zza(zzbyVarZza);
    }

    static void zza(zzdj zzdjVar, Object obj, Object obj2, long j) {
        zzfd.zza(obj, j, zzdjVar.zzb(zzfd.zzo(obj, j), zzfd.zzo(obj2, j)));
    }

    static void zza(zzex zzexVar, Object obj, Object obj2) {
        zzexVar.zze(obj, zzexVar.zzg(zzexVar.zzq(obj), zzexVar.zzq(obj2)));
    }

    static int zzb(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdc) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iZzf = 0;
        for (int i = 0; i < size; i++) {
            iZzf += zzbn.zzf(((Long) list.get(i)).longValue());
        }
        return iZzf;
    }

    public static void zzb(int i, List list, zzfr zzfrVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zzb(i, list);
    }

    public static void zzb(int i, List list, zzfr zzfrVar, zzef zzefVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zzb(i, list, zzefVar);
    }

    public static void zzb(int i, List list, zzfr zzfrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zzf(i, list, z);
    }

    static int zzc(int i, Object obj, zzef zzefVar) {
        return zzbn.zzb(i, (zzdo) obj, zzefVar);
    }

    static int zzc(int i, List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iZzr = zzbn.zzr(i) * size;
        if (!(list instanceof zzcx)) {
            while (i2 < size) {
                Object obj = list.get(i2);
                iZzr += obj instanceof zzbb ? zzbn.zzb((zzbb) obj) : zzbn.zzh((String) obj);
                i2++;
            }
            return iZzr;
        }
        zzcx zzcxVar = (zzcx) list;
        while (i2 < size) {
            Object raw = zzcxVar.getRaw(i2);
            iZzr += raw instanceof zzbb ? zzbn.zzb((zzbb) raw) : zzbn.zzh((String) raw);
            i2++;
        }
        return iZzr;
    }

    static int zzc(int i, List list, zzef zzefVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzr = zzbn.zzr(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            iZzr += zzbn.zzb((zzdo) list.get(i2), zzefVar);
        }
        return iZzr;
    }

    static int zzc(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdc) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iZzg = 0;
        for (int i = 0; i < size; i++) {
            iZzg += zzbn.zzg(((Long) list.get(i)).longValue());
        }
        return iZzg;
    }

    public static void zzc(int i, List list, zzfr zzfrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zzc(i, list, z);
    }

    public static boolean zzc(int i, int i2, int i3) {
        if (i2 < 40) {
            return true;
        }
        long j = ((long) i2) - ((long) i);
        long j2 = i3;
        return j + 10 <= ((2 * j2) + 3) + ((j2 + 3) * 3);
    }

    static int zzd(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzr = size * zzbn.zzr(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            iZzr += zzbn.zzb((zzbb) list.get(i2));
        }
        return iZzr;
    }

    static int zzd(int i, List list, zzef zzefVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzc = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iZzc += zzbn.zzc(i, (zzdo) list.get(i2), zzefVar);
        }
        return iZzc;
    }

    static int zzd(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzch) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iZzx = 0;
        for (int i = 0; i < size; i++) {
            iZzx += zzbn.zzx(((Integer) list.get(i)).intValue());
        }
        return iZzx;
    }

    private static zzex zzd(boolean z) {
        try {
            Class clsZzdq = zzdq();
            if (clsZzdq == null) {
                return null;
            }
            return (zzex) clsZzdq.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void zzd(int i, List list, zzfr zzfrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zzd(i, list, z);
    }

    static boolean zzd(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static zzex zzdm() {
        return zzoi;
    }

    public static zzex zzdn() {
        return zzoj;
    }

    public static zzex zzdo() {
        return zzok;
    }

    private static Class zzdp() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class zzdq() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    static int zze(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzch) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iZzs = 0;
        for (int i = 0; i < size; i++) {
            iZzs += zzbn.zzs(((Integer) list.get(i)).intValue());
        }
        return iZzs;
    }

    public static void zze(int i, List list, zzfr zzfrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zzn(i, list, z);
    }

    static int zzf(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzch) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iZzt = 0;
        for (int i = 0; i < size; i++) {
            iZzt += zzbn.zzt(((Integer) list.get(i)).intValue());
        }
        return iZzt;
    }

    public static void zzf(int i, List list, zzfr zzfrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zze(i, list, z);
    }

    public static void zzf(Class cls) {
        Class cls2;
        if (!zzcg.class.isAssignableFrom(cls) && (cls2 = zzoh) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static int zzg(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzch) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iZzu = 0;
        for (int i = 0; i < size; i++) {
            iZzu += zzbn.zzu(((Integer) list.get(i)).intValue());
        }
        return iZzu;
    }

    public static void zzg(int i, List list, zzfr zzfrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zzl(i, list, z);
    }

    static int zzh(List list) {
        return list.size() << 2;
    }

    public static void zzh(int i, List list, zzfr zzfrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zza(i, list, z);
    }

    static int zzi(List list) {
        return list.size() << 3;
    }

    public static void zzi(int i, List list, zzfr zzfrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zzj(i, list, z);
    }

    static int zzj(List list) {
        return list.size();
    }

    public static void zzj(int i, List list, zzfr zzfrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zzm(i, list, z);
    }

    public static void zzk(int i, List list, zzfr zzfrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zzb(i, list, z);
    }

    public static void zzl(int i, List list, zzfr zzfrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zzk(i, list, z);
    }

    public static void zzm(int i, List list, zzfr zzfrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zzh(i, list, z);
    }

    public static void zzn(int i, List list, zzfr zzfrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzfrVar.zzi(i, list, z);
    }

    static int zzo(int i, List list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zza(list) + (list.size() * zzbn.zzr(i));
    }

    static int zzp(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzb(list) + (size * zzbn.zzr(i));
    }

    static int zzq(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzc(list) + (size * zzbn.zzr(i));
    }

    static int zzr(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzd(list) + (size * zzbn.zzr(i));
    }

    static int zzs(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzbn.zzr(i));
    }

    static int zzt(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzf(list) + (size * zzbn.zzr(i));
    }

    static int zzu(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzg(list) + (size * zzbn.zzr(i));
    }

    static int zzv(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzbn.zzj(i, 0);
    }

    static int zzw(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzbn.zzg(i, 0L);
    }

    static int zzx(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzbn.zzc(i, true);
    }
}
