package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.geometry.Circle;
import com.yandex.mapkit.map.CircleMapObject;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class CircleMapObjectBinding extends MapObjectBinding implements CircleMapObject {
    @Override // com.yandex.mapkit.map.CircleMapObject
    public native int getFillColor();

    @Override // com.yandex.mapkit.map.CircleMapObject
    public native Circle getGeometry();

    @Override // com.yandex.mapkit.map.CircleMapObject
    public native int getStrokeColor();

    @Override // com.yandex.mapkit.map.CircleMapObject
    public native float getStrokeWidth();

    @Override // com.yandex.mapkit.map.CircleMapObject
    public native boolean isGeodesic();

    @Override // com.yandex.mapkit.map.CircleMapObject
    public native void setFillColor(int i);

    @Override // com.yandex.mapkit.map.CircleMapObject
    public native void setGeodesic(boolean z);

    @Override // com.yandex.mapkit.map.CircleMapObject
    public native void setGeometry(Circle circle);

    @Override // com.yandex.mapkit.map.CircleMapObject
    public native void setStrokeColor(int i);

    @Override // com.yandex.mapkit.map.CircleMapObject
    public native void setStrokeWidth(float f);

    public CircleMapObjectBinding(NativeObject nativeObject) {
        super(nativeObject);
    }
}
