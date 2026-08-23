package com.yandex.mapkit.transport.bicycle.internal;

import com.yandex.mapkit.RequestPoint;
import com.yandex.mapkit.transport.bicycle.BicycleRouter;
import com.yandex.mapkit.transport.bicycle.Session;
import com.yandex.mapkit.transport.bicycle.SummarySession;
import com.yandex.mapkit.transport.bicycle.VehicleType;
import com.yandex.runtime.NativeObject;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class BicycleRouterBinding implements BicycleRouter {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.transport.bicycle.BicycleRouter
    public native Session requestRoutes(List<RequestPoint> list, VehicleType vehicleType, Session.RouteListener routeListener);

    @Override // com.yandex.mapkit.transport.bicycle.BicycleRouter
    public native SummarySession requestRoutesSummary(List<RequestPoint> list, VehicleType vehicleType, SummarySession.SummaryListener summaryListener);

    @Override // com.yandex.mapkit.transport.bicycle.BicycleRouter
    public native Session resolveUri(String str, Session.RouteListener routeListener);

    public BicycleRouterBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
