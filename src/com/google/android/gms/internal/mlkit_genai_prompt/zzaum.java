package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class zzaum implements zzoj {
    static final /* synthetic */ zzaum zza = new zzaum();

    private /* synthetic */ zzaum() {
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoj
    public final /* synthetic */ ListenableFuture zza(Object obj) {
        zzdq zzdqVar = (zzdq) obj;
        if (zzdqVar == null) {
            return zzot.zzc(new IllegalStateException("Failed to get base model name. aiFeature is null."));
        }
        String strZzb = zzdqVar.zzb();
        return ("nano-v4-full".equals(strZzb) && (zzdqVar.zze() == 646 || zzdqVar.zze() == 645)) ? zzot.zza("nano-v4-fast") : zzot.zza(strZzb);
    }
}
