package com.yandex.mapkit.offline_cache;

import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.Error;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface OfflineCacheManager {

    public interface ClearListener {
        void onClearCompleted();
    }

    public interface ErrorListener {
        void onError(Error error);

        void onRegionError(Error error, int i);
    }

    public interface PathGetterListener {
        void onPathReceived(String str);
    }

    public interface PathSetterListener {
        void onPathSet();

        void onPathSetError(Error error);
    }

    public interface SizeListener {
        void onSizeComputed(Long l);
    }

    void addErrorListener(ErrorListener errorListener);

    void addRegionListUpdatesListener(RegionListUpdatesListener regionListUpdatesListener);

    void addRegionListener(RegionListener regionListener);

    void allowUseCellularNetwork(boolean z);

    void clear(ClearListener clearListener);

    void computeCacheSize(SizeListener sizeListener);

    void drop(int i);

    void enableAutoUpdate(boolean z);

    List<String> getCities(int i);

    Long getDownloadedReleaseTime(int i);

    float getProgress(int i);

    RegionState getState(int i);

    boolean isLegacyPath(int i);

    boolean isValid();

    boolean mayBeOutOfAvailableSpace(int i);

    void moveData(String str, DataMoveListener dataMoveListener);

    void pauseDownload(int i);

    List<Region> regions();

    void removeErrorListener(ErrorListener errorListener);

    void removeRegionListUpdatesListener(RegionListUpdatesListener regionListUpdatesListener);

    void removeRegionListener(RegionListener regionListener);

    void requestPath(PathGetterListener pathGetterListener);

    void requestRegionsAtPoint(Point point, RegionsAtPointListener regionsAtPointListener);

    void setCachePath(String str, PathSetterListener pathSetterListener);

    void startDownload(int i);

    void stopDownload(int i);
}
