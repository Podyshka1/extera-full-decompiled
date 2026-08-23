package com.google.android.gms.internal.measurement;

import java.util.List;
import org.scilab.forge.jlatexmath.TeXSymbolParser;
import p002c.f$$ExternalSyntheticBUOutline1;

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
            f$$ExternalSyntheticBUOutline1.m178m("Invalid callback type");
            return null;
        }
        zzao zzaoVarZza2 = zzgVar.zza((zzao) list.get(2));
        if (!(zzaoVarZza2 instanceof zzal)) {
            f$$ExternalSyntheticBUOutline1.m178m("Invalid callback params");
            return null;
        }
        zzal zzalVar = (zzal) zzaoVarZza2;
        if (!zzalVar.zzj(TeXSymbolParser.TYPE_ATTR)) {
            f$$ExternalSyntheticBUOutline1.m178m("Undefined rule type");
            return null;
        }
        this.zza.zza(strZzc, zzalVar.zzj("priority") ? zzh.zzg(zzalVar.zzk("priority").zzd().doubleValue()) : 1000, (zzan) zzaoVarZza, zzalVar.zzk(TeXSymbolParser.TYPE_ATTR).zzc());
        return zzao.zzf;
    }
}
