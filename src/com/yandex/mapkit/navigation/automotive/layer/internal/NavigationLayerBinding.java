package com.yandex.mapkit.navigation.automotive.layer.internal;

import com.yandex.mapkit.directions.driving.DrivingRoute;
import com.yandex.mapkit.navigation.automotive.Navigation;
import com.yandex.mapkit.navigation.automotive.layer.BalloonViewListener;
import com.yandex.mapkit.navigation.automotive.layer.NavigationLayer;
import com.yandex.mapkit.navigation.automotive.layer.NavigationLayerListener;
import com.yandex.mapkit.navigation.automotive.layer.NavigationLayerMode;
import com.yandex.mapkit.navigation.automotive.layer.NavigationLayerPlacemarkTapListener;
import com.yandex.mapkit.navigation.automotive.layer.RequestPointListener;
import com.yandex.mapkit.navigation.automotive.layer.RouteView;
import com.yandex.mapkit.navigation.automotive.layer.RouteViewListener;
import com.yandex.mapkit.navigation.guidance_camera.Camera;
import com.yandex.mapkit.road_events.EventTag;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class NavigationLayerBinding implements NavigationLayer {
    private final NativeObject nativeObject;
    protected Subscription<BalloonViewListener> balloonViewListenerSubscription = new Subscription<BalloonViewListener>() { // from class: com.yandex.mapkit.navigation.automotive.layer.internal.NavigationLayerBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(BalloonViewListener balloonViewListener) {
            return NavigationLayerBinding.createBalloonViewListener(balloonViewListener);
        }
    };
    protected Subscription<NavigationLayerListener> navigationLayerListenerSubscription = new Subscription<NavigationLayerListener>() { // from class: com.yandex.mapkit.navigation.automotive.layer.internal.NavigationLayerBinding.2
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(NavigationLayerListener navigationLayerListener) {
            return NavigationLayerBinding.createNavigationLayerListener(navigationLayerListener);
        }
    };
    protected Subscription<NavigationLayerPlacemarkTapListener> navigationLayerPlacemarkTapListenerSubscription = new Subscription<NavigationLayerPlacemarkTapListener>() { // from class: com.yandex.mapkit.navigation.automotive.layer.internal.NavigationLayerBinding.3
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(NavigationLayerPlacemarkTapListener navigationLayerPlacemarkTapListener) {
            return NavigationLayerBinding.createNavigationLayerPlacemarkTapListener(navigationLayerPlacemarkTapListener);
        }
    };
    protected Subscription<RequestPointListener> requestPointListenerSubscription = new Subscription<RequestPointListener>() { // from class: com.yandex.mapkit.navigation.automotive.layer.internal.NavigationLayerBinding.4
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(RequestPointListener requestPointListener) {
            return NavigationLayerBinding.createRequestPointListener(requestPointListener);
        }
    };
    protected Subscription<RouteViewListener> routeViewListenerSubscription = new Subscription<RouteViewListener>() { // from class: com.yandex.mapkit.navigation.automotive.layer.internal.NavigationLayerBinding.5
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(RouteViewListener routeViewListener) {
            return NavigationLayerBinding.createRouteViewListener(routeViewListener);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createBalloonViewListener(BalloonViewListener balloonViewListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createNavigationLayerListener(NavigationLayerListener navigationLayerListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createNavigationLayerPlacemarkTapListener(NavigationLayerPlacemarkTapListener navigationLayerPlacemarkTapListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createRequestPointListener(RequestPointListener requestPointListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createRouteViewListener(RouteViewListener routeViewListener);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void addBalloonViewListener(BalloonViewListener balloonViewListener);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void addListener(NavigationLayerListener navigationLayerListener);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void addPlacemarkTapListener(NavigationLayerPlacemarkTapListener navigationLayerPlacemarkTapListener);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void addRequestPointListener(RequestPointListener requestPointListener);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void addRouteViewListener(RouteViewListener routeViewListener);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void deselectRequestPoint();

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void deselectRoadEvent();

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native Camera getCamera();

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native NavigationLayerMode getMode();

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native Navigation getNavigation();

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native List<RouteView> getRoutes();

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native RouteView getView(DrivingRoute drivingRoute);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native boolean is2DMode();

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native boolean isIsVisible();

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native boolean isShowRequestPoints();

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native boolean isValid();

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void refreshStyle();

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void removeBalloonViewListener(BalloonViewListener balloonViewListener);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void removeFromMap();

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void removeListener(NavigationLayerListener navigationLayerListener);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void removePlacemarkTapListener(NavigationLayerPlacemarkTapListener navigationLayerPlacemarkTapListener);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void removeRequestPointListener(RequestPointListener requestPointListener);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void removeRouteViewListener(RouteViewListener routeViewListener);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void selectRequestPoint(int i);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void selectRoadEvent(String str);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void selectRoute(RouteView routeView);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native RouteView selectedRoute();

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void set2DMode(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void setIsVisible(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void setRoadEventVisibleOnRoute(EventTag eventTag, boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void setShowBalloonsGeometry(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.NavigationLayer
    public native void setShowRequestPoints(boolean z);

    public NavigationLayerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
