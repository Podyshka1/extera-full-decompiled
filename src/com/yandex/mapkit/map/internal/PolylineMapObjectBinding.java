package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.mapkit.geometry.Subpolyline;
import com.yandex.mapkit.map.Arrow;
import com.yandex.mapkit.map.LineStyle;
import com.yandex.mapkit.map.PolylineMapObject;
import com.yandex.runtime.NativeObject;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class PolylineMapObjectBinding extends MapObjectBinding implements PolylineMapObject {
    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native Arrow addArrow(PolylinePosition polylinePosition, float f, int i);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native List<Arrow> arrows();

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native float getArcApproximationStep();

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native float getDashLength();

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native float getDashOffset();

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native float getGapLength();

    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native Polyline getGeometry();

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native float getGradientLength();

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native int getOutlineColor();

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native float getOutlineWidth();

    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native int getPaletteColor(int i);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native int getStrokeColor(int i);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native float getStrokeWidth();

    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native LineStyle getStyle();

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native float getTurnRadius();

    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native void hide(Subpolyline subpolyline);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native void hide(List<Subpolyline> list);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native boolean isInnerOutlineEnabled();

    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native void select(int i, Subpolyline subpolyline);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native void setArcApproximationStep(float f);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native void setDashLength(float f);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native void setDashOffset(float f);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native void setGapLength(float f);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native void setGeometry(Polyline polyline);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native void setGradientLength(float f);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native void setInnerOutlineEnabled(boolean z);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native void setOutlineColor(int i);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native void setOutlineWidth(float f);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native void setPaletteColor(int i, int i2);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native void setStrokeColor(int i);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native void setStrokeColors(List<Integer> list);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native void setStrokeColors(List<Integer> list, List<Double> list2);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native void setStrokeWidth(float f);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    public native void setStyle(LineStyle lineStyle);

    @Override // com.yandex.mapkit.map.PolylineMapObject
    @Deprecated
    public native void setTurnRadius(float f);

    public PolylineMapObjectBinding(NativeObject nativeObject) {
        super(nativeObject);
    }
}
