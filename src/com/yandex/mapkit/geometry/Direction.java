package com.yandex.mapkit.geometry;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class Direction implements Serializable {
    private double azimuth;
    private double tilt;

    public Direction(double d, double d2) {
        this.azimuth = d;
        this.tilt = d2;
    }

    public Direction() {
    }

    public double getAzimuth() {
        return this.azimuth;
    }

    public double getTilt() {
        return this.tilt;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.azimuth = archive.add(this.azimuth);
        this.tilt = archive.add(this.tilt);
    }
}
