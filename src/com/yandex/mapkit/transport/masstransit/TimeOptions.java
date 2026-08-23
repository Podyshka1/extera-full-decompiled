package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class TimeOptions implements Serializable {
    private Long arrivalTime;
    private Long departureTime;

    public TimeOptions(Long l, Long l2) {
        this.departureTime = l;
        this.arrivalTime = l2;
    }

    public TimeOptions() {
        this.departureTime = null;
        this.arrivalTime = null;
    }

    public Long getDepartureTime() {
        return this.departureTime;
    }

    public TimeOptions setDepartureTime(Long l) {
        this.departureTime = l;
        return this;
    }

    public Long getArrivalTime() {
        return this.arrivalTime;
    }

    public TimeOptions setArrivalTime(Long l) {
        this.arrivalTime = l;
        return this;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.departureTime = archive.add(this.departureTime, true);
        this.arrivalTime = archive.add(this.arrivalTime, true);
    }
}
