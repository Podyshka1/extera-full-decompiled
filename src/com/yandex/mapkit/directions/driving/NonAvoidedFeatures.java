package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class NonAvoidedFeatures implements Serializable {
    private boolean avoidZones;
    private boolean ferries;
    private boolean fordCrossings;
    private boolean highways;
    private boolean inPoorConditionRoads;
    private boolean railwayCrossings;
    private boolean tolls;
    private boolean tunnels;
    private boolean unpavedRoads;

    public NonAvoidedFeatures(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9) {
        this.tolls = z;
        this.ferries = z2;
        this.fordCrossings = z3;
        this.highways = z4;
        this.railwayCrossings = z5;
        this.tunnels = z6;
        this.inPoorConditionRoads = z7;
        this.unpavedRoads = z8;
        this.avoidZones = z9;
    }

    public NonAvoidedFeatures() {
    }

    public boolean getTolls() {
        return this.tolls;
    }

    public boolean getFerries() {
        return this.ferries;
    }

    public boolean getFordCrossings() {
        return this.fordCrossings;
    }

    public boolean getHighways() {
        return this.highways;
    }

    public boolean getRailwayCrossings() {
        return this.railwayCrossings;
    }

    public boolean getTunnels() {
        return this.tunnels;
    }

    public boolean getInPoorConditionRoads() {
        return this.inPoorConditionRoads;
    }

    public boolean getUnpavedRoads() {
        return this.unpavedRoads;
    }

    public boolean getAvoidZones() {
        return this.avoidZones;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.tolls = archive.add(this.tolls);
        this.ferries = archive.add(this.ferries);
        this.fordCrossings = archive.add(this.fordCrossings);
        this.highways = archive.add(this.highways);
        this.railwayCrossings = archive.add(this.railwayCrossings);
        this.tunnels = archive.add(this.tunnels);
        this.inPoorConditionRoads = archive.add(this.inPoorConditionRoads);
        this.unpavedRoads = archive.add(this.unpavedRoads);
        this.avoidZones = archive.add(this.avoidZones);
    }
}
