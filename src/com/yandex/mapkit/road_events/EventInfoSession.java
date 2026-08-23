package com.yandex.mapkit.road_events;

import com.yandex.mapkit.GeoObject;
import com.yandex.runtime.Error;

/* JADX INFO: loaded from: classes5.dex */
public interface EventInfoSession {

    public interface EventInfoListener {
        void onEventInfoError(Error error);

        void onEventInfoReceived(GeoObject geoObject);
    }

    void cancel();

    void retry(EventInfoListener eventInfoListener);
}
