package com.yandex.mapkit.navigation.automotive.custom_route_navigation.internal;

import com.yandex.mapkit.directions.driving.DrivingSession;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.navigation.automotive.custom_route_navigation.CustomRouteBuilder;
import com.yandex.mapkit.navigation.automotive.custom_route_navigation.CustomRouteOptions;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class CustomRouteBuilderBinding implements CustomRouteBuilder {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.navigation.automotive.custom_route_navigation.CustomRouteBuilder
    public native DrivingSession requestRoute(Polyline polyline, Point point, Double d, CustomRouteOptions customRouteOptions, DrivingSession.DrivingRouteListener drivingRouteListener);

    public CustomRouteBuilderBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
