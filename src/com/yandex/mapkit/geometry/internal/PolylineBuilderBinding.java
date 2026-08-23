package com.yandex.mapkit.geometry.internal;

import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.geometry.PolylineBuilder;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class PolylineBuilderBinding implements PolylineBuilder {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.geometry.PolylineBuilder
    public native void append(Point point);

    @Override // com.yandex.mapkit.geometry.PolylineBuilder
    public native void append(Polyline polyline);

    @Override // com.yandex.mapkit.geometry.PolylineBuilder
    public native Polyline build();

    public PolylineBuilderBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
