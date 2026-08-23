package com.yandex.mapkit.places.panorama.internal;

import com.yandex.mapkit.places.panorama.PanoramaLayer;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class PanoramaLayerBinding implements PanoramaLayer {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.places.panorama.PanoramaLayer
    public native boolean isValid();

    @Override // com.yandex.mapkit.places.panorama.PanoramaLayer
    public native void setAirshipPanoramaVisible(boolean z);

    @Override // com.yandex.mapkit.places.panorama.PanoramaLayer
    public native void setStreetPanoramaVisible(boolean z);

    public PanoramaLayerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
