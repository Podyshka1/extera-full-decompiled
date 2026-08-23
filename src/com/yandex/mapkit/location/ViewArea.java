package com.yandex.mapkit.location;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ViewArea implements Serializable {
    private double lengthwise;
    private double transverse;

    public ViewArea(double d, double d2) {
        this.lengthwise = d;
        this.transverse = d2;
    }

    public ViewArea() {
    }

    public double getLengthwise() {
        return this.lengthwise;
    }

    public double getTransverse() {
        return this.transverse;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.lengthwise = archive.add(this.lengthwise);
        this.transverse = archive.add(this.transverse);
    }
}
