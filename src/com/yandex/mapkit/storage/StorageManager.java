package com.yandex.mapkit.storage;

import com.yandex.runtime.Error;

/* JADX INFO: loaded from: classes5.dex */
public interface StorageManager {

    public interface ClearListener {
        void onClearCompleted();
    }

    public interface SizeListener {
        void onError(Error error);

        void onSuccess(Long l);
    }

    void addStorageErrorListener(StorageErrorListener storageErrorListener);

    void clear(ClearListener clearListener);

    void computeSize(SizeListener sizeListener);

    boolean isValid();

    void maxTileStorageSize(SizeListener sizeListener);

    void removeStorageErrorListener(StorageErrorListener storageErrorListener);

    void resetMaxTileStorageSize(SizeListener sizeListener);

    void setMaxTileStorageSize(long j, SizeListener sizeListener);
}
