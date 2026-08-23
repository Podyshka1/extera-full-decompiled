package com.yandex.mapkit.map;

import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.mapkit.geometry.Subpolyline;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface PolylineMapObject extends MapObject {
    Arrow addArrow(PolylinePosition polylinePosition, float f, int i);

    List<Arrow> arrows();

    @Deprecated
    float getArcApproximationStep();

    @Deprecated
    float getDashLength();

    @Deprecated
    float getDashOffset();

    @Deprecated
    float getGapLength();

    Polyline getGeometry();

    @Deprecated
    float getGradientLength();

    @Deprecated
    int getOutlineColor();

    @Deprecated
    float getOutlineWidth();

    int getPaletteColor(int i);

    int getStrokeColor(int i);

    @Deprecated
    float getStrokeWidth();

    LineStyle getStyle();

    @Deprecated
    float getTurnRadius();

    void hide(Subpolyline subpolyline);

    void hide(List<Subpolyline> list);

    @Deprecated
    boolean isInnerOutlineEnabled();

    void select(int i, Subpolyline subpolyline);

    @Deprecated
    void setArcApproximationStep(float f);

    @Deprecated
    void setDashLength(float f);

    @Deprecated
    void setDashOffset(float f);

    @Deprecated
    void setGapLength(float f);

    void setGeometry(Polyline polyline);

    @Deprecated
    void setGradientLength(float f);

    @Deprecated
    void setInnerOutlineEnabled(boolean z);

    @Deprecated
    void setOutlineColor(int i);

    @Deprecated
    void setOutlineWidth(float f);

    void setPaletteColor(int i, int i2);

    void setStrokeColor(int i);

    void setStrokeColors(List<Integer> list);

    void setStrokeColors(List<Integer> list, List<Double> list2);

    @Deprecated
    void setStrokeWidth(float f);

    void setStyle(LineStyle lineStyle);

    @Deprecated
    void setTurnRadius(float f);
}
