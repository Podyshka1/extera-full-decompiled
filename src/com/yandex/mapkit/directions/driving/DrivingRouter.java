package com.yandex.mapkit.directions.driving;

import com.yandex.mapkit.RequestPoint;
import com.yandex.mapkit.directions.driving.DrivingSession;
import com.yandex.mapkit.directions.driving.DrivingSummarySession;
import com.yandex.mapkit.geometry.Polyline;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface DrivingRouter {
    DrivingSession matchRoute(Polyline polyline, DrivingOptions drivingOptions, VehicleOptions vehicleOptions, DrivingSession.DrivingRouteListener drivingRouteListener);

    DrivingSession requestRoutes(List<RequestPoint> list, DrivingOptions drivingOptions, VehicleOptions vehicleOptions, DrivingSession.DrivingRouteListener drivingRouteListener);

    DrivingSummarySession requestRoutesSummary(List<RequestPoint> list, DrivingOptions drivingOptions, VehicleOptions vehicleOptions, DrivingSummarySession.DrivingSummaryListener drivingSummaryListener);
}
