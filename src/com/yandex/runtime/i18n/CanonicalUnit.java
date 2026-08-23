package com.yandex.runtime.i18n;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class CanonicalUnit implements Serializable {
    private String unit;
    private double value;

    public CanonicalUnit(String str, double d) {
        if (str == null) {
            throw new IllegalArgumentException("Required field \"unit\" cannot be null");
        }
        this.unit = str;
        this.value = d;
    }

    public CanonicalUnit() {
    }

    public String getUnit() {
        return this.unit;
    }

    public double getValue() {
        return this.value;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.unit = archive.add(this.unit, false);
        this.value = archive.add(this.value);
    }
}
