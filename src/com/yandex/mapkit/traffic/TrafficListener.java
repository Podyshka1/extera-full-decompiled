package com.yandex.mapkit.traffic;

/* JADX INFO: loaded from: classes5.dex */
public interface TrafficListener {
    void onTrafficChanged(TrafficLevel trafficLevel);

    void onTrafficExpired();

    void onTrafficLoading();
}
