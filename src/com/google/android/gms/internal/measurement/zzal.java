package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzak;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class zzal implements zzao, zzak {
    final Map zza = new HashMap();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzal) {
            return this.zza.equals(((zzal) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        Map map = this.zza;
        if (!map.isEmpty()) {
            for (String str : map.keySet()) {
                sb.append(String.format("%s: %s,", str, map.get(str)));
            }
            sb.deleteCharAt(sb.lastIndexOf(","));
        }
        sb.append("}");
        return sb.toString();
    }

    public final List zzb() {
        return new ArrayList(this.zza.keySet());
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String zzc() {
        return "[object Object]";
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public zzao zzcA(String str, zzg zzgVar, List list) {
        return "toString".equals(str) ? new zzas(toString()) : zzak.CC.zzu(this, new zzas(str), zzgVar, list);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double zzd() {
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean zze() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator zzf() {
        return zzak.CC.zzv(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final boolean zzj(String str) {
        return this.zza.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final zzao zzk(String str) {
        Map map = this.zza;
        return map.containsKey(str) ? (zzao) map.get(str) : zzao.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final void zzm(String str, zzao zzaoVar) {
        if (zzaoVar == null) {
            this.zza.remove(str);
        } else {
            this.zza.put(str, zzaoVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzt() {
        zzal zzalVar = new zzal();
        for (Map.Entry entry : this.zza.entrySet()) {
            if (entry.getValue() instanceof zzak) {
                zzalVar.zza.put((String) entry.getKey(), (zzao) entry.getValue());
            } else {
                zzalVar.zza.put((String) entry.getKey(), ((zzao) entry.getValue()).zzt());
            }
        }
        return zzalVar;
    }
}
