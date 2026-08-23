package com.yandex.mapkit.geometry;

/* JADX INFO: loaded from: classes5.dex */
public interface PolylineBuilder {
    void append(Point point);

    void append(Polyline polyline);

    Polyline build();
}
