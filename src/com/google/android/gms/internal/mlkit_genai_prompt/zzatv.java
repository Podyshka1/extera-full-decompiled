package com.google.android.gms.internal.mlkit_genai_prompt;

import android.annotation.SuppressLint;
import com.google.mlkit.genai.common.DownloadCallback;
import com.google.mlkit.genai.common.GenAiException;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzatv implements zzdy {
    final /* synthetic */ DownloadCallback zza;

    public zzatv(zzaun zzaunVar, DownloadCallback downloadCallback) {
        this.zza = downloadCallback;
        Objects.requireNonNull(zzaunVar);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdy
    public final void zza(zzdq zzdqVar, long j) {
        this.zza.onDownloadStarted(j);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdy
    @SuppressLint({"WrongConstant"})
    public final void zzb(zzdq zzdqVar, int i, zzdo zzdoVar) {
        this.zza.onDownloadFailed(new GenAiException(zzdoVar, zzdoVar.zzg(), zzdoVar.zzh()));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdy
    public final void zzc(zzdq zzdqVar, long j) {
        this.zza.onDownloadProgress(j);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdy
    public final void zzd(zzdq zzdqVar) {
        this.zza.onDownloadCompleted();
    }
}
