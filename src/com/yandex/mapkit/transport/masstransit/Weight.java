package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.LocalizedValue;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Weight implements Serializable {
    private LocalizedValue time;
    private int transfersCount;
    private LocalizedValue walkingDistance;

    public Weight(LocalizedValue localizedValue, LocalizedValue localizedValue2, int i) {
        if (localizedValue == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"time\" cannot be null");
            throw null;
        }
        if (localizedValue2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"walkingDistance\" cannot be null");
            throw null;
        }
        this.time = localizedValue;
        this.walkingDistance = localizedValue2;
        this.transfersCount = i;
    }

    public Weight() {
    }

    public LocalizedValue getTime() {
        return this.time;
    }

    public LocalizedValue getWalkingDistance() {
        return this.walkingDistance;
    }

    public int getTransfersCount() {
        return this.transfersCount;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.time = (LocalizedValue) archive.add(this.time, false, (Class<LocalizedValue>) LocalizedValue.class);
        this.walkingDistance = (LocalizedValue) archive.add(this.walkingDistance, false, (Class<LocalizedValue>) LocalizedValue.class);
        this.transfersCount = archive.add(this.transfersCount);
    }
}
