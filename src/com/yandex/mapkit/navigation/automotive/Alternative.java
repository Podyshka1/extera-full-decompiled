package com.yandex.mapkit.navigation.automotive;

import com.yandex.mapkit.directions.driving.DrivingRoute;
import com.yandex.mapkit.navigation.RoutePosition;

/* JADX INFO: loaded from: classes5.dex */
public interface Alternative {
    DrivingRoute getAlternative();

    RoutePosition getForkPositionOnAlternative();

    RoutePosition getForkPositionOnCurrentRoute();
}
