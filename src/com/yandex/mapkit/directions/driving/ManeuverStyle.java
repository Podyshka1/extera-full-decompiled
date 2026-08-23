package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ManeuverStyle implements Serializable {
    private ArrowManeuverStyle arrow;

    public ManeuverStyle(ArrowManeuverStyle arrowManeuverStyle) {
        if (arrowManeuverStyle == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"arrow\" cannot be null");
            throw null;
        }
        this.arrow = arrowManeuverStyle;
    }

    public ManeuverStyle() {
    }

    public ArrowManeuverStyle getArrow() {
        return this.arrow;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.arrow = (ArrowManeuverStyle) archive.add(this.arrow, false, (Class<ArrowManeuverStyle>) ArrowManeuverStyle.class);
    }
}
