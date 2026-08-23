package com.yandex.mapkit.geometry.geo;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class XYPoint implements Serializable {

    /* JADX INFO: renamed from: x */
    private double f453x;

    /* JADX INFO: renamed from: y */
    private double f454y;

    public XYPoint(double d, double d2) {
        this.f453x = d;
        this.f454y = d2;
    }

    public XYPoint() {
    }

    public double getX() {
        return this.f453x;
    }

    public double getY() {
        return this.f454y;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.f453x = archive.add(this.f453x);
        this.f454y = archive.add(this.f454y);
    }
}
