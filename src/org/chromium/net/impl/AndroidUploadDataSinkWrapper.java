package org.chromium.net.impl;

import org.chromium.net.UploadDataSink;

/* JADX INFO: loaded from: classes5.dex */
class AndroidUploadDataSinkWrapper extends UploadDataSink {
    private final android.net.http.UploadDataSink mBackend;

    public AndroidUploadDataSinkWrapper(android.net.http.UploadDataSink uploadDataSink) {
        this.mBackend = uploadDataSink;
    }

    @Override // org.chromium.net.UploadDataSink
    public void onReadSucceeded(boolean z) {
        this.mBackend.onReadSucceeded(z);
    }

    @Override // org.chromium.net.UploadDataSink
    public void onRewindSucceeded() {
        this.mBackend.onRewindSucceeded();
    }
}
