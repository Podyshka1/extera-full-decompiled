package com.yandex.mapkit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Version implements Serializable {
    private String str;

    public Version(String str) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"str\" cannot be null");
            throw null;
        }
        this.str = str;
    }

    public Version() {
    }

    public String getStr() {
        return this.str;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.str = archive.add(this.str, false);
    }
}
