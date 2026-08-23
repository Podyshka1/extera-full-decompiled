package com.yandex.mapkit.traffic;

/* JADX INFO: loaded from: classes5.dex */
public interface TrafficLayer {
    void addTrafficListener(TrafficListener trafficListener);

    boolean isTrafficVisible();

    boolean isValid();

    void removeTrafficListener(TrafficListener trafficListener);

    void resetTrafficStyles();

    boolean setTrafficStyle(int i, String str);

    boolean setTrafficStyle(String str);

    void setTrafficVisible(boolean z);
}
