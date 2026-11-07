package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.mlkit.genai.prompt.CreateCachedContextRequest;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwh {
    final /* synthetic */ zzwl zza;
    final /* synthetic */ CreateCachedContextRequest zzb;

    public zzwh(zzwl zzwlVar, CreateCachedContextRequest createCachedContextRequest) {
        this.zza = zzwlVar;
        this.zzb = createCachedContextRequest;
    }

    public final void zza(boolean z) {
        zzpk zzpkVar = (zzpk) this.zza.zza.get(this.zzb);
        if (zzpkVar != null) {
            zzpkVar.zzh(Boolean.valueOf(z));
        }
    }
}
