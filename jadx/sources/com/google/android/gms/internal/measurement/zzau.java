package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzau extends zzav {
    public zzau() {
        this.zza.add(zzbk.BITWISE_AND);
        this.zza.add(zzbk.BITWISE_LEFT_SHIFT);
        this.zza.add(zzbk.BITWISE_NOT);
        this.zza.add(zzbk.BITWISE_OR);
        this.zza.add(zzbk.BITWISE_RIGHT_SHIFT);
        this.zza.add(zzbk.BITWISE_UNSIGNED_RIGHT_SHIFT);
        this.zza.add(zzbk.BITWISE_XOR);
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao zza(String str, zzg zzgVar, List list) {
        zzbk zzbkVar = zzbk.ADD;
        switch (zzh.zze(str).ordinal()) {
            case 4:
                zzh.zza(zzbk.BITWISE_AND.name(), 2, list);
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue()) & zzh.zzg(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue())));
            case 5:
                zzh.zza(zzbk.BITWISE_LEFT_SHIFT.name(), 2, list);
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue()) << ((int) (zzh.zzh(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue()) & 31))));
            case 6:
                zzh.zza(zzbk.BITWISE_NOT.name(), 1, list);
                return new zzah(Double.valueOf(~zzh.zzg(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue())));
            case 7:
                zzh.zza(zzbk.BITWISE_OR.name(), 2, list);
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue()) | zzh.zzg(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue())));
            case 8:
                zzh.zza(zzbk.BITWISE_RIGHT_SHIFT.name(), 2, list);
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue()) >> ((int) (zzh.zzh(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue()) & 31))));
            case 9:
                zzh.zza(zzbk.BITWISE_UNSIGNED_RIGHT_SHIFT.name(), 2, list);
                return new zzah(Double.valueOf(zzh.zzh(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue()) >>> ((int) (zzh.zzh(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue()) & 31))));
            case 10:
                zzh.zza(zzbk.BITWISE_XOR.name(), 2, list);
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue()) ^ zzh.zzg(zzgVar.zza((zzao) list.get(1)).zzd().doubleValue())));
            default:
                return super.zzb(str);
        }
    }
}
