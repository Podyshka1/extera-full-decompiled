package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ElevationPoint implements Serializable {
    private float elevation;

    public ElevationPoint(float f) {
        this.elevation = f;
    }

    public ElevationPoint() {
    }

    public float getElevation() {
        return this.elevation;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.elevation = archive.add(this.elevation);
    }
}
