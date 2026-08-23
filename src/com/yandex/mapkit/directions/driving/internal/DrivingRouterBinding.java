package com.yandex.mapkit.directions.driving.internal;

import com.yandex.mapkit.RequestPoint;
import com.yandex.mapkit.directions.driving.DrivingOptions;
import com.yandex.mapkit.directions.driving.DrivingRouter;
import com.yandex.mapkit.directions.driving.DrivingSession;
import com.yandex.mapkit.directions.driving.DrivingSummarySession;
import com.yandex.mapkit.directions.driving.VehicleOptions;
import com.yandex.mapkit.geometry.Polyline;
import com.yandex.runtime.NativeObject;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DrivingRouterBinding implements DrivingRouter {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.directions.driving.DrivingRouter
    public native DrivingSession matchRoute(Polyline polyline, DrivingOptions drivingOptions, VehicleOptions vehicleOptions, DrivingSession.DrivingRouteListener drivingRouteListener);

    @Override // com.yandex.mapkit.directions.driving.DrivingRouter
    public native DrivingSession requestRoutes(List<RequestPoint> list, DrivingOptions drivingOptions, VehicleOptions vehicleOptions, DrivingSession.DrivingRouteListener drivingRouteListener);

    @Override // com.yandex.mapkit.directions.driving.DrivingRouter
    public native DrivingSummarySession requestRoutesSummary(List<RequestPoint> list, DrivingOptions drivingOptions, VehicleOptions vehicleOptions, DrivingSummarySession.DrivingSummaryListener drivingSummaryListener);

    public DrivingRouterBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
