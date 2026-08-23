package com.yandex.mapkit.navigation.automotive.custom_route_navigation.internal;

import com.yandex.mapkit.directions.driving.DrivingRoute;
import com.yandex.mapkit.map.MapWindow;
import com.yandex.mapkit.navigation.automotive.Navigation;
import com.yandex.mapkit.navigation.automotive.custom_route_navigation.CustomRouteNavigation;
import com.yandex.mapkit.navigation.guidance_camera.Camera;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class CustomRouteNavigationBinding implements CustomRouteNavigation {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.navigation.automotive.custom_route_navigation.CustomRouteNavigation
    public native Camera createCamera(MapWindow mapWindow);

    @Override // com.yandex.mapkit.navigation.automotive.custom_route_navigation.CustomRouteNavigation
    public native Navigation getNavigation();

    @Override // com.yandex.mapkit.navigation.automotive.custom_route_navigation.CustomRouteNavigation
    public native void startGuidance(DrivingRoute drivingRoute);

    public CustomRouteNavigationBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
