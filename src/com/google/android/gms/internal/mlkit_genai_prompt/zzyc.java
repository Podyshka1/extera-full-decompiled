package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.mlkit.genai.common.DownloadCallback;
import com.google.mlkit.genai.common.GenAiException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CompletableDeferred;

/* JADX INFO: loaded from: classes4.dex */
public final class zzyc implements DownloadCallback {
    final /* synthetic */ boolean zza;
    final /* synthetic */ DownloadCallback zzb;
    final /* synthetic */ CompletableDeferred zzc;
    final /* synthetic */ zzyd zzd;
    final /* synthetic */ zzaur zze;
    final /* synthetic */ Function0 zzf;

    public zzyc(boolean z, DownloadCallback downloadCallback, CompletableDeferred completableDeferred, zzyd zzydVar, zzaur zzaurVar, Function0 function0) {
        this.zza = z;
        this.zzb = downloadCallback;
        this.zzc = completableDeferred;
        this.zzd = zzydVar;
        this.zze = zzaurVar;
        this.zzf = function0;
    }

    @Override // com.google.mlkit.genai.common.DownloadCallback
    public final void onDownloadCompleted() {
        this.zzf.invoke();
    }

    @Override // com.google.mlkit.genai.common.DownloadCallback
    public final void onDownloadFailed(GenAiException genAiException) {
        CompletableDeferred completableDeferred = this.zzc;
        if (completableDeferred != null) {
            completableDeferred.completeExceptionally(genAiException);
        }
        this.zzd.zzk(this.zze, genAiException, this.zzb);
        this.zzf.invoke();
    }

    @Override // com.google.mlkit.genai.common.DownloadCallback
    public final void onDownloadProgress(long j) {
        if (this.zza) {
            this.zzb.onDownloadProgress(j);
        }
    }

    @Override // com.google.mlkit.genai.common.DownloadCallback
    public final void onDownloadStarted(long j) {
        if (this.zza) {
            this.zzb.onDownloadStarted(j);
        }
        CompletableDeferred completableDeferred = this.zzc;
        if (completableDeferred != null) {
            completableDeferred.complete(Unit.INSTANCE);
        }
    }
}
