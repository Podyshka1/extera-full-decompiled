package com.yandex.mapkit.uri;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class Uri implements Serializable {
    private String value;

    public Uri(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required field \"value\" cannot be null");
        }
        this.value = str;
    }

    public Uri() {
    }

    public String getValue() {
        return this.value;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.value = archive.add(this.value, false);
    }
}
