package com.yandex.mapkit.transport.masstransit.internal;

import com.yandex.mapkit.RequestPoint;
import com.yandex.mapkit.transport.masstransit.MasstransitRouteSerializer;
import com.yandex.mapkit.transport.masstransit.MasstransitRouter;
import com.yandex.mapkit.transport.masstransit.RouteOptions;
import com.yandex.mapkit.transport.masstransit.Session;
import com.yandex.mapkit.transport.masstransit.SummarySession;
import com.yandex.mapkit.transport.masstransit.TimeOptions;
import com.yandex.mapkit.transport.masstransit.TransitOptions;
import com.yandex.runtime.NativeObject;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class MasstransitRouterBinding implements MasstransitRouter {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.transport.masstransit.MasstransitRouter
    public native Session requestRoutes(List<RequestPoint> list, TransitOptions transitOptions, RouteOptions routeOptions, Session.RouteListener routeListener);

    @Override // com.yandex.mapkit.transport.masstransit.MasstransitRouter
    public native SummarySession requestRoutesSummary(List<RequestPoint> list, TransitOptions transitOptions, RouteOptions routeOptions, SummarySession.SummaryListener summaryListener);

    @Override // com.yandex.mapkit.transport.masstransit.MasstransitRouter
    public native Session resolveUri(String str, TimeOptions timeOptions, Session.RouteListener routeListener);

    @Override // com.yandex.mapkit.transport.masstransit.MasstransitRouter
    public native MasstransitRouteSerializer routeSerializer();

    public MasstransitRouterBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
