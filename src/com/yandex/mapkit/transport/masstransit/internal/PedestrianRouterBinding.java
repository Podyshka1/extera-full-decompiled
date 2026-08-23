package com.yandex.mapkit.transport.masstransit.internal;

import com.yandex.mapkit.RequestPoint;
import com.yandex.mapkit.transport.masstransit.MasstransitRouteSerializer;
import com.yandex.mapkit.transport.masstransit.PedestrianRouter;
import com.yandex.mapkit.transport.masstransit.RouteOptions;
import com.yandex.mapkit.transport.masstransit.Session;
import com.yandex.mapkit.transport.masstransit.SummarySession;
import com.yandex.mapkit.transport.masstransit.TimeOptions;
import com.yandex.runtime.NativeObject;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class PedestrianRouterBinding implements PedestrianRouter {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.transport.masstransit.PedestrianRouter
    public native Session requestRoutes(List<RequestPoint> list, TimeOptions timeOptions, RouteOptions routeOptions, Session.RouteListener routeListener);

    @Override // com.yandex.mapkit.transport.masstransit.PedestrianRouter
    public native SummarySession requestRoutesSummary(RequestPoint requestPoint, List<RequestPoint> list, TimeOptions timeOptions, RouteOptions routeOptions, SummarySession.SummaryListener summaryListener);

    @Override // com.yandex.mapkit.transport.masstransit.PedestrianRouter
    public native SummarySession requestRoutesSummary(List<RequestPoint> list, TimeOptions timeOptions, RouteOptions routeOptions, SummarySession.SummaryListener summaryListener);

    @Override // com.yandex.mapkit.transport.masstransit.PedestrianRouter
    public native Session resolveUri(String str, TimeOptions timeOptions, Session.RouteListener routeListener);

    @Override // com.yandex.mapkit.transport.masstransit.PedestrianRouter
    public native MasstransitRouteSerializer routeSerializer();

    public PedestrianRouterBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
