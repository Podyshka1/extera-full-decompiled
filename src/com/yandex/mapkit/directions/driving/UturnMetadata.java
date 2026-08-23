package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class UturnMetadata implements Serializable {
    private double length;

    public UturnMetadata(double d) {
        this.length = d;
    }

    public UturnMetadata() {
    }

    public double getLength() {
        return this.length;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.length = archive.add(this.length);
    }
}
