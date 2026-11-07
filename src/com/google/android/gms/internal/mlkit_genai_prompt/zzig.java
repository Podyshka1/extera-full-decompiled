package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import android.util.Log;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

/* JADX INFO: loaded from: classes4.dex */
public final class zzig extends zzfv implements zzdp {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final String zze = "zzig";
    private final Context zzf;
    private final Optional zzg;

    public zzig(zzdi zzdiVar, zzdq zzdqVar, zzdy zzdyVar) {
        super(zzdiVar, zzdqVar, zzdyVar);
        this.zzf = zzdiVar.zzg();
        this.zzg = Optional.empty();
    }

    public static zzig zzd(zzij zzijVar) {
        return new zzig(zzijVar.zza(), zzijVar.zzc(), zzijVar.zzb());
    }

    public static /* synthetic */ zzho zzw(zzw zzwVar) {
        if (zzwVar == null) {
            return null;
        }
        return new zzhb(zzml.zzq((List) zzwVar.zza().stream().map(zzie.zza).collect(zzml.zzj())));
    }

    public static /* synthetic */ void zzx(zzcg zzcgVar) {
        try {
            zzcgVar.zzb();
        } catch (IOException e) {
            Log.e(zze, "Failed to close all file descriptors", e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzfv
    public final /* bridge */ /* synthetic */ Object zze(zzan zzanVar) {
        this.zzg.isPresent();
        return zzanVar.zzi(this.zza.zzj());
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzfv
    public final /* bridge */ /* synthetic */ zzav zzf(Object obj, Object obj2, zzgw zzgwVar) {
        zzbi zzbiVar = (zzbi) obj;
        zzhy zzhyVar = (zzhy) obj2;
        if (!zzhyVar.zza().stream().anyMatch(zzif.zza) || this.zza.zzd() == 12) {
            zzcg zzcgVarZzy = zzhyVar.zzy(this.zzf, this.zzb);
            return zzbiVar.zzf(zzcgVarZzy, new zzid(this, zzgwVar, zzcgVarZzy));
        }
        Log.w(zze, "Audio input is only supported for LEGION features");
        zzgwVar.zzb(3);
        return new zzgv();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzfv
    public final /* bridge */ /* synthetic */ zzav zzg(Object obj, zzbn zzbnVar) {
        zzbi zzbiVar = (zzbi) obj;
        if (zzbiVar.zzd() > 0) {
            return zzbiVar.zze(zzbnVar);
        }
        Log.w(zze, "Ignoring prepareInferenceEngine because service is older than V2");
        zzbnVar.zzc(3);
        return new zzgv();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzfv
    public final /* bridge */ /* synthetic */ zzav zzh(Object obj, boolean z, Object obj2, zzbp zzbpVar) {
        zzhy zzhyVar = (zzhy) obj;
        zzbi zzbiVar = (zzbi) obj2;
        if (zzbiVar.zzd() >= 2) {
            return zzbiVar.zzg(zzhyVar.zzy(this.zzf, this.zzb), true, zzbpVar);
        }
        Log.w(zze, "Ignoring getTokenInfo because service is older than V3");
        zzbpVar.zzc(16);
        return new zzgv();
    }
}
