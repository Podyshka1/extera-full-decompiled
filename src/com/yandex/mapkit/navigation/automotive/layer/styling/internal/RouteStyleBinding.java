package com.yandex.mapkit.navigation.automotive.layer.styling.internal;

import com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class RouteStyleBinding implements RouteStyle {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle
    public native boolean isValid();

    @Override // com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle
    public native void setMinZoomForTransparentRoutes(float f);

    @Override // com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle
    public native void setShowBalloons(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle
    public native void setShowCheckpoints(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle
    public native void setShowJams(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle
    public native void setShowManoeuvres(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle
    public native void setShowRailwayCrossings(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle
    public native void setShowRestrictedEntries(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle
    public native void setShowRoadEvents(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle
    public native void setShowRoadsInPoorCondition(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle
    public native void setShowRoute(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle
    public native void setShowSpeedBumps(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle
    public native void setShowTollRoads(boolean z);

    @Override // com.yandex.mapkit.navigation.automotive.layer.styling.RouteStyle
    public native void setShowTrafficLights(boolean z);

    public RouteStyleBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
