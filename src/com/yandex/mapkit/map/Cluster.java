package com.yandex.mapkit.map;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface Cluster {
    void addClusterTapListener(ClusterTapListener clusterTapListener);

    PlacemarkMapObject getAppearance();

    List<PlacemarkMapObject> getPlacemarks();

    int getSize();

    boolean isValid();

    void removeClusterTapListener(ClusterTapListener clusterTapListener);
}
