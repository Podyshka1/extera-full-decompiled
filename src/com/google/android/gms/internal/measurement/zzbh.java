package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbh extends zzav {
    public zzbh() {
        this.zza.add(zzbk.ADD);
        this.zza.add(zzbk.DIVIDE);
        this.zza.add(zzbk.MODULUS);
        this.zza.add(zzbk.MULTIPLY);
        this.zza.add(zzbk.NEGATE);
        this.zza.add(zzbk.POST_DECREMENT);
        this.zza.add(zzbk.POST_INCREMENT);
        this.zza.add(zzbk.PRE_DECREMENT);
        this.zza.add(zzbk.PRE_INCREMENT);
        this.zza.add(zzbk.SUBTRACT);
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao zza(String str, zzg zzgVar, List list) {
        zzbk zzbkVar = zzbk.ADD;
        int iOrdinal = zzh.zze(str).ordinal();
        if (iOrdinal == 0) {
            zzh.zza(zzbk.ADD.name(), 2, list);
            zzao zzaoVarZza = zzgVar.zza((zzao) list.get(0));
            zzao zzaoVarZza2 = zzgVar.zza((zzao) list.get(1));
            if (!(zzaoVarZza instanceof zzak) && !(zzaoVarZza instanceof zzas) && !(zzaoVarZza2 instanceof zzak) && !(zzaoVarZza2 instanceof zzas)) {
                return new zzah(Double.valueOf(zzaoVarZza.zzd().doubleValue() + zzaoVarZza2.zzd().doubleValue()));
            }
            return new zzas(String.valueOf(zzaoVarZza.zzc()).concat(String.valueOf(zzaoVarZza2.zzc())));
        }
        if (iOrdinal == 21) {
            zzh.zza(zzbk.DIVIDE.name(), 2, list);
            return new zzah(Double.valueOf(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue() / zzgVar.zza((zzao) list.get(1)).zzd().doubleValue()));
        }
        if (iOrdinal == 59) {
            zzh.zza(zzbk.SUBTRACT.name(), 2, list);
            return new zzah(Double.valueOf(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue() + new zzah(Double.valueOf(-zzgVar.zza((zzao) list.get(1)).zzd().doubleValue())).zzd().doubleValue()));
        }
        if (iOrdinal == 52 || iOrdinal == 53) {
            zzh.zza(str, 2, list);
            zzao zzaoVarZza3 = zzgVar.zza((zzao) list.get(0));
            zzgVar.zza((zzao) list.get(1));
            return zzaoVarZza3;
        }
        if (iOrdinal == 55 || iOrdinal == 56) {
            zzh.zza(str, 1, list);
            return zzgVar.zza((zzao) list.get(0));
        }
        switch (iOrdinal) {
            case 44:
                zzh.zza(zzbk.MODULUS.name(), 2, list);
                return new zzah(Double.valueOf(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue() % zzgVar.zza((zzao) list.get(1)).zzd().doubleValue()));
            case 45:
                zzh.zza(zzbk.MULTIPLY.name(), 2, list);
                return new zzah(Double.valueOf(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue() * zzgVar.zza((zzao) list.get(1)).zzd().doubleValue()));
            case 46:
                zzh.zza(zzbk.NEGATE.name(), 1, list);
                return new zzah(Double.valueOf(-zzgVar.zza((zzao) list.get(0)).zzd().doubleValue()));
            default:
                return super.zzb(str);
        }
    }
}
