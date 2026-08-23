package com.yandex.mapkit.geometry;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Subpolyline implements Serializable {
    private PolylinePosition begin;
    private PolylinePosition end;

    public Subpolyline(PolylinePosition polylinePosition, PolylinePosition polylinePosition2) {
        if (polylinePosition == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"begin\" cannot be null");
            throw null;
        }
        if (polylinePosition2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"end\" cannot be null");
            throw null;
        }
        this.begin = polylinePosition;
        this.end = polylinePosition2;
    }

    public Subpolyline() {
    }

    public PolylinePosition getBegin() {
        return this.begin;
    }

    public PolylinePosition getEnd() {
        return this.end;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.begin = (PolylinePosition) archive.add(this.begin, false, (Class<PolylinePosition>) PolylinePosition.class);
        this.end = (PolylinePosition) archive.add(this.end, false, (Class<PolylinePosition>) PolylinePosition.class);
    }
}
