package com.yandex.mapkit.layers;

/* JADX INFO: loaded from: classes5.dex */
public interface DataSourceLayer {
    void clear();

    boolean isActive();

    boolean isValid();

    void remove();

    void resetStyles();

    void setActive(boolean z);

    void setDataSourceListener(DataSourceListener dataSourceListener);

    void setLayerLoadedListener(LayerLoadedListener layerLoadedListener);

    boolean setStyle(int i, String str);
}
