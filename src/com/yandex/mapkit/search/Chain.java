package com.yandex.mapkit.search;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Chain implements Serializable {
    private String id;
    private String name;

    public Chain(String str, String str2) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"id\" cannot be null");
            throw null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"name\" cannot be null");
            throw null;
        }
        this.id = str;
        this.name = str2;
    }

    public Chain() {
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.id = archive.add(this.id, false);
        this.name = archive.add(this.name, false);
    }
}
