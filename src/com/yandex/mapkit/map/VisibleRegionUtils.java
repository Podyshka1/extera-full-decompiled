package com.yandex.mapkit.map;

import com.yandex.mapkit.geometry.BoundingBox;
import com.yandex.mapkit.geometry.Geometry;

/* JADX INFO: loaded from: classes5.dex */
public class VisibleRegionUtils {
    public static native BoundingBox getBounds(VisibleRegion visibleRegion);

    public static native Geometry toPolygon(VisibleRegion visibleRegion);
}
