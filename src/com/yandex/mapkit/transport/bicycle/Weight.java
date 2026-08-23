package com.yandex.mapkit.transport.bicycle;

import com.yandex.mapkit.LocalizedValue;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Weight implements Serializable {
    private LocalizedValue distance;
    private LocalizedValue time;

    public Weight(LocalizedValue localizedValue, LocalizedValue localizedValue2) {
        if (localizedValue == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"time\" cannot be null");
            throw null;
        }
        if (localizedValue2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"distance\" cannot be null");
            throw null;
        }
        this.time = localizedValue;
        this.distance = localizedValue2;
    }

    public Weight() {
    }

    public LocalizedValue getTime() {
        return this.time;
    }

    public LocalizedValue getDistance() {
        return this.distance;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.time = (LocalizedValue) archive.add(this.time, false, (Class<LocalizedValue>) LocalizedValue.class);
        this.distance = (LocalizedValue) archive.add(this.distance, false, (Class<LocalizedValue>) LocalizedValue.class);
    }
}
