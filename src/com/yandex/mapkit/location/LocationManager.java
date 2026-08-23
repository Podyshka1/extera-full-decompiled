package com.yandex.mapkit.location;

/* JADX INFO: loaded from: classes5.dex */
public interface LocationManager {
    void requestSingleUpdate(LocationListener locationListener);

    void resume();

    void subscribeForLocationUpdates(SubscriptionSettings subscriptionSettings, LocationListener locationListener);

    void suspend();

    void unsubscribe(LocationListener locationListener);
}
