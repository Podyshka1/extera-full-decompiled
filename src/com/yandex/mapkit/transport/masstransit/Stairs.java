package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Stairs implements Serializable {
    private StairsDirection direction;
    private boolean hasRamp;

    public Stairs(StairsDirection stairsDirection, boolean z) {
        if (stairsDirection == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"direction\" cannot be null");
            throw null;
        }
        this.direction = stairsDirection;
        this.hasRamp = z;
    }

    public Stairs() {
    }

    public StairsDirection getDirection() {
        return this.direction;
    }

    public boolean getHasRamp() {
        return this.hasRamp;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.direction = (StairsDirection) archive.add(this.direction, false, (Class<StairsDirection>) StairsDirection.class);
        this.hasRamp = archive.add(this.hasRamp);
    }
}
