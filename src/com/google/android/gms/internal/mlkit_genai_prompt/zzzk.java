package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.mlkit.genai.common.DownloadCallback;
import com.google.mlkit.genai.common.DownloadStatus;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
final class zzzk implements FlowCollector {
    final /* synthetic */ DownloadCallback zza;

    public zzzk(DownloadCallback downloadCallback) {
        this.zza = downloadCallback;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
        DownloadStatus downloadStatus = (DownloadStatus) obj;
        if (downloadStatus instanceof DownloadStatus.DownloadStarted) {
            this.zza.onDownloadStarted(((DownloadStatus.DownloadStarted) downloadStatus).getBytesToDownload());
        } else if (downloadStatus instanceof DownloadStatus.DownloadProgress) {
            this.zza.onDownloadProgress(((DownloadStatus.DownloadProgress) downloadStatus).getTotalBytesDownloaded());
        } else if (downloadStatus instanceof DownloadStatus.DownloadFailed) {
            this.zza.onDownloadFailed(((DownloadStatus.DownloadFailed) downloadStatus).getE());
        } else {
            if (!(downloadStatus instanceof DownloadStatus.DownloadCompleted)) {
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
                return null;
            }
            this.zza.onDownloadCompleted();
        }
        return Unit.INSTANCE;
    }
}
