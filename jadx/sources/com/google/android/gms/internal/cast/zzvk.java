package com.google.android.gms.internal.cast;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzvk {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final Class zzb;
    private static final zzvz zzc;
    private static final zzvz zzd;

    static {
        Class<?> cls;
        Class<?> cls2;
        zzvz zzvzVar = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        zzb = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                zzvzVar = (zzvz) cls2.getConstructor(null).newInstance(null);
            } catch (Throwable unused3) {
            }
        }
        zzc = zzvzVar;
        zzd = new zzwb();
    }

    public static void zzA(int i, List list, zzwq zzwqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzA(i, list, z);
    }

    public static void zzB(int i, List list, zzwq zzwqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzC(i, list, z);
    }

    public static void zzC(int i, List list, zzwq zzwqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzG(i, list, z);
    }

    public static void zzD(int i, List list, zzwq zzwqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzI(i, list, z);
    }

    static boolean zzE(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static int zza(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zztq)) {
            int iZzu = 0;
            while (i < size) {
                iZzu += zztc.zzu(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzu;
        }
        zztq zztqVar = (zztq) list;
        int iZzu2 = 0;
        while (i < size) {
            iZzu2 += zztc.zzu(zztqVar.zzd(i));
            i++;
        }
        return iZzu2;
    }

    static int zzb(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zztc.zzx(i << 3) + 4);
    }

    static int zzc(List list) {
        return list.size() * 4;
    }

    static int zzd(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zztc.zzx(i << 3) + 8);
    }

    static int zze(List list) {
        return list.size() * 8;
    }

    static int zzf(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zztq)) {
            int iZzu = 0;
            while (i < size) {
                iZzu += zztc.zzu(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzu;
        }
        zztq zztqVar = (zztq) list;
        int iZzu2 = 0;
        while (i < size) {
            iZzu2 += zztc.zzu(zztqVar.zzd(i));
            i++;
        }
        return iZzu2;
    }

    static int zzg(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzum)) {
            int iZzy = 0;
            while (i < size) {
                iZzy += zztc.zzy(((Long) list.get(i)).longValue());
                i++;
            }
            return iZzy;
        }
        zzum zzumVar = (zzum) list;
        int iZzy2 = 0;
        while (i < size) {
            iZzy2 += zztc.zzy(zzumVar.zzd(i));
            i++;
        }
        return iZzy2;
    }

    static int zzi(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zztq)) {
            int iZzx = 0;
            while (i < size) {
                int iIntValue = ((Integer) list.get(i)).intValue();
                iZzx += zztc.zzx((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
            return iZzx;
        }
        zztq zztqVar = (zztq) list;
        int iZzx2 = 0;
        while (i < size) {
            int iZzd = zztqVar.zzd(i);
            iZzx2 += zztc.zzx((iZzd >> 31) ^ (iZzd + iZzd));
            i++;
        }
        return iZzx2;
    }

    static int zzj(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzum)) {
            int iZzy = 0;
            while (i < size) {
                long jLongValue = ((Long) list.get(i)).longValue();
                iZzy += zztc.zzy((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i++;
            }
            return iZzy;
        }
        zzum zzumVar = (zzum) list;
        int iZzy2 = 0;
        while (i < size) {
            long jZzd = zzumVar.zzd(i);
            iZzy2 += zztc.zzy((jZzd >> 63) ^ (jZzd + jZzd));
            i++;
        }
        return iZzy2;
    }

    static int zzk(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zztq)) {
            int iZzx = 0;
            while (i < size) {
                iZzx += zztc.zzx(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzx;
        }
        zztq zztqVar = (zztq) list;
        int iZzx2 = 0;
        while (i < size) {
            iZzx2 += zztc.zzx(zztqVar.zzd(i));
            i++;
        }
        return iZzx2;
    }

    static int zzl(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzum)) {
            int iZzy = 0;
            while (i < size) {
                iZzy += zztc.zzy(((Long) list.get(i)).longValue());
                i++;
            }
            return iZzy;
        }
        zzum zzumVar = (zzum) list;
        int iZzy2 = 0;
        while (i < size) {
            iZzy2 += zztc.zzy(zzumVar.zzd(i));
            i++;
        }
        return iZzy2;
    }

    public static zzvz zzm() {
        return zzc;
    }

    public static zzvz zzn() {
        return zzd;
    }

    static void zzo(zzvz zzvzVar, Object obj, Object obj2) {
        zzvzVar.zzf(obj, zzvzVar.zzd(zzvzVar.zzc(obj), zzvzVar.zzc(obj2)));
    }

    public static void zzp(Class cls) {
        Class cls2;
        if (!zztp.class.isAssignableFrom(cls) && (cls2 = zzb) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zzq(int i, List list, zzwq zzwqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzc(i, list, z);
    }

    public static void zzr(int i, List list, zzwq zzwqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzg(i, list, z);
    }

    public static void zzs(int i, List list, zzwq zzwqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzi(i, list, z);
    }

    public static void zzt(int i, List list, zzwq zzwqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzk(i, list, z);
    }

    public static void zzu(int i, List list, zzwq zzwqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzm(i, list, z);
    }

    public static void zzv(int i, List list, zzwq zzwqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzo(i, list, z);
    }

    public static void zzw(int i, List list, zzwq zzwqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzr(i, list, z);
    }

    public static void zzx(int i, List list, zzwq zzwqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzt(i, list, z);
    }

    public static void zzy(int i, List list, zzwq zzwqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzw(i, list, z);
    }

    public static void zzz(int i, List list, zzwq zzwqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzwqVar.zzy(i, list, z);
    }

    static int zzh(int i, Object obj, zzvi zzviVar) {
        return zztc.zzx(i << 3) + zztc.zzv((zzux) obj, zzviVar);
    }
}
