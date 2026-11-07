package com.google.mlkit.genai.common;

/* JADX INFO: loaded from: classes5.dex */
public interface DownloadCallback {
    default void onDownloadCompleted() {
    }

    void onDownloadFailed(GenAiException genAiException);

    void onDownloadProgress(long j);

    void onDownloadStarted(long j);
}
