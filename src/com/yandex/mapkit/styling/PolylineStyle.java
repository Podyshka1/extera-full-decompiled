package com.yandex.mapkit.styling;

/* JADX INFO: loaded from: classes5.dex */
public interface PolylineStyle {
    boolean isValid();

    void setArcApproximationStep(float f);

    void setDashLength(float f);

    void setDashOffset(float f);

    void setGapLength(float f);

    void setInnerOutlineEnabled(boolean z);

    void setOutlineColor(int i);

    void setOutlineWidth(ProportionFunction proportionFunction);

    void setStrokeColor(int i);

    void setStrokeWidth(ProportionFunction proportionFunction);

    void setTurnRadius(float f);
}
