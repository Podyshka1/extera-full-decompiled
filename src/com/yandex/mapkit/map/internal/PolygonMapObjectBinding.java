package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.geometry.Polygon;
import com.yandex.mapkit.map.PolygonMapObject;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.image.AnimatedImageProvider;
import com.yandex.runtime.image.ImageProvider;

/* JADX INFO: loaded from: classes5.dex */
public class PolygonMapObjectBinding extends MapObjectBinding implements PolygonMapObject {
    @Override // com.yandex.mapkit.map.PolygonMapObject
    public native int getFillColor();

    @Override // com.yandex.mapkit.map.PolygonMapObject
    public native Polygon getGeometry();

    @Override // com.yandex.mapkit.map.PolygonMapObject
    public native int getStrokeColor();

    @Override // com.yandex.mapkit.map.PolygonMapObject
    public native float getStrokeWidth();

    @Override // com.yandex.mapkit.map.PolygonMapObject
    public native boolean isGeodesic();

    @Override // com.yandex.mapkit.map.PolygonMapObject
    public native void resetPattern();

    @Override // com.yandex.mapkit.map.PolygonMapObject
    public native void setFillColor(int i);

    @Override // com.yandex.mapkit.map.PolygonMapObject
    public native void setGeodesic(boolean z);

    @Override // com.yandex.mapkit.map.PolygonMapObject
    public native void setGeometry(Polygon polygon);

    @Override // com.yandex.mapkit.map.PolygonMapObject
    public native void setPattern(AnimatedImageProvider animatedImageProvider, float f);

    @Override // com.yandex.mapkit.map.PolygonMapObject
    public native void setPattern(ImageProvider imageProvider, float f);

    @Override // com.yandex.mapkit.map.PolygonMapObject
    public native void setStrokeColor(int i);

    @Override // com.yandex.mapkit.map.PolygonMapObject
    public native void setStrokeWidth(float f);

    public PolygonMapObjectBinding(NativeObject nativeObject) {
        super(nativeObject);
    }
}
