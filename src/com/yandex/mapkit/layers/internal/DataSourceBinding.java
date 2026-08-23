package com.yandex.mapkit.layers.internal;

import com.yandex.mapkit.layers.DataSource;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class DataSourceBinding extends BaseDataSourceBinding implements DataSource {
    @Override // com.yandex.mapkit.layers.DataSource
    public native void setData(byte[] bArr);

    public DataSourceBinding(NativeObject nativeObject) {
        super(nativeObject);
    }
}
