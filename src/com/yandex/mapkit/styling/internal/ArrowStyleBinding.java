package com.yandex.mapkit.styling.internal;

import com.yandex.mapkit.styling.ArrowStyle;
import com.yandex.mapkit.styling.ProportionFunction;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class ArrowStyleBinding implements ArrowStyle {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.styling.ArrowStyle
    public native boolean isValid();

    @Override // com.yandex.mapkit.styling.ArrowStyle
    public native void setFillColor(int i);

    @Override // com.yandex.mapkit.styling.ArrowStyle
    public native void setLength(ProportionFunction proportionFunction);

    @Override // com.yandex.mapkit.styling.ArrowStyle
    public native void setMinZoomVisible(Float f);

    @Override // com.yandex.mapkit.styling.ArrowStyle
    public native void setOutlineColor(int i);

    @Override // com.yandex.mapkit.styling.ArrowStyle
    public native void setOutlineWidth(ProportionFunction proportionFunction);

    @Override // com.yandex.mapkit.styling.ArrowStyle
    public native void setTriangleHeight(ProportionFunction proportionFunction);

    public ArrowStyleBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
