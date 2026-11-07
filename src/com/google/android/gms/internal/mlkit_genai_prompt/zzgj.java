package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzgj extends zzar {
    final /* synthetic */ zzgk zza;

    public zzgj(zzgk zzgkVar) {
        Objects.requireNonNull(zzgkVar);
        this.zza = zzgkVar;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzas
    public final void zzb(zzan zzanVar) {
        this.zza.zze(zzanVar);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzas
    public final void zzc(int i, String str) {
        this.zza.zzf(zzdo.zze(i != 1 ? i != 2 ? i != 3 ? 0 : 607 : 604 : 601, "AiCore service is not connected. Service provider failure: ".concat(String.valueOf(str)), null));
    }
}
