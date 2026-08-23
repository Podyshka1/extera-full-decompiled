package com.yandex.mapkit.directions.driving;

import com.yandex.mapkit.map.PolylineMapObject;
import com.yandex.mapkit.navigation.JamStyle;

/* JADX INFO: loaded from: classes5.dex */
public class RouteHelper {
    public static native void addJams(PolylineMapObject polylineMapObject, DrivingRoute drivingRoute);

    public static native void addManeuvers(PolylineMapObject polylineMapObject, DrivingRoute drivingRoute);

    public static native void applyJamStyle(PolylineMapObject polylineMapObject, JamStyle jamStyle);

    public static native void applyManeuverStyle(PolylineMapObject polylineMapObject, ManeuverStyle maneuverStyle);

    public static native JamStyle createDefaultJamStyle();

    public static native ManeuverStyle createDefaultManeuverStyle();

    public static native JamStyle createDisabledJamStyle();

    public static native void updatePolyline(PolylineMapObject polylineMapObject, DrivingRoute drivingRoute, JamStyle jamStyle, boolean z);
}
