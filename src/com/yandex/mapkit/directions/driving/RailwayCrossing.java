package com.yandex.mapkit.directions.driving;

import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class RailwayCrossing implements Serializable {
    private PolylinePosition position;
    private RailwayCrossingType type;

    public RailwayCrossing(RailwayCrossingType railwayCrossingType, PolylinePosition polylinePosition) {
        if (railwayCrossingType == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"type\" cannot be null");
            throw null;
        }
        if (polylinePosition == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"position\" cannot be null");
            throw null;
        }
        this.type = railwayCrossingType;
        this.position = polylinePosition;
    }

    public RailwayCrossing() {
    }

    public RailwayCrossingType getType() {
        return this.type;
    }

    public PolylinePosition getPosition() {
        return this.position;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.type = (RailwayCrossingType) archive.add(this.type, false, (Class<RailwayCrossingType>) RailwayCrossingType.class);
        this.position = (PolylinePosition) archive.add(this.position, false, (Class<PolylinePosition>) PolylinePosition.class);
    }
}
