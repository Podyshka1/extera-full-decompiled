package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzi {
    public static zzao zza(Object obj) {
        if (obj == null) {
            return zzao.zzg;
        }
        if (obj instanceof String) {
            return new zzas((String) obj);
        }
        if (obj instanceof Double) {
            return new zzah((Double) obj);
        }
        if (obj instanceof Long) {
            return new zzah(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new zzah(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new zzaf((Boolean) obj);
        }
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            zzae zzaeVar = new zzae();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zzaeVar.zzn(zzaeVar.zzh(), zza(it.next()));
            }
            return zzaeVar;
        }
        zzal zzalVar = new zzal();
        Map map = (Map) obj;
        for (Object string : map.keySet()) {
            zzao zzaoVarZza = zza(map.get(string));
            if (string != null) {
                if (!(string instanceof String)) {
                    string = string.toString();
                }
                zzalVar.zzm((String) string, zzaoVarZza);
            }
        }
        return zzalVar;
    }

    public static zzao zzb(zzje zzjeVar) {
        if (zzjeVar == null) {
            return zzao.zzf;
        }
        int iZzj = zzjeVar.zzj() - 1;
        if (iZzj == 1) {
            return zzjeVar.zzc() ? new zzas(zzjeVar.zzd()) : zzao.zzm;
        }
        if (iZzj == 2) {
            return zzjeVar.zzg() ? new zzah(Double.valueOf(zzjeVar.zzh())) : new zzah(null);
        }
        if (iZzj == 3) {
            return zzjeVar.zze() ? new zzaf(Boolean.valueOf(zzjeVar.zzf())) : new zzaf(null);
        }
        if (iZzj != 4) {
            throw new IllegalArgumentException("Unknown type found. Cannot convert entity");
        }
        List listZza = zzjeVar.zza();
        ArrayList arrayList = new ArrayList();
        Iterator it = listZza.iterator();
        while (it.hasNext()) {
            arrayList.add(zzb((zzje) it.next()));
        }
        return new zzap(zzjeVar.zzb(), arrayList);
    }
}
