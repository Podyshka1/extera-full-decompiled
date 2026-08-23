package com.yandex.mapkit.geometry.geo.internal;

import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.mapkit.geometry.geo.PolylineIndex;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class PolylineIndexBinding implements PolylineIndex {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.geometry.geo.PolylineIndex
    public native PolylinePosition closestPolylinePosition(Point point, PolylinePosition polylinePosition, PolylinePosition polylinePosition2, double d);

    @Override // com.yandex.mapkit.geometry.geo.PolylineIndex
    public native PolylinePosition closestPolylinePosition(Point point, PolylineIndex.Priority priority, double d);

    public PolylineIndexBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
