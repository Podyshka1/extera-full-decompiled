package com.yandex.mapkit.offline_cache.internal;

import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.offline_cache.DataMoveListener;
import com.yandex.mapkit.offline_cache.OfflineCacheManager;
import com.yandex.mapkit.offline_cache.Region;
import com.yandex.mapkit.offline_cache.RegionListUpdatesListener;
import com.yandex.mapkit.offline_cache.RegionListener;
import com.yandex.mapkit.offline_cache.RegionState;
import com.yandex.mapkit.offline_cache.RegionsAtPointListener;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class OfflineCacheManagerBinding implements OfflineCacheManager {
    private final NativeObject nativeObject;
    protected Subscription<DataMoveListener> dataMoveListenerSubscription = new Subscription<DataMoveListener>() { // from class: com.yandex.mapkit.offline_cache.internal.OfflineCacheManagerBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(DataMoveListener dataMoveListener) {
            return OfflineCacheManagerBinding.createDataMoveListener(dataMoveListener);
        }
    };
    protected Subscription<OfflineCacheManager.ErrorListener> errorListenerSubscription = new Subscription<OfflineCacheManager.ErrorListener>() { // from class: com.yandex.mapkit.offline_cache.internal.OfflineCacheManagerBinding.2
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(OfflineCacheManager.ErrorListener errorListener) {
            return OfflineCacheManagerBinding.createErrorListener(errorListener);
        }
    };
    protected Subscription<RegionListUpdatesListener> regionListUpdatesListenerSubscription = new Subscription<RegionListUpdatesListener>() { // from class: com.yandex.mapkit.offline_cache.internal.OfflineCacheManagerBinding.3
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(RegionListUpdatesListener regionListUpdatesListener) {
            return OfflineCacheManagerBinding.createRegionListUpdatesListener(regionListUpdatesListener);
        }
    };
    protected Subscription<RegionListener> regionListenerSubscription = new Subscription<RegionListener>() { // from class: com.yandex.mapkit.offline_cache.internal.OfflineCacheManagerBinding.4
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(RegionListener regionListener) {
            return OfflineCacheManagerBinding.createRegionListener(regionListener);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createDataMoveListener(DataMoveListener dataMoveListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createErrorListener(OfflineCacheManager.ErrorListener errorListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createRegionListUpdatesListener(RegionListUpdatesListener regionListUpdatesListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createRegionListener(RegionListener regionListener);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void addErrorListener(OfflineCacheManager.ErrorListener errorListener);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void addRegionListUpdatesListener(RegionListUpdatesListener regionListUpdatesListener);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void addRegionListener(RegionListener regionListener);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void allowUseCellularNetwork(boolean z);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void clear(OfflineCacheManager.ClearListener clearListener);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void computeCacheSize(OfflineCacheManager.SizeListener sizeListener);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void drop(int i);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void enableAutoUpdate(boolean z);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native List<String> getCities(int i);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native Long getDownloadedReleaseTime(int i);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native float getProgress(int i);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native RegionState getState(int i);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native boolean isLegacyPath(int i);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native boolean isValid();

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native boolean mayBeOutOfAvailableSpace(int i);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void moveData(String str, DataMoveListener dataMoveListener);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void pauseDownload(int i);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native List<Region> regions();

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void removeErrorListener(OfflineCacheManager.ErrorListener errorListener);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void removeRegionListUpdatesListener(RegionListUpdatesListener regionListUpdatesListener);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void removeRegionListener(RegionListener regionListener);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void requestPath(OfflineCacheManager.PathGetterListener pathGetterListener);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void requestRegionsAtPoint(Point point, RegionsAtPointListener regionsAtPointListener);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void setCachePath(String str, OfflineCacheManager.PathSetterListener pathSetterListener);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void startDownload(int i);

    @Override // com.yandex.mapkit.offline_cache.OfflineCacheManager
    public native void stopDownload(int i);

    public OfflineCacheManagerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
