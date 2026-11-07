package org.chromium.net.impl;

import java.nio.ByteBuffer;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;

/* JADX INFO: loaded from: classes5.dex */
public final class VersionSafeCallbacks$UploadDataProviderWrapper extends UploadDataProvider {
    private final UploadDataProvider mWrappedProvider;

    public VersionSafeCallbacks$UploadDataProviderWrapper(UploadDataProvider uploadDataProvider) {
        this.mWrappedProvider = uploadDataProvider;
    }

    @Override // org.chromium.net.UploadDataProvider
    public long getLength() {
        return this.mWrappedProvider.getLength();
    }

    @Override // org.chromium.net.UploadDataProvider
    public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
        this.mWrappedProvider.read(uploadDataSink, byteBuffer);
    }

    @Override // org.chromium.net.UploadDataProvider
    public void rewind(UploadDataSink uploadDataSink) {
        this.mWrappedProvider.rewind(uploadDataSink);
    }

    @Override // org.chromium.net.UploadDataProvider, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.mWrappedProvider.close();
    }
}
