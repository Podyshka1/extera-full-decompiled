package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.mapkit.uri.UriObjectMetadata;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface Route {
    double distanceBetweenPolylinePositions(PolylinePosition polylinePosition, PolylinePosition polylinePosition2);

    Polyline getGeometry();

    RouteMetadata getMetadata();

    List<Section> getSections();

    UriObjectMetadata getUriMetadata();

    List<WayPoint> getWayPoints();
}
