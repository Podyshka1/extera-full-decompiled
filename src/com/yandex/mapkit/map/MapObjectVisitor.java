package com.yandex.mapkit.map;

/* JADX INFO: loaded from: classes5.dex */
public interface MapObjectVisitor {
    void onCircleVisited(CircleMapObject circleMapObject);

    void onClusterizedCollectionVisitEnd(ClusterizedPlacemarkCollection clusterizedPlacemarkCollection);

    boolean onClusterizedCollectionVisitStart(ClusterizedPlacemarkCollection clusterizedPlacemarkCollection);

    void onCollectionVisitEnd(MapObjectCollection mapObjectCollection);

    boolean onCollectionVisitStart(MapObjectCollection mapObjectCollection);

    void onPlacemarkVisited(PlacemarkMapObject placemarkMapObject);

    void onPolygonVisited(PolygonMapObject polygonMapObject);

    void onPolylineVisited(PolylineMapObject polylineMapObject);
}
