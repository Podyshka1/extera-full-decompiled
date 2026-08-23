package com.yandex.mapkit.layers.internal;

import com.yandex.mapkit.layers.DataSourceLayer;
import com.yandex.mapkit.layers.DataSourceListener;
import com.yandex.mapkit.layers.LayerLoadedListener;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.subscription.Subscription;

/* JADX INFO: loaded from: classes5.dex */
public class DataSourceLayerBinding implements DataSourceLayer {
    protected Subscription<DataSourceListener> dataSourceListenerSubscription = new Subscription<DataSourceListener>() { // from class: com.yandex.mapkit.layers.internal.DataSourceLayerBinding.1
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(DataSourceListener dataSourceListener) {
            return DataSourceLayerBinding.createDataSourceListener(dataSourceListener);
        }
    };
    protected Subscription<LayerLoadedListener> layerLoadedListenerSubscription = new Subscription<LayerLoadedListener>() { // from class: com.yandex.mapkit.layers.internal.DataSourceLayerBinding.2
        @Override // com.yandex.runtime.subscription.Subscription
        public NativeObject createNativeListener(LayerLoadedListener layerLoadedListener) {
            return DataSourceLayerBinding.createLayerLoadedListener(layerLoadedListener);
        }
    };
    private final NativeObject nativeObject;

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createDataSourceListener(DataSourceListener dataSourceListener);

    /* JADX INFO: Access modifiers changed from: private */
    public static native NativeObject createLayerLoadedListener(LayerLoadedListener layerLoadedListener);

    @Override // com.yandex.mapkit.layers.DataSourceLayer
    public native void clear();

    @Override // com.yandex.mapkit.layers.DataSourceLayer
    public native boolean isActive();

    @Override // com.yandex.mapkit.layers.DataSourceLayer
    public native boolean isValid();

    @Override // com.yandex.mapkit.layers.DataSourceLayer
    public native void remove();

    @Override // com.yandex.mapkit.layers.DataSourceLayer
    public native void resetStyles();

    @Override // com.yandex.mapkit.layers.DataSourceLayer
    public native void setActive(boolean z);

    @Override // com.yandex.mapkit.layers.DataSourceLayer
    public native void setDataSourceListener(DataSourceListener dataSourceListener);

    @Override // com.yandex.mapkit.layers.DataSourceLayer
    public native void setLayerLoadedListener(LayerLoadedListener layerLoadedListener);

    @Override // com.yandex.mapkit.layers.DataSourceLayer
    public native boolean setStyle(int i, String str);

    public DataSourceLayerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
