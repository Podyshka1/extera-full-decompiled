package com.yandex.mapkit.navigation.automotive.internal;

import com.yandex.mapkit.RequestPoint;
import com.yandex.mapkit.annotations.AnnotationLanguage;
import com.yandex.mapkit.directions.driving.AvoidanceFlags;
import com.yandex.mapkit.directions.driving.DrivingRoute;
import com.yandex.mapkit.directions.driving.VehicleOptions;
import com.yandex.mapkit.geometry.LinearRing;
import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.navigation.automotive.Guidance;
import com.yandex.mapkit.navigation.automotive.Navigation;
import com.yandex.mapkit.navigation.automotive.NavigationListener;
import com.yandex.mapkit.navigation.automotive.RouteOptions;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class NavigationBinding implements Navigation {
    private final NativeObject nativeObject;
    protected Subscription<NavigationListener> navigationListenerSubscription = new Subscription<NavigationListener>() { // from class: com.yandex.mapkit.navigation.automotive.internal.NavigationBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(NavigationListener navigationListener) {
            return NavigationBinding.createNavigationListener(navigationListener);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createNavigationListener(NavigationListener navigationListener);

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void addListener(NavigationListener navigationListener);

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void cancelRequest();

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native AnnotationLanguage getAnnotationLanguage();

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native AvoidanceFlags getAvoidanceFlags();

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native List<LinearRing> getAvoidedZones();

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native Guidance getGuidance();

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native List<DrivingRoute> getRoutes();

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native VehicleOptions getVehicleOptions();

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void matchRoute(Polyline polyline);

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void removeListener(NavigationListener navigationListener);

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void requestAlternatives();

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void requestRoutes(List<RequestPoint> list, RouteOptions routeOptions);

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void resetRoutes();

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void resolveUri(String str);

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void resume();

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void setAnnotationLanguage(AnnotationLanguage annotationLanguage);

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void setAvoidanceFlags(AvoidanceFlags avoidanceFlags);

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void setAvoidedZones(List<LinearRing> list);

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void setVehicleOptions(VehicleOptions vehicleOptions);

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void startGuidance(DrivingRoute drivingRoute);

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void stopGuidance();

    @Override // com.yandex.mapkit.navigation.automotive.Navigation
    public native void suspend();

    public NavigationBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
