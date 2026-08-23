package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class DirectionSignItem implements Serializable {
    private DirectionSignExit exit;
    private DirectionSignIcon icon;
    private DirectionSignRoad road;
    private DirectionSignToponym toponym;

    public static DirectionSignItem fromToponym(DirectionSignToponym directionSignToponym) {
        if (directionSignToponym == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Variant value \"toponym\" cannot be null");
            return null;
        }
        DirectionSignItem directionSignItem = new DirectionSignItem();
        directionSignItem.toponym = directionSignToponym;
        return directionSignItem;
    }

    public static DirectionSignItem fromRoad(DirectionSignRoad directionSignRoad) {
        if (directionSignRoad == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Variant value \"road\" cannot be null");
            return null;
        }
        DirectionSignItem directionSignItem = new DirectionSignItem();
        directionSignItem.road = directionSignRoad;
        return directionSignItem;
    }

    public static DirectionSignItem fromExit(DirectionSignExit directionSignExit) {
        if (directionSignExit == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Variant value \"exit\" cannot be null");
            return null;
        }
        DirectionSignItem directionSignItem = new DirectionSignItem();
        directionSignItem.exit = directionSignExit;
        return directionSignItem;
    }

    public static DirectionSignItem fromIcon(DirectionSignIcon directionSignIcon) {
        if (directionSignIcon == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Variant value \"icon\" cannot be null");
            return null;
        }
        DirectionSignItem directionSignItem = new DirectionSignItem();
        directionSignItem.icon = directionSignIcon;
        return directionSignItem;
    }

    public DirectionSignToponym getToponym() {
        return this.toponym;
    }

    public DirectionSignRoad getRoad() {
        return this.road;
    }

    public DirectionSignExit getExit() {
        return this.exit;
    }

    public DirectionSignIcon getIcon() {
        return this.icon;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.toponym = (DirectionSignToponym) archive.add(this.toponym, true, (Class<DirectionSignToponym>) DirectionSignToponym.class);
        this.road = (DirectionSignRoad) archive.add(this.road, true, (Class<DirectionSignRoad>) DirectionSignRoad.class);
        this.exit = (DirectionSignExit) archive.add(this.exit, true, (Class<DirectionSignExit>) DirectionSignExit.class);
        this.icon = (DirectionSignIcon) archive.add(this.icon, true, (Class<DirectionSignIcon>) DirectionSignIcon.class);
    }
}
