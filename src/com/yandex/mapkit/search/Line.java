package com.yandex.mapkit.search;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Line implements Serializable {
    private String name;

    public Line(String str) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"name\" cannot be null");
            throw null;
        }
        this.name = str;
    }

    public Line() {
    }

    public String getName() {
        return this.name;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.name = archive.add(this.name, false);
    }
}
