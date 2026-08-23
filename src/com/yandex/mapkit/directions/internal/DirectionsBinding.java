package com.yandex.mapkit.directions.internal;

import com.yandex.mapkit.directions.Directions;
import com.yandex.mapkit.directions.carparks.CarparksLayer;
import com.yandex.mapkit.directions.driving.DrivingRouter;
import com.yandex.mapkit.directions.driving.DrivingRouterType;
import com.yandex.mapkit.map.MapWindow;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class DirectionsBinding implements Directions {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.directions.Directions
    public native CarparksLayer createCarparksLayer(MapWindow mapWindow);

    @Override // com.yandex.mapkit.directions.Directions
    public native DrivingRouter createDrivingRouter(DrivingRouterType drivingRouterType);

    @Override // com.yandex.mapkit.directions.Directions
    public native boolean isValid();

    public DirectionsBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
