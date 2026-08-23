package com.yandex.mapkit.navigation;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class JamSegment implements Serializable {
    private JamType jamType;
    private double speed;

    public JamSegment(JamType jamType, double d) {
        if (jamType == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"jamType\" cannot be null");
            throw null;
        }
        this.jamType = jamType;
        this.speed = d;
    }

    public JamSegment() {
    }

    public JamType getJamType() {
        return this.jamType;
    }

    public double getSpeed() {
        return this.speed;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.jamType = (JamType) archive.add(this.jamType, false, (Class<JamType>) JamType.class);
        this.speed = archive.add(this.speed);
    }
}
