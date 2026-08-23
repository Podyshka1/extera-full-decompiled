package com.yandex.mapkit.layers.internal;

import com.yandex.mapkit.layers.TileDataSource;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class TileDataSourceBinding extends BaseDataSourceBinding implements TileDataSource {
    @Override // com.yandex.mapkit.layers.TileDataSource
    public native void invalidate(String str);

    public TileDataSourceBinding(NativeObject nativeObject) {
        super(nativeObject);
    }
}
