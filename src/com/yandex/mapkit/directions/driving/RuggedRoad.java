package com.yandex.mapkit.directions.driving;

import com.yandex.mapkit.geometry.Subpolyline;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class RuggedRoad implements Serializable {
    private boolean inPoorCondition;
    private Subpolyline position;
    private boolean unpaved;

    public RuggedRoad(Subpolyline subpolyline, boolean z, boolean z2) {
        if (subpolyline == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"position\" cannot be null");
            throw null;
        }
        this.position = subpolyline;
        this.unpaved = z;
        this.inPoorCondition = z2;
    }

    public RuggedRoad() {
    }

    public Subpolyline getPosition() {
        return this.position;
    }

    public boolean getUnpaved() {
        return this.unpaved;
    }

    public boolean getInPoorCondition() {
        return this.inPoorCondition;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.position = (Subpolyline) archive.add(this.position, false, (Class<Subpolyline>) Subpolyline.class);
        this.unpaved = archive.add(this.unpaved);
        this.inPoorCondition = archive.add(this.inPoorCondition);
    }
}
