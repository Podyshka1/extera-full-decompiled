package com.google.android.gms.internal.measurement;

import java.util.List;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes4.dex */
public final class zzv extends zzai {
    private final zzz zza;

    public zzv(zzz zzzVar) {
        super("internal.registerCallback");
        this.zza = zzzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao zza(zzg zzgVar, List list) {
        zzh.zza(this.zzd, 3, list);
        String strZzc = zzgVar.zza((zzao) list.get(0)).zzc();
        zzao zzaoVarZza = zzgVar.zza((zzao) list.get(1));
        if (!(zzaoVarZza instanceof zzan)) {
            throw new IllegalArgumentException("Invalid callback type");
        }
        zzao zzaoVarZza2 = zzgVar.zza((zzao) list.get(2));
        if (!(zzaoVarZza2 instanceof zzal)) {
            throw new IllegalArgumentException("Invalid callback params");
        }
        zzal zzalVar = (zzal) zzaoVarZza2;
        if (!zzalVar.zzj("type")) {
            throw new IllegalArgumentException("Undefined rule type");
        }
        this.zza.zza(strZzc, zzalVar.zzj("priority") ? zzh.zzg(zzalVar.zzk("priority").zzd().doubleValue()) : MediaDataController.MAX_STYLE_RUNS_COUNT, (zzan) zzaoVarZza, zzalVar.zzk("type").zzc());
        return zzao.zzf;
    }
}
