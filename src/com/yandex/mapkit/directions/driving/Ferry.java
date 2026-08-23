package com.yandex.mapkit.directions.driving;

import com.yandex.mapkit.geometry.Subpolyline;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Ferry implements Serializable {
    private Subpolyline position;

    public Ferry(Subpolyline subpolyline) {
        if (subpolyline == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"position\" cannot be null");
            throw null;
        }
        this.position = subpolyline;
    }

    public Ferry() {
    }

    public Subpolyline getPosition() {
        return this.position;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.position = (Subpolyline) archive.add(this.position, false, (Class<Subpolyline>) Subpolyline.class);
    }
}
