package com.yandex.runtime.i18n;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class I18nPrefs implements Serializable {
    private SystemOfMeasurement som;
    private TimeFormat timeFormat;

    public I18nPrefs(SystemOfMeasurement systemOfMeasurement, TimeFormat timeFormat) {
        if (systemOfMeasurement == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"som\" cannot be null");
            throw null;
        }
        if (timeFormat == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"timeFormat\" cannot be null");
            throw null;
        }
        this.som = systemOfMeasurement;
        this.timeFormat = timeFormat;
    }

    public I18nPrefs() {
    }

    public SystemOfMeasurement getSom() {
        return this.som;
    }

    public TimeFormat getTimeFormat() {
        return this.timeFormat;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.som = (SystemOfMeasurement) archive.add(this.som, false, (Class<SystemOfMeasurement>) SystemOfMeasurement.class);
        this.timeFormat = (TimeFormat) archive.add(this.timeFormat, false, (Class<TimeFormat>) TimeFormat.class);
    }
}
