package com.yandex.mapkit.geometry.geo;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class XYPoint implements Serializable {

    /* JADX INFO: renamed from: x */
    private double f616x;

    /* JADX INFO: renamed from: y */
    private double f617y;

    public XYPoint(double d, double d2) {
        this.f616x = d;
        this.f617y = d2;
    }

    public XYPoint() {
    }

    public double getX() {
        return this.f616x;
    }

    public double getY() {
        return this.f617y;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.f616x = archive.add(this.f616x);
        this.f617y = archive.add(this.f617y);
    }
}
