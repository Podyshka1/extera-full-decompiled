package com.yandex.mapkit.search;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Sort implements Serializable {
    private SortOrigin origin;
    private SortType type;

    public Sort(SortType sortType, SortOrigin sortOrigin) {
        if (sortType == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"type\" cannot be null");
            throw null;
        }
        this.type = sortType;
        this.origin = sortOrigin;
    }

    public Sort() {
    }

    public SortType getType() {
        return this.type;
    }

    public SortOrigin getOrigin() {
        return this.origin;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.type = (SortType) archive.add(this.type, false, (Class<SortType>) SortType.class);
        this.origin = (SortOrigin) archive.add(this.origin, true, (Class<SortOrigin>) SortOrigin.class);
    }
}
