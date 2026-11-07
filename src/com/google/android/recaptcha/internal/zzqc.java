package com.google.android.recaptcha.internal;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class zzqc extends zzpy {
    public final zzqc zzb(Object obj, Object... objArr) {
        List listAsList = Arrays.asList(objArr);
        boolean z = true;
        if (obj == null) {
            Iterator it = listAsList.iterator();
            StringBuilder sb = new StringBuilder("[");
            while (it.hasNext()) {
                if (!z) {
                    sb.append(", ");
                }
                sb.append(it.next());
                z = false;
            }
            sb.append(']');
            throw new NullPointerException("null key in entry: null=".concat(sb.toString()));
        }
        Iterator it2 = listAsList.iterator();
        if (it2.hasNext()) {
            zzpp zzqaVar = (zzpp) zza().get(obj);
            if (zzqaVar == null) {
                int iMax = listAsList instanceof Set ? Math.max(4, ((Set) listAsList).size()) : 4;
                zzpa.zzb(iMax, "expectedSize");
                zzqaVar = new zzqa(iMax, true);
                zza().put(obj, zzqaVar);
            }
            while (it2.hasNext()) {
                Object next = it2.next();
                zzpa.zza(obj, next);
                zzqaVar.zzb(next);
            }
        }
        return this;
    }

    public final zzqe zzc() {
        Map map = this.zza;
        if (map == null) {
            return zzpm.zza;
        }
        Set<Map.Entry> setEntrySet = map.entrySet();
        if (setEntrySet.isEmpty()) {
            return zzpm.zza;
        }
        zzpv zzpvVar = new zzpv(setEntrySet.size());
        int size = 0;
        for (Map.Entry entry : setEntrySet) {
            Object key = entry.getKey();
            zzqb zzqbVarZzh = zzqb.zzh(((zzqa) entry.getValue()).zzd());
            if (!zzqbVarZzh.isEmpty()) {
                zzpvVar.zza(key, zzqbVarZzh);
                size += zzqbVarZzh.size();
            }
        }
        return new zzqe(zzpvVar.zzb(), size, null);
    }
}
