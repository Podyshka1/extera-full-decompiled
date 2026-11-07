package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.mlkit.genai.common.DownloadCallback;
import com.google.mlkit.genai.common.DownloadStatus;
import com.google.mlkit.genai.common.GenAiException;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes4.dex */
public final class zzym implements DownloadCallback {
    final /* synthetic */ ProducerScope zza;

    public zzym(ProducerScope producerScope) {
        this.zza = producerScope;
    }

    @Override // com.google.mlkit.genai.common.DownloadCallback
    public final void onDownloadCompleted() {
        ProducerScope producerScope = this.zza;
        producerScope.mo4601trySendJP2dKIU(DownloadStatus.DownloadCompleted.INSTANCE);
        producerScope.close(null);
    }

    @Override // com.google.mlkit.genai.common.DownloadCallback
    public final void onDownloadFailed(GenAiException genAiException) {
        DownloadStatus.DownloadFailed downloadFailed = new DownloadStatus.DownloadFailed(genAiException);
        ProducerScope producerScope = this.zza;
        producerScope.mo4601trySendJP2dKIU(downloadFailed);
        producerScope.close(genAiException);
    }

    @Override // com.google.mlkit.genai.common.DownloadCallback
    public final void onDownloadProgress(long j) {
        this.zza.mo4601trySendJP2dKIU(new DownloadStatus.DownloadProgress(j));
    }

    @Override // com.google.mlkit.genai.common.DownloadCallback
    public final void onDownloadStarted(long j) {
        this.zza.mo4601trySendJP2dKIU(new DownloadStatus.DownloadStarted(j));
    }
}
