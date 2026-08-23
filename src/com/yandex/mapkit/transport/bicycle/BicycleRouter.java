package com.yandex.mapkit.transport.bicycle;

import com.yandex.mapkit.RequestPoint;
import com.yandex.mapkit.transport.bicycle.Session;
import com.yandex.mapkit.transport.bicycle.SummarySession;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public interface BicycleRouter {
    Session requestRoutes(List<RequestPoint> list, VehicleType vehicleType, Session.RouteListener routeListener);

    SummarySession requestRoutesSummary(List<RequestPoint> list, VehicleType vehicleType, SummarySession.SummaryListener summaryListener);

    Session resolveUri(String str, Session.RouteListener routeListener);
}
