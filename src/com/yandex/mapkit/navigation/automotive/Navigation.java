package com.yandex.mapkit.navigation.automotive;

import com.yandex.mapkit.RequestPoint;
import com.yandex.mapkit.annotations.AnnotationLanguage;
import com.yandex.mapkit.directions.driving.AvoidanceFlags;
import com.yandex.mapkit.directions.driving.DrivingRoute;
import com.yandex.mapkit.directions.driving.VehicleOptions;
import com.yandex.mapkit.geometry.LinearRing;
import com.yandex.mapkit.geometry.Polyline;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface Navigation {
    void addListener(NavigationListener navigationListener);

    void cancelRequest();

    AnnotationLanguage getAnnotationLanguage();

    AvoidanceFlags getAvoidanceFlags();

    List<LinearRing> getAvoidedZones();

    Guidance getGuidance();

    List<DrivingRoute> getRoutes();

    VehicleOptions getVehicleOptions();

    void matchRoute(Polyline polyline);

    void removeListener(NavigationListener navigationListener);

    void requestAlternatives();

    void requestRoutes(List<RequestPoint> list, RouteOptions routeOptions);

    void resetRoutes();

    void resolveUri(String str);

    void resume();

    void setAnnotationLanguage(AnnotationLanguage annotationLanguage);

    void setAvoidanceFlags(AvoidanceFlags avoidanceFlags);

    void setAvoidedZones(List<LinearRing> list);

    void setVehicleOptions(VehicleOptions vehicleOptions);

    void startGuidance(DrivingRoute drivingRoute);

    void stopGuidance();

    void suspend();
}
