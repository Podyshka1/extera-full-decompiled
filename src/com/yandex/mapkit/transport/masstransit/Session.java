package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.Error;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface Session {

    public interface RouteListener {
        void onMasstransitRoutes(List<Route> list);

        void onMasstransitRoutesError(Error error);
    }

    void cancel();

    void retry(RouteListener routeListener);
}
