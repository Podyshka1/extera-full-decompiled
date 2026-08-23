package com.yandex.runtime.i18n;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class I18nPrefs implements Serializable {
    private SystemOfMeasurement som;
    private TimeFormat timeFormat;

    public I18nPrefs(SystemOfMeasurement systemOfMeasurement, TimeFormat timeFormat) {
        if (systemOfMeasurement == null) {
            throw new IllegalArgumentException("Required field \"som\" cannot be null");
        }
        if (timeFormat == null) {
            throw new IllegalArgumentException("Required field \"timeFormat\" cannot be null");
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
