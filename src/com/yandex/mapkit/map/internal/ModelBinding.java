package com.yandex.mapkit.map.internal;

import com.yandex.mapkit.map.Callback;
import com.yandex.mapkit.map.Model;
import com.yandex.mapkit.map.ModelStyle;
import com.yandex.runtime.DataProviderWithId;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class ModelBinding implements Model {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.map.Model
    public native ModelStyle getModelStyle();

    @Override // com.yandex.mapkit.map.Model
    public native boolean isValid();

    @Override // com.yandex.mapkit.map.Model
    public native void setData(DataProviderWithId dataProviderWithId, Callback callback);

    @Override // com.yandex.mapkit.map.Model
    public native void setModelStyle(ModelStyle modelStyle);

    public ModelBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
