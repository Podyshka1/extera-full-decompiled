package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.RequestPoint;
import com.yandex.mapkit.transport.masstransit.Session;
import com.yandex.mapkit.transport.masstransit.SummarySession;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface BicycleRouterV2 {
    Session requestRoutes(List<RequestPoint> list, TimeOptions timeOptions, RouteOptions routeOptions, Session.RouteListener routeListener);

    SummarySession requestRoutesSummary(RequestPoint requestPoint, List<RequestPoint> list, TimeOptions timeOptions, RouteOptions routeOptions, SummarySession.SummaryListener summaryListener);

    SummarySession requestRoutesSummary(List<RequestPoint> list, TimeOptions timeOptions, RouteOptions routeOptions, SummarySession.SummaryListener summaryListener);

    Session resolveUri(String str, TimeOptions timeOptions, Session.RouteListener routeListener);

    MasstransitRouteSerializer routeSerializer();
}
