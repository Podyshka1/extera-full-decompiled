package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class TransitOptions implements Serializable {
    private int avoid;
    private TimeOptions timeOptions;

    public TransitOptions(int i, TimeOptions timeOptions) {
        this.avoid = FilterVehicleTypes.NONE.value;
        if (timeOptions == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"timeOptions\" cannot be null");
            throw null;
        }
        this.avoid = i;
        this.timeOptions = timeOptions;
    }

    public TransitOptions() {
        this.avoid = FilterVehicleTypes.NONE.value;
    }

    public int getAvoid() {
        return this.avoid;
    }

    public TimeOptions getTimeOptions() {
        return this.timeOptions;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.avoid = archive.add(Integer.valueOf(this.avoid), false).intValue();
        this.timeOptions = (TimeOptions) archive.add(this.timeOptions, false, (Class<TimeOptions>) TimeOptions.class);
    }
}
