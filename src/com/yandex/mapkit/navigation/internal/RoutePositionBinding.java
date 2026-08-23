package com.yandex.mapkit.navigation.internal;

import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.mapkit.navigation.RoutePosition;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class RoutePositionBinding implements RoutePosition {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.navigation.RoutePosition
    public native RoutePosition advance(double d);

    @Override // com.yandex.mapkit.navigation.RoutePosition
    public native Double distanceTo(RoutePosition routePosition);

    @Override // com.yandex.mapkit.navigation.RoutePosition
    public native double distanceToFinish();

    @Override // com.yandex.mapkit.navigation.RoutePosition
    public native boolean equals(RoutePosition routePosition);

    @Override // com.yandex.mapkit.navigation.RoutePosition
    public native Point getPoint();

    @Override // com.yandex.mapkit.navigation.RoutePosition
    public native double heading();

    @Override // com.yandex.mapkit.navigation.RoutePosition
    public native boolean onRoute(String str);

    @Override // com.yandex.mapkit.navigation.RoutePosition
    public native PolylinePosition positionOnRoute(String str);

    @Override // com.yandex.mapkit.navigation.RoutePosition
    public native boolean precedes(RoutePosition routePosition);

    @Override // com.yandex.mapkit.navigation.RoutePosition
    public native boolean precedesOrEquals(RoutePosition routePosition);

    @Override // com.yandex.mapkit.navigation.RoutePosition
    public native double timeToFinish();

    public RoutePositionBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
