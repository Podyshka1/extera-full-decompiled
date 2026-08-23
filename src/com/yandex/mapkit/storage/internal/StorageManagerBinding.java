package com.yandex.mapkit.storage.internal;

import com.yandex.mapkit.storage.StorageErrorListener;
import com.yandex.mapkit.storage.StorageManager;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;

/* JADX INFO: loaded from: classes5.dex */
public class StorageManagerBinding implements StorageManager {
    private final NativeObject nativeObject;
    protected Subscription<StorageErrorListener> storageErrorListenerSubscription = new Subscription<StorageErrorListener>() { // from class: com.yandex.mapkit.storage.internal.StorageManagerBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(StorageErrorListener storageErrorListener) {
            return StorageManagerBinding.createStorageErrorListener(storageErrorListener);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createStorageErrorListener(StorageErrorListener storageErrorListener);

    @Override // com.yandex.mapkit.storage.StorageManager
    public native void addStorageErrorListener(StorageErrorListener storageErrorListener);

    @Override // com.yandex.mapkit.storage.StorageManager
    public native void clear(StorageManager.ClearListener clearListener);

    @Override // com.yandex.mapkit.storage.StorageManager
    public native void computeSize(StorageManager.SizeListener sizeListener);

    @Override // com.yandex.mapkit.storage.StorageManager
    public native boolean isValid();

    @Override // com.yandex.mapkit.storage.StorageManager
    public native void maxTileStorageSize(StorageManager.SizeListener sizeListener);

    @Override // com.yandex.mapkit.storage.StorageManager
    public native void removeStorageErrorListener(StorageErrorListener storageErrorListener);

    @Override // com.yandex.mapkit.storage.StorageManager
    public native void resetMaxTileStorageSize(StorageManager.SizeListener sizeListener);

    @Override // com.yandex.mapkit.storage.StorageManager
    public native void setMaxTileStorageSize(long j, StorageManager.SizeListener sizeListener);

    public StorageManagerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
