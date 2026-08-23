package com.yandex.mapkit.geometry.geo;

import com.yandex.mapkit.geometry.Point;

/* JADX INFO: loaded from: classes5.dex */
public interface Projection {
    boolean isValid();

    XYPoint worldToXY(Point point, int i);

    Point xyToWorld(XYPoint xYPoint, int i);
}
