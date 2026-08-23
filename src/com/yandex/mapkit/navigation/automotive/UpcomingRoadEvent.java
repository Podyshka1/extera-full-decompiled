package com.yandex.mapkit.navigation.automotive;

import com.yandex.mapkit.directions.driving.Event;
import com.yandex.mapkit.navigation.RoutePosition;

/* JADX INFO: loaded from: classes5.dex */
public interface UpcomingRoadEvent {
    Double getEffectiveSpeedLimit();

    Event getEvent();

    RoutePosition getPosition();

    SpeedLimitStatus getSpeedLimitStatus();
}
