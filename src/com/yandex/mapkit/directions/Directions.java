package com.yandex.mapkit.directions;

import com.yandex.mapkit.directions.carparks.CarparksLayer;
import com.yandex.mapkit.directions.driving.DrivingRouter;
import com.yandex.mapkit.directions.driving.DrivingRouterType;
import com.yandex.mapkit.map.MapWindow;

/* JADX INFO: loaded from: classes5.dex */
public interface Directions {
    CarparksLayer createCarparksLayer(MapWindow mapWindow);

    DrivingRouter createDrivingRouter(DrivingRouterType drivingRouterType);

    boolean isValid();
}
