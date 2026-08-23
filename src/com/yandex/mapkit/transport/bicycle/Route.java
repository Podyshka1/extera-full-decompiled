package com.yandex.mapkit.transport.bicycle;

import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.uri.UriObjectMetadata;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface Route {
    List<ConstructionSegment> getConstructions();

    Flags getFlags();

    Polyline getGeometry();

    List<Leg> getLegs();

    List<RestrictedEntry> getRestrictedEntries();

    String getRouteId();

    List<Section> getSections();

    List<TrafficTypeSegment> getTrafficTypes();

    UriObjectMetadata getUriMetadata();

    List<ViaPoint> getViaPoints();

    List<WayPoint> getWayPoints();

    Weight getWeight();
}
