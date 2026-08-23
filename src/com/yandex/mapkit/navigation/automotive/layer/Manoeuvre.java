package com.yandex.mapkit.navigation.automotive.layer;

import com.yandex.mapkit.LocalizedValue;
import com.yandex.mapkit.directions.driving.Action;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Manoeuvre implements Serializable {
    private Action action;
    private LocalizedValue distance;
    private String nextRoadName;

    public Manoeuvre(Action action, LocalizedValue localizedValue, String str) {
        if (action == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"action\" cannot be null");
            throw null;
        }
        if (localizedValue == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"distance\" cannot be null");
            throw null;
        }
        this.action = action;
        this.distance = localizedValue;
        this.nextRoadName = str;
    }

    public Manoeuvre() {
    }

    public Action getAction() {
        return this.action;
    }

    public LocalizedValue getDistance() {
        return this.distance;
    }

    public String getNextRoadName() {
        return this.nextRoadName;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.action = (Action) archive.add(this.action, false, (Class<Action>) Action.class);
        this.distance = (LocalizedValue) archive.add(this.distance, false, (Class<LocalizedValue>) LocalizedValue.class);
        this.nextRoadName = archive.add(this.nextRoadName, true);
    }
}
