package com.yandex.mapkit.navigation.automotive;

import com.yandex.mapkit.LocalizedValue;
import com.yandex.mapkit.directions.driving.DrivingRoute;
import com.yandex.mapkit.location.Location;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface Guidance {
    void addListener(GuidanceListener guidanceListener);

    List<Alternative> getAlternatives();

    Annotator getAnnotator();

    DrivingRoute getCurrentRoute();

    Alternative getFastestAlternative();

    Location getLocation();

    LocationClass getLocationClass();

    String getRoadName();

    RouteStatus getRouteStatus();

    LocalizedValue getSpeedLimit();

    SpeedLimitStatus getSpeedLimitStatus();

    double getSpeedLimitTolerance();

    SpeedLimitsPolicy getSpeedLimitsPolicy();

    Windshield getWindshield();

    boolean isEnableAlternatives();

    boolean isEnableReroutes();

    boolean isValid();

    void removeListener(GuidanceListener guidanceListener);

    void setEnableAlternatives(boolean z);

    void setEnableReroutes(boolean z);

    void setSpeedLimitTolerance(double d);

    void switchToRoute(DrivingRoute drivingRoute);
}
