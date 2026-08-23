package com.yandex.mapkit.indoor;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class IndoorLevel implements Serializable {
    private String id;
    private boolean isUnderground;
    private String name;

    public IndoorLevel(String str, String str2, boolean z) {
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
        this.isUnderground = z;
    }

    public IndoorLevel() {
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public boolean getIsUnderground() {
        return this.isUnderground;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.id = archive.add(this.id, false);
        this.name = archive.add(this.name, false);
        this.isUnderground = archive.add(this.isUnderground);
    }
}
