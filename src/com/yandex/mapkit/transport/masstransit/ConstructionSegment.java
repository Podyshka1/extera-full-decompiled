package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.geometry.Subpolyline;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ConstructionSegment implements Serializable {
    private ConstructionMask constructionMask;
    private Subpolyline subpolyline;

    public ConstructionSegment(Subpolyline subpolyline, ConstructionMask constructionMask) {
        if (subpolyline == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"subpolyline\" cannot be null");
            throw null;
        }
        if (constructionMask == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"constructionMask\" cannot be null");
            throw null;
        }
        this.subpolyline = subpolyline;
        this.constructionMask = constructionMask;
    }

    public ConstructionSegment() {
    }

    public Subpolyline getSubpolyline() {
        return this.subpolyline;
    }

    public ConstructionMask getConstructionMask() {
        return this.constructionMask;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.subpolyline = (Subpolyline) archive.add(this.subpolyline, false, (Class<Subpolyline>) Subpolyline.class);
        this.constructionMask = (ConstructionMask) archive.add(this.constructionMask, false, (Class<ConstructionMask>) ConstructionMask.class);
    }
}
