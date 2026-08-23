package com.yandex.mapkit.layers.internal;

import com.yandex.mapkit.layers.DataSourceLayer;
import com.yandex.mapkit.layers.Layer;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class LayerBinding implements Layer {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.layers.Layer
    public native DataSourceLayer dataSourceLayer();

    @Override // com.yandex.mapkit.layers.Layer
    public native boolean isValid();

    @Override // com.yandex.mapkit.layers.Layer
    public native void remove();

    public LayerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
