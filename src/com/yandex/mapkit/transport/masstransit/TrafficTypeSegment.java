package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.geometry.Subpolyline;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class TrafficTypeSegment implements Serializable {
    private Subpolyline subpolyline;
    private TrafficTypeID trafficType;

    public TrafficTypeSegment(TrafficTypeID trafficTypeID, Subpolyline subpolyline) {
        if (trafficTypeID == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"trafficType\" cannot be null");
            throw null;
        }
        if (subpolyline == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"subpolyline\" cannot be null");
            throw null;
        }
        this.trafficType = trafficTypeID;
        this.subpolyline = subpolyline;
    }

    public TrafficTypeSegment() {
    }

    public TrafficTypeID getTrafficType() {
        return this.trafficType;
    }

    public Subpolyline getSubpolyline() {
        return this.subpolyline;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.trafficType = (TrafficTypeID) archive.add(this.trafficType, false, (Class<TrafficTypeID>) TrafficTypeID.class);
        this.subpolyline = (Subpolyline) archive.add(this.subpolyline, false, (Class<Subpolyline>) Subpolyline.class);
    }
}
