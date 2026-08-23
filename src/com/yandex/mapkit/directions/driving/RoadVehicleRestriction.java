package com.yandex.mapkit.directions.driving;

import com.yandex.mapkit.geometry.Subpolyline;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class RoadVehicleRestriction implements Serializable {
    private Subpolyline position;
    private VehicleRestriction vehicleRestriction;

    public RoadVehicleRestriction(VehicleRestriction vehicleRestriction, Subpolyline subpolyline) {
        if (vehicleRestriction == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"vehicleRestriction\" cannot be null");
            throw null;
        }
        if (subpolyline == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"position\" cannot be null");
            throw null;
        }
        this.vehicleRestriction = vehicleRestriction;
        this.position = subpolyline;
    }

    public RoadVehicleRestriction() {
    }

    public VehicleRestriction getVehicleRestriction() {
        return this.vehicleRestriction;
    }

    public Subpolyline getPosition() {
        return this.position;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.vehicleRestriction = (VehicleRestriction) archive.add(this.vehicleRestriction, false, (Class<VehicleRestriction>) VehicleRestriction.class);
        this.position = (Subpolyline) archive.add(this.position, false, (Class<Subpolyline>) Subpolyline.class);
    }
}
