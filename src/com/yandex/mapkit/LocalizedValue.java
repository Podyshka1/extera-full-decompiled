package com.yandex.mapkit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class LocalizedValue implements Serializable {
    private String text;
    private double value;

    public LocalizedValue(double d, String str) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"text\" cannot be null");
            throw null;
        }
        this.value = d;
        this.text = str;
    }

    public LocalizedValue() {
    }

    public double getValue() {
        return this.value;
    }

    public String getText() {
        return this.text;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.value = archive.add(this.value);
        this.text = archive.add(this.text, false);
    }
}
