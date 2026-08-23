package com.yandex.mapkit.transport.bicycle.internal;

import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.transport.bicycle.ConstructionSegment;
import com.yandex.mapkit.transport.bicycle.Flags;
import com.yandex.mapkit.transport.bicycle.Leg;
import com.yandex.mapkit.transport.bicycle.RestrictedEntry;
import com.yandex.mapkit.transport.bicycle.Route;
import com.yandex.mapkit.transport.bicycle.Section;
import com.yandex.mapkit.transport.bicycle.TrafficTypeSegment;
import com.yandex.mapkit.transport.bicycle.ViaPoint;
import com.yandex.mapkit.transport.bicycle.WayPoint;
import com.yandex.mapkit.transport.bicycle.Weight;
import com.yandex.mapkit.uri.UriObjectMetadata;
import com.yandex.runtime.NativeObject;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class RouteBinding implements Route {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.transport.bicycle.Route
    public native List<ConstructionSegment> getConstructions();

    @Override // com.yandex.mapkit.transport.bicycle.Route
    public native Flags getFlags();

    @Override // com.yandex.mapkit.transport.bicycle.Route
    public native Polyline getGeometry();

    @Override // com.yandex.mapkit.transport.bicycle.Route
    public native List<Leg> getLegs();

    @Override // com.yandex.mapkit.transport.bicycle.Route
    public native List<RestrictedEntry> getRestrictedEntries();

    @Override // com.yandex.mapkit.transport.bicycle.Route
    public native String getRouteId();

    @Override // com.yandex.mapkit.transport.bicycle.Route
    public native List<Section> getSections();

    @Override // com.yandex.mapkit.transport.bicycle.Route
    public native List<TrafficTypeSegment> getTrafficTypes();

    @Override // com.yandex.mapkit.transport.bicycle.Route
    public native UriObjectMetadata getUriMetadata();

    @Override // com.yandex.mapkit.transport.bicycle.Route
    public native List<ViaPoint> getViaPoints();

    @Override // com.yandex.mapkit.transport.bicycle.Route
    public native List<WayPoint> getWayPoints();

    @Override // com.yandex.mapkit.transport.bicycle.Route
    public native Weight getWeight();

    public RouteBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
