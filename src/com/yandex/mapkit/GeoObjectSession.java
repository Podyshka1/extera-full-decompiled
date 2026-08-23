package com.yandex.mapkit;

import com.yandex.runtime.Error;

/* JADX INFO: loaded from: classes5.dex */
public interface GeoObjectSession {

    public interface GeoObjectListener {
        void onGeoObjectError(Error error);

        void onGeoObjectResult(GeoObject geoObject);
    }

    void cancel();

    void retry(GeoObjectListener geoObjectListener);
}
