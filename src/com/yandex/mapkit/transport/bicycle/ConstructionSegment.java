package com.yandex.mapkit.transport.bicycle;

import com.yandex.mapkit.geometry.Subpolyline;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ConstructionSegment implements Serializable {
    private ConstructionID construction;
    private Subpolyline subpolyline;

    public ConstructionSegment(ConstructionID constructionID, Subpolyline subpolyline) {
        if (constructionID == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"construction\" cannot be null");
            throw null;
        }
        if (subpolyline == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"subpolyline\" cannot be null");
            throw null;
        }
        this.construction = constructionID;
        this.subpolyline = subpolyline;
    }

    public ConstructionSegment() {
    }

    public ConstructionID getConstruction() {
        return this.construction;
    }

    public Subpolyline getSubpolyline() {
        return this.subpolyline;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.construction = (ConstructionID) archive.add(this.construction, false, (Class<ConstructionID>) ConstructionID.class);
        this.subpolyline = (Subpolyline) archive.add(this.subpolyline, false, (Class<Subpolyline>) Subpolyline.class);
    }
}
