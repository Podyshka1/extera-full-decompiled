package com.yandex.mapkit.navigation.automotive;

import com.yandex.mapkit.LocalizedValue;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class SpeedLimits implements Serializable {
    private LocalizedValue expressway;
    private LocalizedValue rural;
    private LocalizedValue urban;

    public SpeedLimits(LocalizedValue localizedValue, LocalizedValue localizedValue2, LocalizedValue localizedValue3) {
        if (localizedValue == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"urban\" cannot be null");
            throw null;
        }
        if (localizedValue2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"rural\" cannot be null");
            throw null;
        }
        if (localizedValue3 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"expressway\" cannot be null");
            throw null;
        }
        this.urban = localizedValue;
        this.rural = localizedValue2;
        this.expressway = localizedValue3;
    }

    public SpeedLimits() {
    }

    public LocalizedValue getUrban() {
        return this.urban;
    }

    public LocalizedValue getRural() {
        return this.rural;
    }

    public LocalizedValue getExpressway() {
        return this.expressway;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.urban = (LocalizedValue) archive.add(this.urban, false, (Class<LocalizedValue>) LocalizedValue.class);
        this.rural = (LocalizedValue) archive.add(this.rural, false, (Class<LocalizedValue>) LocalizedValue.class);
        this.expressway = (LocalizedValue) archive.add(this.expressway, false, (Class<LocalizedValue>) LocalizedValue.class);
    }
}
