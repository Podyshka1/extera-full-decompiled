package com.yandex.mapkit.navigation.automotive.layer;

import com.yandex.mapkit.directions.driving.DrivingRoute;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface RouteView {
    List<BalloonView> getBalloonViews();

    DrivingRoute getRoute();

    boolean isValid();
}
