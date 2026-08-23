package com.yandex.mapkit.logo;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Alignment implements Serializable {
    private HorizontalAlignment horizontalAlignment;
    private VerticalAlignment verticalAlignment;

    public Alignment(HorizontalAlignment horizontalAlignment, VerticalAlignment verticalAlignment) {
        if (horizontalAlignment == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"horizontalAlignment\" cannot be null");
            throw null;
        }
        if (verticalAlignment == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"verticalAlignment\" cannot be null");
            throw null;
        }
        this.horizontalAlignment = horizontalAlignment;
        this.verticalAlignment = verticalAlignment;
    }

    public Alignment() {
    }

    public HorizontalAlignment getHorizontalAlignment() {
        return this.horizontalAlignment;
    }

    public VerticalAlignment getVerticalAlignment() {
        return this.verticalAlignment;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.horizontalAlignment = (HorizontalAlignment) archive.add(this.horizontalAlignment, false, (Class<HorizontalAlignment>) HorizontalAlignment.class);
        this.verticalAlignment = (VerticalAlignment) archive.add(this.verticalAlignment, false, (Class<VerticalAlignment>) VerticalAlignment.class);
    }
}
