package com.yandex.mapkit.transport.bicycle;

import com.yandex.runtime.Error;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface Session {

    public interface RouteListener {
        void onBicycleRoutes(List<Route> list);

        void onBicycleRoutesError(Error error);
    }

    void cancel();

    void retry(RouteListener routeListener);
}
