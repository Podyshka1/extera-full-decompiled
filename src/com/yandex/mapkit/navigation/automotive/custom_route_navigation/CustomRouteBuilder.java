package com.yandex.mapkit.navigation.automotive.custom_route_navigation;

import com.yandex.mapkit.directions.driving.DrivingSession;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.geometry.Polyline;

/* JADX INFO: loaded from: classes5.dex */
public interface CustomRouteBuilder {
    DrivingSession requestRoute(Polyline polyline, Point point, Double d, CustomRouteOptions customRouteOptions, DrivingSession.DrivingRouteListener drivingRouteListener);
}
