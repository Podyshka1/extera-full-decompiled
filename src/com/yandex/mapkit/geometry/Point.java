package com.yandex.mapkit.geometry;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class Point implements Serializable {
    private double latitude;
    private double longitude;

    public Point(double d, double d2) {
        this.latitude = d;
        this.longitude = d2;
    }

    public Point() {
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.latitude = archive.add(this.latitude);
        this.longitude = archive.add(this.longitude);
    }
}
