package com.google.android.gms.internal.cast;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzzu {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final zzaad zzb;

    static {
        int i = zzxb.$r8$clinit;
        zzb = new zzaaf();
    }

    @Deprecated
    public static int zzA(int i, zzzi zzziVar, zzzs zzzsVar) {
        int iZzv = zzxp.zzv(i << 3);
        return iZzv + iZzv + ((zzwz) zzziVar).zzt(zzzsVar);
    }

    public static zzaad zzB() {
        return zzb;
    }

    public static boolean zzC(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void zzD(zzxs zzxsVar, Object obj, Object obj2) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj2);
        throw null;
    }

    public static void zzE(zzaad zzaadVar, Object obj, Object obj2) {
        zzyd zzydVar = (zzyd) obj;
        zzaae zzaaeVarZzb = zzydVar.zzc;
        zzaae zzaaeVar = ((zzyd) obj2).zzc;
        if (!zzaae.zza().equals(zzaaeVar)) {
            if (zzaae.zza().equals(zzaaeVarZzb)) {
                zzaaeVarZzb = zzaae.zzb(zzaaeVarZzb, zzaaeVar);
            } else {
                zzaaeVarZzb.zzh(zzaaeVar);
            }
        }
        zzydVar.zzc = zzaaeVarZzb;
    }

    public static void zza(int i, List list, zzaar zzaarVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaarVar.zzA(i, list, z);
    }

    public static void zzb(int i, List list, zzaar zzaarVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaarVar.zzz(i, list, z);
    }

    public static void zzc(int i, List list, zzaar zzaarVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaarVar.zzw(i, list, z);
    }

    public static void zzd(int i, List list, zzaar zzaarVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaarVar.zzx(i, list, z);
    }

    public static void zze(int i, List list, zzaar zzaarVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaarVar.zzJ(i, list, z);
    }

    public static void zzf(int i, List list, zzaar zzaarVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaarVar.zzy(i, list, z);
    }

    public static void zzg(int i, List list, zzaar zzaarVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaarVar.zzH(i, list, z);
    }

    public static void zzh(int i, List list, zzaar zzaarVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaarVar.zzu(i, list, z);
    }

    public static void zzi(int i, List list, zzaar zzaarVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaarVar.zzF(i, list, z);
    }

    public static void zzj(int i, List list, zzaar zzaarVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaarVar.zzI(i, list, z);
    }

    public static void zzk(int i, List list, zzaar zzaarVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaarVar.zzv(i, list, z);
    }

    public static void zzl(int i, List list, zzaar zzaarVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaarVar.zzG(i, list, z);
    }

    public static void zzm(int i, List list, zzaar zzaarVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaarVar.zzB(i, list, z);
    }

    public static void zzn(int i, List list, zzaar zzaarVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaarVar.zzC(i, list, z);
    }

    public static int zzo(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzyx)) {
            int iZzw = 0;
            while (i < size) {
                iZzw += zzxp.zzw(((Long) list.get(i)).longValue());
                i++;
            }
            return iZzw;
        }
        zzyx zzyxVar = (zzyx) list;
        int iZzw2 = 0;
        while (i < size) {
            iZzw2 += zzxp.zzw(zzyxVar.zze(i));
            i++;
        }
        return iZzw2;
    }

    public static int zzp(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzyx)) {
            int iZzw = 0;
            while (i < size) {
                iZzw += zzxp.zzw(((Long) list.get(i)).longValue());
                i++;
            }
            return iZzw;
        }
        zzyx zzyxVar = (zzyx) list;
        int iZzw2 = 0;
        while (i < size) {
            iZzw2 += zzxp.zzw(zzyxVar.zze(i));
            i++;
        }
        return iZzw2;
    }

    public static int zzq(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzyx)) {
            int iZzw = 0;
            while (i < size) {
                long jLongValue = ((Long) list.get(i)).longValue();
                iZzw += zzxp.zzw((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i++;
            }
            return iZzw;
        }
        zzyx zzyxVar = (zzyx) list;
        int iZzw2 = 0;
        while (i < size) {
            long jZze = zzyxVar.zze(i);
            iZzw2 += zzxp.zzw((jZze >> 63) ^ (jZze + jZze));
            i++;
        }
        return iZzw2;
    }

    public static int zzr(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzye)) {
            int iZzw = 0;
            while (i < size) {
                iZzw += zzxp.zzw(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzw;
        }
        zzye zzyeVar = (zzye) list;
        int iZzw2 = 0;
        while (i < size) {
            iZzw2 += zzxp.zzw(zzyeVar.zzg(i));
            i++;
        }
        return iZzw2;
    }

    public static int zzs(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzye)) {
            int iZzw = 0;
            while (i < size) {
                iZzw += zzxp.zzw(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzw;
        }
        zzye zzyeVar = (zzye) list;
        int iZzw2 = 0;
        while (i < size) {
            iZzw2 += zzxp.zzw(zzyeVar.zzg(i));
            i++;
        }
        return iZzw2;
    }

    public static int zzt(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzye)) {
            int iZzv = 0;
            while (i < size) {
                iZzv += zzxp.zzv(((Integer) list.get(i)).intValue());
                i++;
            }
            return iZzv;
        }
        zzye zzyeVar = (zzye) list;
        int iZzv2 = 0;
        while (i < size) {
            iZzv2 += zzxp.zzv(zzyeVar.zzg(i));
            i++;
        }
        return iZzv2;
    }

    public static int zzu(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzye)) {
            int iZzv = 0;
            while (i < size) {
                int iIntValue = ((Integer) list.get(i)).intValue();
                iZzv += zzxp.zzv((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
            return iZzv;
        }
        zzye zzyeVar = (zzye) list;
        int iZzv2 = 0;
        while (i < size) {
            int iZzg = zzyeVar.zzg(i);
            iZzv2 += zzxp.zzv((iZzg >> 31) ^ (iZzg + iZzg));
            i++;
        }
        return iZzv2;
    }

    public static int zzv(List list) {
        return list.size() * 4;
    }

    public static int zzw(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzxp.zzv(i << 3) + 4);
    }

    public static int zzx(List list) {
        return list.size() * 8;
    }

    public static int zzy(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzxp.zzv(i << 3) + 8);
    }

    public static int zzz(int i, Object obj, zzzs zzzsVar) {
        int iZzv = zzxp.zzv(i << 3);
        int iZzt = ((zzwz) obj).zzt(zzzsVar);
        return iZzv + zzxp.zzv(iZzt) + iZzt;
    }
}
