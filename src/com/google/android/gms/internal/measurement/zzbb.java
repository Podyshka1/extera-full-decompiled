package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbb extends zzav {
    protected zzbb() {
        this.zza.add(zzbk.AND);
        this.zza.add(zzbk.NOT);
        this.zza.add(zzbk.OR);
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao zza(String str, zzg zzgVar, List list) {
        zzbk zzbkVar = zzbk.ADD;
        int iOrdinal = zzh.zze(str).ordinal();
        if (iOrdinal == 1) {
            zzh.zza(zzbk.AND.name(), 2, list);
            zzao zzaoVarZza = zzgVar.zza((zzao) list.get(0));
            return zzaoVarZza.zze().booleanValue() ? zzgVar.zza((zzao) list.get(1)) : zzaoVarZza;
        }
        if (iOrdinal == 47) {
            zzh.zza(zzbk.NOT.name(), 1, list);
            return new zzaf(Boolean.valueOf(!zzgVar.zza((zzao) list.get(0)).zze().booleanValue()));
        }
        if (iOrdinal != 50) {
            return super.zzb(str);
        }
        zzh.zza(zzbk.OR.name(), 2, list);
        zzao zzaoVarZza2 = zzgVar.zza((zzao) list.get(0));
        return !zzaoVarZza2.zze().booleanValue() ? zzgVar.zza((zzao) list.get(1)) : zzaoVarZza2;
    }
}
