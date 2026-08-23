package com.yandex.mapkit.geometry;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class PolylinePosition implements Serializable {
    private int segmentIndex;
    private double segmentPosition;

    public PolylinePosition(int i, double d) {
        this.segmentIndex = i;
        this.segmentPosition = d;
    }

    public PolylinePosition() {
    }

    public int getSegmentIndex() {
        return this.segmentIndex;
    }

    public double getSegmentPosition() {
        return this.segmentPosition;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.segmentIndex = archive.add(this.segmentIndex);
        this.segmentPosition = archive.add(this.segmentPosition);
    }
}
