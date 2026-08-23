package com.yandex.mapkit.styling.internal;

import com.yandex.mapkit.styling.PolylineStyle;
import com.yandex.mapkit.styling.ProportionFunction;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class PolylineStyleBinding implements PolylineStyle {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.styling.PolylineStyle
    public native boolean isValid();

    @Override // com.yandex.mapkit.styling.PolylineStyle
    public native void setArcApproximationStep(float f);

    @Override // com.yandex.mapkit.styling.PolylineStyle
    public native void setDashLength(float f);

    @Override // com.yandex.mapkit.styling.PolylineStyle
    public native void setDashOffset(float f);

    @Override // com.yandex.mapkit.styling.PolylineStyle
    public native void setGapLength(float f);

    @Override // com.yandex.mapkit.styling.PolylineStyle
    public native void setInnerOutlineEnabled(boolean z);

    @Override // com.yandex.mapkit.styling.PolylineStyle
    public native void setOutlineColor(int i);

    @Override // com.yandex.mapkit.styling.PolylineStyle
    public native void setOutlineWidth(ProportionFunction proportionFunction);

    @Override // com.yandex.mapkit.styling.PolylineStyle
    public native void setStrokeColor(int i);

    @Override // com.yandex.mapkit.styling.PolylineStyle
    public native void setStrokeWidth(ProportionFunction proportionFunction);

    @Override // com.yandex.mapkit.styling.PolylineStyle
    public native void setTurnRadius(float f);

    public PolylineStyleBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
