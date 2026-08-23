package com.yandex.mapkit.directions.carparks.internal;

import com.yandex.mapkit.directions.carparks.CarparksLayer;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class CarparksLayerBinding implements CarparksLayer {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.directions.carparks.CarparksLayer
    public native boolean isValid();

    @Override // com.yandex.mapkit.directions.carparks.CarparksLayer
    public native boolean isVisible();

    @Override // com.yandex.mapkit.directions.carparks.CarparksLayer
    public native void resetCarparksStyles();

    @Override // com.yandex.mapkit.directions.carparks.CarparksLayer
    public native boolean setCarparksStyle(int i, String str);

    @Override // com.yandex.mapkit.directions.carparks.CarparksLayer
    public native boolean setCarparksStyle(String str);

    @Override // com.yandex.mapkit.directions.carparks.CarparksLayer
    public native void setVisible(boolean z);

    public CarparksLayerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
