package com.google.android.gms.internal.measurement;

import com.google.protobuf.FieldSet$$ExternalSyntheticBUOutline0;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbi extends zzav {
    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao zza(String str, zzg zzgVar, List list) {
        if (str == null || str.isEmpty() || !zzgVar.zzd(str)) {
            FieldSet$$ExternalSyntheticBUOutline0.m505m("Command not found: %s", new Object[]{str});
            return null;
        }
        zzao zzaoVarZzh = zzgVar.zzh(str);
        if (zzaoVarZzh instanceof zzai) {
            return ((zzai) zzaoVarZzh).zza(zzgVar, list);
        }
        FieldSet$$ExternalSyntheticBUOutline0.m505m("Function %s is not defined", new Object[]{str});
        return null;
    }
}
