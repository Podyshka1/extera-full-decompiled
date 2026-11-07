package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.mlkit.genai.common.StreamingCallback;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaah extends zzaur implements AutoCloseable {
    public zzaah(int i, ExecutorService executorService, zzaty zzatyVar) {
        super(executorService, i, -1, zzatyVar);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaun
    public final zzdp zzd(zzdi zzdiVar, zzdq zzdqVar) {
        zzii zziiVarZzd = zzij.zzd(zzdiVar);
        zziiVarZzd.zzc(zzdqVar);
        return zzig.zzd(zziiVarZzd.zzd());
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaun
    public final /* bridge */ /* synthetic */ Object zze(Object obj, StreamingCallback streamingCallback) {
        return zzys.zze((zzaan) obj, streamingCallback, null);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaun
    public final /* bridge */ /* synthetic */ Object zzf(Object obj) {
        return zzys.zzd((zzic) obj);
    }
}
