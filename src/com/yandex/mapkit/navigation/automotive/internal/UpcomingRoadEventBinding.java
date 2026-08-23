package com.yandex.mapkit.navigation.automotive.internal;

import com.yandex.mapkit.directions.driving.Event;
import com.yandex.mapkit.navigation.RoutePosition;
import com.yandex.mapkit.navigation.automotive.SpeedLimitStatus;
import com.yandex.mapkit.navigation.automotive.UpcomingRoadEvent;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class UpcomingRoadEventBinding implements UpcomingRoadEvent {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.navigation.automotive.UpcomingRoadEvent
    public native Double getEffectiveSpeedLimit();

    @Override // com.yandex.mapkit.navigation.automotive.UpcomingRoadEvent
    public native Event getEvent();

    @Override // com.yandex.mapkit.navigation.automotive.UpcomingRoadEvent
    public native RoutePosition getPosition();

    @Override // com.yandex.mapkit.navigation.automotive.UpcomingRoadEvent
    public native SpeedLimitStatus getSpeedLimitStatus();

    public UpcomingRoadEventBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
