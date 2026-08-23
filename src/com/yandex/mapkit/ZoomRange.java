package com.yandex.mapkit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ZoomRange implements Serializable {
    private int zMax;
    private int zMin;

    public ZoomRange(int i, int i2) {
        this.zMin = i;
        this.zMax = i2;
    }

    public ZoomRange() {
    }

    public int getZMin() {
        return this.zMin;
    }

    public int getZMax() {
        return this.zMax;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.zMin = archive.add(this.zMin);
        this.zMax = archive.add(this.zMax);
    }
}
