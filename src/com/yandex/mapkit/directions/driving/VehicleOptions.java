package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class VehicleOptions implements Serializable {
    private Float axleWeight;
    private Boolean buswayPermitted;
    private Integer ecoClass;
    private Boolean hasTrailer;
    private Float height;
    private Float length;
    private Float maxWeight;
    private Float payload;
    private VehicleType vehicleType;
    private Float weight;
    private Float width;

    public VehicleOptions(VehicleType vehicleType, Float f, Float f2, Float f3, Float f4, Float f5, Float f6, Float f7, Integer num, Boolean bool, Boolean bool2) {
        this.vehicleType = VehicleType.DEFAULT;
        this.weight = null;
        this.axleWeight = null;
        this.maxWeight = null;
        this.height = null;
        this.width = null;
        this.length = null;
        this.payload = null;
        this.ecoClass = null;
        this.hasTrailer = null;
        this.buswayPermitted = null;
        if (vehicleType == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"vehicleType\" cannot be null");
            throw null;
        }
        this.vehicleType = vehicleType;
        this.weight = f;
        this.axleWeight = f2;
        this.maxWeight = f3;
        this.height = f4;
        this.width = f5;
        this.length = f6;
        this.payload = f7;
        this.ecoClass = num;
        this.hasTrailer = bool;
        this.buswayPermitted = bool2;
    }

    public VehicleOptions() {
        this.vehicleType = VehicleType.DEFAULT;
        this.weight = null;
        this.axleWeight = null;
        this.maxWeight = null;
        this.height = null;
        this.width = null;
        this.length = null;
        this.payload = null;
        this.ecoClass = null;
        this.hasTrailer = null;
        this.buswayPermitted = null;
    }

    public VehicleType getVehicleType() {
        return this.vehicleType;
    }

    public VehicleOptions setVehicleType(VehicleType vehicleType) {
        if (vehicleType == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"vehicleType\" cannot be null");
            return null;
        }
        this.vehicleType = vehicleType;
        return this;
    }

    public Float getWeight() {
        return this.weight;
    }

    public VehicleOptions setWeight(Float f) {
        this.weight = f;
        return this;
    }

    public Float getAxleWeight() {
        return this.axleWeight;
    }

    public VehicleOptions setAxleWeight(Float f) {
        this.axleWeight = f;
        return this;
    }

    public Float getMaxWeight() {
        return this.maxWeight;
    }

    public VehicleOptions setMaxWeight(Float f) {
        this.maxWeight = f;
        return this;
    }

    public Float getHeight() {
        return this.height;
    }

    public VehicleOptions setHeight(Float f) {
        this.height = f;
        return this;
    }

    public Float getWidth() {
        return this.width;
    }

    public VehicleOptions setWidth(Float f) {
        this.width = f;
        return this;
    }

    public Float getLength() {
        return this.length;
    }

    public VehicleOptions setLength(Float f) {
        this.length = f;
        return this;
    }

    public Float getPayload() {
        return this.payload;
    }

    public VehicleOptions setPayload(Float f) {
        this.payload = f;
        return this;
    }

    public Integer getEcoClass() {
        return this.ecoClass;
    }

    public VehicleOptions setEcoClass(Integer num) {
        this.ecoClass = num;
        return this;
    }

    public Boolean getHasTrailer() {
        return this.hasTrailer;
    }

    public VehicleOptions setHasTrailer(Boolean bool) {
        this.hasTrailer = bool;
        return this;
    }

    public Boolean getBuswayPermitted() {
        return this.buswayPermitted;
    }

    public VehicleOptions setBuswayPermitted(Boolean bool) {
        this.buswayPermitted = bool;
        return this;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.vehicleType = (VehicleType) archive.add(this.vehicleType, false, (Class<VehicleType>) VehicleType.class);
        this.weight = archive.add(this.weight, true);
        this.axleWeight = archive.add(this.axleWeight, true);
        this.maxWeight = archive.add(this.maxWeight, true);
        this.height = archive.add(this.height, true);
        this.width = archive.add(this.width, true);
        this.length = archive.add(this.length, true);
        this.payload = archive.add(this.payload, true);
        this.ecoClass = archive.add(this.ecoClass, true);
        this.hasTrailer = archive.add(this.hasTrailer, true);
        this.buswayPermitted = archive.add(this.buswayPermitted, true);
    }
}
