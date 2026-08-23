package com.yandex.mapkit.navigation.automotive.layer;

import com.yandex.mapkit.directions.driving.DrivingRoute;
import com.yandex.mapkit.navigation.automotive.Navigation;
import com.yandex.mapkit.navigation.guidance_camera.Camera;
import com.yandex.mapkit.road_events.EventTag;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface NavigationLayer {
    void addBalloonViewListener(BalloonViewListener balloonViewListener);

    void addListener(NavigationLayerListener navigationLayerListener);

    void addPlacemarkTapListener(NavigationLayerPlacemarkTapListener navigationLayerPlacemarkTapListener);

    void addRequestPointListener(RequestPointListener requestPointListener);

    void addRouteViewListener(RouteViewListener routeViewListener);

    void deselectRequestPoint();

    void deselectRoadEvent();

    Camera getCamera();

    NavigationLayerMode getMode();

    Navigation getNavigation();

    List<RouteView> getRoutes();

    RouteView getView(DrivingRoute drivingRoute);

    boolean is2DMode();

    boolean isIsVisible();

    boolean isShowRequestPoints();

    boolean isValid();

    void refreshStyle();

    void removeBalloonViewListener(BalloonViewListener balloonViewListener);

    void removeFromMap();

    void removeListener(NavigationLayerListener navigationLayerListener);

    void removePlacemarkTapListener(NavigationLayerPlacemarkTapListener navigationLayerPlacemarkTapListener);

    void removeRequestPointListener(RequestPointListener requestPointListener);

    void removeRouteViewListener(RouteViewListener routeViewListener);

    void selectRequestPoint(int i);

    void selectRoadEvent(String str);

    void selectRoute(RouteView routeView);

    RouteView selectedRoute();

    void set2DMode(boolean z);

    void setIsVisible(boolean z);

    void setRoadEventVisibleOnRoute(EventTag eventTag, boolean z);

    void setShowBalloonsGeometry(boolean z);

    void setShowRequestPoints(boolean z);
}
