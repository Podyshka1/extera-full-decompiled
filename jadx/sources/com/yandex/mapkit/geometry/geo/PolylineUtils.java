package com.yandex.mapkit.geometry.geo;

import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.geometry.PolylinePosition;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class PolylineUtils {
    public static native PolylinePosition advancePolylinePosition(Polyline polyline, PolylinePosition polylinePosition, double d);

    public static native PolylineIndex createPolylineIndex(Polyline polyline);

    public static native double distanceBetweenPolylinePositions(Polyline polyline, PolylinePosition polylinePosition, PolylinePosition polylinePosition2);

    public static native Point pointByPolylinePosition(Polyline polyline, PolylinePosition polylinePosition);

    public static native List<PolylinePosition> positionsOfFork(Polyline polyline, PolylinePosition polylinePosition, Polyline polyline2, PolylinePosition polylinePosition2);
}
