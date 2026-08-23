package com.google.android.gms.internal.measurement;

import androidx.camera.core.CameraSelector$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public interface zzak {
    static zzao zzu(zzak zzakVar, zzao zzaoVar, zzg zzgVar, List list) {
        if (zzakVar.zzj(zzaoVar.zzc())) {
            zzao zzaoVarZzk = zzakVar.zzk(zzaoVar.zzc());
            if (zzaoVarZzk instanceof zzai) {
                return ((zzai) zzaoVarZzk).zza(zzgVar, list);
            }
            CameraSelector$$ExternalSyntheticBUOutline0.m72m("%s is not a function", new Object[]{zzaoVar.zzc()});
            return null;
        }
        if ("hasOwnProperty".equals(zzaoVar.zzc())) {
            zzh.zza("hasOwnProperty", 1, list);
            return zzakVar.zzj(zzgVar.zza((zzao) list.get(0)).zzc()) ? zzao.zzk : zzao.zzl;
        }
        CameraSelector$$ExternalSyntheticBUOutline0.m72m("Object has no function %s", new Object[]{zzaoVar.zzc()});
        return null;
    }

    static Iterator zzv(Map map) {
        return new zzaj(map.keySet().iterator());
    }

    boolean zzj(String str);

    zzao zzk(String str);

    void zzm(String str, zzao zzaoVar);
}
