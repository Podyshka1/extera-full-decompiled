package com.yandex.mapkit.layers.internal;

import com.yandex.mapkit.layers.BaseDataSource;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class BaseDataSourceBinding implements BaseDataSource {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.layers.BaseDataSource
    public native String getId();

    @Override // com.yandex.mapkit.layers.BaseDataSource
    public native boolean isValid();

    public BaseDataSourceBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
