package com.yandex.runtime;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class KeyValuePair implements Serializable {
    private String key;
    private String value;

    public KeyValuePair(String str, String str2) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"key\" cannot be null");
            throw null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"value\" cannot be null");
            throw null;
        }
        this.key = str;
        this.value = str2;
    }

    public KeyValuePair() {
    }

    public String getKey() {
        return this.key;
    }

    public String getValue() {
        return this.value;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.key = archive.add(this.key, false);
        this.value = archive.add(this.value, false);
    }
}
