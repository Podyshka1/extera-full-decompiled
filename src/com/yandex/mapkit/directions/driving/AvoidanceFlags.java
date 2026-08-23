package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class AvoidanceFlags implements Serializable {
    private boolean avoidBoatFerry;
    private boolean avoidFordCrossing;
    private boolean avoidHighway;
    private boolean avoidPoorCondition;
    private boolean avoidRailwayCrossing;
    private boolean avoidTolls;
    private boolean avoidTunnel;
    private boolean avoidUnpaved;

    public AvoidanceFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        this.avoidTolls = z;
        this.avoidUnpaved = z2;
        this.avoidPoorCondition = z3;
        this.avoidRailwayCrossing = z4;
        this.avoidBoatFerry = z5;
        this.avoidFordCrossing = z6;
        this.avoidTunnel = z7;
        this.avoidHighway = z8;
    }

    public AvoidanceFlags() {
        this.avoidTolls = false;
        this.avoidUnpaved = false;
        this.avoidPoorCondition = false;
        this.avoidRailwayCrossing = false;
        this.avoidBoatFerry = false;
        this.avoidFordCrossing = false;
        this.avoidTunnel = false;
        this.avoidHighway = false;
    }

    public boolean getAvoidTolls() {
        return this.avoidTolls;
    }

    public AvoidanceFlags setAvoidTolls(boolean z) {
        this.avoidTolls = z;
        return this;
    }

    public boolean getAvoidUnpaved() {
        return this.avoidUnpaved;
    }

    public AvoidanceFlags setAvoidUnpaved(boolean z) {
        this.avoidUnpaved = z;
        return this;
    }

    public boolean getAvoidPoorCondition() {
        return this.avoidPoorCondition;
    }

    public AvoidanceFlags setAvoidPoorCondition(boolean z) {
        this.avoidPoorCondition = z;
        return this;
    }

    public boolean getAvoidRailwayCrossing() {
        return this.avoidRailwayCrossing;
    }

    public AvoidanceFlags setAvoidRailwayCrossing(boolean z) {
        this.avoidRailwayCrossing = z;
        return this;
    }

    public boolean getAvoidBoatFerry() {
        return this.avoidBoatFerry;
    }

    public AvoidanceFlags setAvoidBoatFerry(boolean z) {
        this.avoidBoatFerry = z;
        return this;
    }

    public boolean getAvoidFordCrossing() {
        return this.avoidFordCrossing;
    }

    public AvoidanceFlags setAvoidFordCrossing(boolean z) {
        this.avoidFordCrossing = z;
        return this;
    }

    public boolean getAvoidTunnel() {
        return this.avoidTunnel;
    }

    public AvoidanceFlags setAvoidTunnel(boolean z) {
        this.avoidTunnel = z;
        return this;
    }

    public boolean getAvoidHighway() {
        return this.avoidHighway;
    }

    public AvoidanceFlags setAvoidHighway(boolean z) {
        this.avoidHighway = z;
        return this;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.avoidTolls = archive.add(this.avoidTolls);
        this.avoidUnpaved = archive.add(this.avoidUnpaved);
        this.avoidPoorCondition = archive.add(this.avoidPoorCondition);
        this.avoidRailwayCrossing = archive.add(this.avoidRailwayCrossing);
        this.avoidBoatFerry = archive.add(this.avoidBoatFerry);
        this.avoidFordCrossing = archive.add(this.avoidFordCrossing);
        this.avoidTunnel = archive.add(this.avoidTunnel);
        this.avoidHighway = archive.add(this.avoidHighway);
    }
}
