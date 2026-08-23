package com.yandex.mapkit.directions.driving;

import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ManoeuvreVehicleRestriction implements Serializable {
    private PolylinePosition position;
    private VehicleRestriction vehicleRestriction;

    public ManoeuvreVehicleRestriction(VehicleRestriction vehicleRestriction, PolylinePosition polylinePosition) {
        if (vehicleRestriction == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"vehicleRestriction\" cannot be null");
            throw null;
        }
        if (polylinePosition == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"position\" cannot be null");
            throw null;
        }
        this.vehicleRestriction = vehicleRestriction;
        this.position = polylinePosition;
    }

    public ManoeuvreVehicleRestriction() {
    }

    public VehicleRestriction getVehicleRestriction() {
        return this.vehicleRestriction;
    }

    public PolylinePosition getPosition() {
        return this.position;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.vehicleRestriction = (VehicleRestriction) archive.add(this.vehicleRestriction, false, (Class<VehicleRestriction>) VehicleRestriction.class);
        this.position = (PolylinePosition) archive.add(this.position, false, (Class<PolylinePosition>) PolylinePosition.class);
    }
}
