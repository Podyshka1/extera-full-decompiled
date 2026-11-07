package org.chromium.net.impl;

import android.net.http.UploadDataProvider;
import android.net.http.UploadDataSink;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
class AndroidUploadDataProviderWrapper extends UploadDataProvider {
    private final org.chromium.net.UploadDataProvider mBackend;

    public AndroidUploadDataProviderWrapper(org.chromium.net.UploadDataProvider uploadDataProvider) {
        Objects.requireNonNull(uploadDataProvider, "Invalid UploadDataProvider.");
        this.mBackend = uploadDataProvider;
    }

    public long getLength() {
        return this.mBackend.getLength();
    }

    public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
        this.mBackend.read(new AndroidUploadDataSinkWrapper(uploadDataSink), byteBuffer);
    }

    public void rewind(UploadDataSink uploadDataSink) {
        this.mBackend.rewind(new AndroidUploadDataSinkWrapper(uploadDataSink));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.mBackend.close();
    }
}
