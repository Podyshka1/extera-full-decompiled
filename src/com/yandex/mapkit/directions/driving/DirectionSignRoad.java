package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class DirectionSignRoad implements Serializable {
    private String name;
    private DirectionSignStyle style;

    public DirectionSignRoad(String str, DirectionSignStyle directionSignStyle) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"name\" cannot be null");
            throw null;
        }
        if (directionSignStyle == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"style\" cannot be null");
            throw null;
        }
        this.name = str;
        this.style = directionSignStyle;
    }

    public DirectionSignRoad() {
    }

    public String getName() {
        return this.name;
    }

    public DirectionSignStyle getStyle() {
        return this.style;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.name = archive.add(this.name, false);
        this.style = (DirectionSignStyle) archive.add(this.style, false, (Class<DirectionSignStyle>) DirectionSignStyle.class);
    }
}
