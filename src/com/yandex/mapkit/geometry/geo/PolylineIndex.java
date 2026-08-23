package com.yandex.mapkit.geometry.geo;

import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.geometry.PolylinePosition;

/* JADX INFO: loaded from: classes5.dex */
public interface PolylineIndex {

    public enum Priority {
        CLOSEST_TO_RAW_POINT,
        CLOSEST_TO_START
    }

    PolylinePosition closestPolylinePosition(Point point, PolylinePosition polylinePosition, PolylinePosition polylinePosition2, double d);

    PolylinePosition closestPolylinePosition(Point point, Priority priority, double d);
}
