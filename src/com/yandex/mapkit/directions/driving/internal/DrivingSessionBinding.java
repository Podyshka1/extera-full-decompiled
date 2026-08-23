package com.yandex.mapkit.directions.driving.internal;

import com.yandex.mapkit.directions.driving.DrivingSession;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class DrivingSessionBinding implements DrivingSession {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.directions.driving.DrivingSession
    public native void cancel();

    @Override // com.yandex.mapkit.directions.driving.DrivingSession
    public native void retry(DrivingSession.DrivingRouteListener drivingRouteListener);

    public DrivingSessionBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
