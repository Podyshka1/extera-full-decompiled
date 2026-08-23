package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class IndoorLevel implements Serializable {
    private String levelId;
    private String levelName;

    public IndoorLevel(String str, String str2) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"levelId\" cannot be null");
            throw null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"levelName\" cannot be null");
            throw null;
        }
        this.levelId = str;
        this.levelName = str2;
    }

    public IndoorLevel() {
    }

    public String getLevelId() {
        return this.levelId;
    }

    public String getLevelName() {
        return this.levelName;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.levelId = archive.add(this.levelId, false);
        this.levelName = archive.add(this.levelName, false);
    }
}
