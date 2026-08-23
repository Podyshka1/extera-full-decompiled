package com.yandex.mapkit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Money implements Serializable {
    private String currency;
    private String text;
    private double value;

    public Money(double d, String str, String str2) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"text\" cannot be null");
            throw null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"currency\" cannot be null");
            throw null;
        }
        this.value = d;
        this.text = str;
        this.currency = str2;
    }

    public Money() {
    }

    public double getValue() {
        return this.value;
    }

    public String getText() {
        return this.text;
    }

    public String getCurrency() {
        return this.currency;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.value = archive.add(this.value);
        this.text = archive.add(this.text, false);
        this.currency = archive.add(this.currency, false);
    }
}
