package com.yandex.mapkit.indoor;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class IndoorLevel implements Serializable {

    /* JADX INFO: renamed from: id */
    private String f618id;
    private boolean isUnderground;
    private String name;

    public IndoorLevel(String str, String str2, boolean z) {
        if (str == null) {
            throw new IllegalArgumentException("Required field \"id\" cannot be null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("Required field \"name\" cannot be null");
        }
        this.f618id = str;
        this.name = str2;
        this.isUnderground = z;
    }

    public IndoorLevel() {
    }

    public String getId() {
        return this.f618id;
    }

    public String getName() {
        return this.name;
    }

    public boolean getIsUnderground() {
        return this.isUnderground;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.f618id = archive.add(this.f618id, false);
        this.name = archive.add(this.name, false);
        this.isUnderground = archive.add(this.isUnderground);
    }
}
