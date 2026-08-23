package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzh {
    public static void zza(String str, int i, List list) {
        if (list.size() != i) {
            throw new IllegalArgumentException(String.format("%s operation requires %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
        }
    }

    public static void zzb(String str, int i, List list) {
        if (list.size() < i) {
            throw new IllegalArgumentException(String.format("%s operation requires at least %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
        }
    }

    public static void zzc(String str, int i, List list) {
        if (list.size() > i) {
            throw new IllegalArgumentException(String.format("%s operation requires at most %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
        }
    }

    public static boolean zzd(zzao zzaoVar) {
        if (zzaoVar == null) {
            return false;
        }
        Double dZzd = zzaoVar.zzd();
        return !dZzd.isNaN() && dZzd.doubleValue() >= 0.0d && dZzd.equals(Double.valueOf(Math.floor(dZzd.doubleValue())));
    }

    public static zzbk zze(String str) {
        zzbk zzbkVarZza = null;
        if (str != null && !str.isEmpty()) {
            zzbkVarZza = zzbk.zza(Integer.parseInt(str));
        }
        if (zzbkVarZza != null) {
            return zzbkVarZza;
        }
        throw new IllegalArgumentException(String.format("Unsupported commandId %s", str));
    }

    public static boolean zzf(zzao zzaoVar, zzao zzaoVar2) {
        if (!zzaoVar.getClass().equals(zzaoVar2.getClass())) {
            return false;
        }
        if ((zzaoVar instanceof zzat) || (zzaoVar instanceof zzam)) {
            return true;
        }
        if (!(zzaoVar instanceof zzah)) {
            return zzaoVar instanceof zzas ? zzaoVar.zzc().equals(zzaoVar2.zzc()) : zzaoVar instanceof zzaf ? zzaoVar.zze().equals(zzaoVar2.zze()) : zzaoVar == zzaoVar2;
        }
        if (Double.isNaN(zzaoVar.zzd().doubleValue()) || Double.isNaN(zzaoVar2.zzd().doubleValue())) {
            return false;
        }
        return zzaoVar.zzd().equals(zzaoVar2.zzd());
    }

    public static int zzg(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d) || d == 0.0d) {
            return 0;
        }
        return (int) ((((double) (d > 0.0d ? 1 : -1)) * Math.floor(Math.abs(d))) % 4.294967296E9d);
    }

    public static long zzh(double d) {
        return ((long) zzg(d)) & 4294967295L;
    }

    public static double zzi(double d) {
        if (Double.isNaN(d)) {
            return 0.0d;
        }
        if (Double.isInfinite(d) || d == 0.0d || d == 0.0d) {
            return d;
        }
        return ((double) (d > 0.0d ? 1 : -1)) * Math.floor(Math.abs(d));
    }

    public static Object zzj(zzao zzaoVar) {
        if (zzao.zzg.equals(zzaoVar)) {
            return null;
        }
        if (zzao.zzf.equals(zzaoVar)) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (zzaoVar instanceof zzal) {
            return zzk((zzal) zzaoVar);
        }
        if (!(zzaoVar instanceof zzae)) {
            return !zzaoVar.zzd().isNaN() ? zzaoVar.zzd() : zzaoVar.zzc();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = ((zzae) zzaoVar).iterator();
        while (it.hasNext()) {
            Object objZzj = zzj((zzao) it.next());
            if (objZzj != null) {
                arrayList.add(objZzj);
            }
        }
        return arrayList;
    }

    public static Map zzk(zzal zzalVar) {
        HashMap map = new HashMap();
        for (String str : zzalVar.zzb()) {
            Object objZzj = zzj(zzalVar.zzk(str));
            if (objZzj != null) {
                map.put(str, objZzj);
            }
        }
        return map;
    }

    public static int zzl(zzg zzgVar) {
        int iZzg = zzg(zzgVar.zzh("runtime.counter").zzd().doubleValue() + 1.0d);
        if (iZzg > 1000000) {
            throw new IllegalStateException("Instructions allowed exceeded");
        }
        zzgVar.zze("runtime.counter", new zzah(Double.valueOf(iZzg)));
        return iZzg;
    }
}
