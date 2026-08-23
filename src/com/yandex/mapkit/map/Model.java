package com.yandex.mapkit.map;

import com.yandex.runtime.DataProviderWithId;

/* JADX INFO: loaded from: classes5.dex */
public interface Model {
    ModelStyle getModelStyle();

    boolean isValid();

    void setData(DataProviderWithId dataProviderWithId, Callback callback);

    void setModelStyle(ModelStyle modelStyle);
}
