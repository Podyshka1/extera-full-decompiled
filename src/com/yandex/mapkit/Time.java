package com.yandex.mapkit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Time implements Serializable {
    private String text;
    private int tzOffset;
    private long value;

    public Time(long j, int i, String str) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"text\" cannot be null");
            throw null;
        }
        this.value = j;
        this.tzOffset = i;
        this.text = str;
    }

    public Time() {
    }

    public long getValue() {
        return this.value;
    }

    public int getTzOffset() {
        return this.tzOffset;
    }

    public String getText() {
        return this.text;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.value = archive.add(this.value);
        this.tzOffset = archive.add(this.tzOffset);
        this.text = archive.add(this.text, false);
    }
}
