package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.Time;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class TravelEstimation implements Serializable {
    private Time arrivalTime;
    private Time departureTime;

    public TravelEstimation(Time time, Time time2) {
        if (time == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"departureTime\" cannot be null");
            throw null;
        }
        if (time2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"arrivalTime\" cannot be null");
            throw null;
        }
        this.departureTime = time;
        this.arrivalTime = time2;
    }

    public TravelEstimation() {
    }

    public Time getDepartureTime() {
        return this.departureTime;
    }

    public Time getArrivalTime() {
        return this.arrivalTime;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.departureTime = (Time) archive.add(this.departureTime, false, (Class<Time>) Time.class);
        this.arrivalTime = (Time) archive.add(this.arrivalTime, false, (Class<Time>) Time.class);
    }
}
