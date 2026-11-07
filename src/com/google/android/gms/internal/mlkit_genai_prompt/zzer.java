package com.google.android.gms.internal.mlkit_genai_prompt;

import java.io.IOException;
import okio.ByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public final class zzer extends zzfv implements zzdp {
    private zzer(zzdi zzdiVar, zzdq zzdqVar, zzdy zzdyVar) {
        super(zzdiVar, zzdqVar, zzdyVar);
    }

    public static zzer zzd(zzeu zzeuVar) {
        return new zzer(zzeuVar.zza(), zzeuVar.zzc(), zzeuVar.zzb());
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzfv
    public final /* bridge */ /* synthetic */ Object zze(zzan zzanVar) {
        return zzanVar.zzj(this.zza.zzj());
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzfv
    public final /* synthetic */ zzav zzf(Object obj, Object obj2, zzgw zzgwVar) {
        zzay zzayVar = (zzay) obj;
        zzeo zzeoVar = (zzeo) obj2;
        zzae zzaeVarZza = zzaf.zza();
        int iZzo = zzeoVar.zzo() - 1;
        if (iZzo == 0) {
            zzaeVarZza.zzj("cortana_type_block_attention");
            zzaeVarZza.zzk(zzeoVar.zzl());
            zzaeVarZza.zzl(0);
        } else if (iZzo == 1) {
            zzaeVarZza.zzj("cortana_type_prefix_caching");
            zzaeVarZza.zzk(zzeoVar.zzl());
        } else if (iZzo == 2) {
            zzaeVarZza.zzj("cortana_type_inference_with_session_state_caching");
        } else if (iZzo == 3) {
            zzaeVarZza.zzj("cortana_type_inference_with_prefix_caching");
        } else {
            if (iZzo != 4) {
                ByteString$$ExternalSyntheticBUOutline0.m968m("Unsupported Cortana type in CortanaRequest: ".concat(zzen.zza(zzeoVar.zzo())));
                return null;
            }
            zzla.zza(false, "When inference with cached state, there must be positive tokens been processed before");
            zzla.zza(false, "Messages must be non-null for INFERENCE_WITH_BLOCK_ATTENTION if cached state is used");
            zzaeVarZza.zzj("cortana_type_inference_with_block_attention");
            zzaeVarZza.zzl(0);
        }
        zzaeVarZza.zzf(new zzel(zzeoVar, this.zzb));
        zzaeVarZza.zza(zzml.zzk());
        zzaeVarZza.zzb(0.0f);
        zzaeVarZza.zzc(zzeoVar.zze());
        zzaeVarZza.zzd(zzeoVar.zzf());
        zzaeVarZza.zze(zzeoVar.zzg());
        zzaeVarZza.zzh(0);
        zzaeVarZza.zzi(0);
        zzaeVarZza.zzm(0);
        zzaeVarZza.zzg(zzml.zzk());
        zzaeVarZza.zzn(1);
        zzaf zzafVarZzo = zzaeVarZza.zzo();
        zzav zzavVarZzd = zzayVar.zzd(zzafVarZzo, new zzeq(this, zzeoVar, zzgwVar));
        try {
            zzafVarZzo.zzb();
            return zzavVarZzd;
        } catch (IOException unused) {
            zzavVarZzd.zzd();
            zzgwVar.zzb(14);
            return zzavVarZzd;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzfv
    public final /* synthetic */ zzav zzg(Object obj, zzbn zzbnVar) {
        return ((zzay) obj).zze(zzbnVar);
    }
}
