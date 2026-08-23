package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class Flags implements Serializable {
    private boolean blocked;
    private boolean builtOffline;
    private boolean deadJam;
    private boolean forParking;
    private boolean futureBlocked;
    private boolean hasCheckpoints;
    private boolean hasFerries;
    private boolean hasFordCrossing;
    private boolean hasHighways;
    private boolean hasInPoorConditionRoads;
    private boolean hasNonTransactionalTolls;
    private boolean hasRailwayCrossing;
    private boolean hasRuggedRoads;
    private boolean hasTolls;
    private boolean hasTunnels;
    private boolean hasUnpavedRoads;
    private boolean hasVehicleRestrictions;
    private boolean predicted;
    private boolean requiresAccessPass;
    private boolean scheduledDeparture;

    public Flags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, boolean z20) {
        this.blocked = z;
        this.hasFerries = z2;
        this.hasTolls = z3;
        this.requiresAccessPass = z4;
        this.forParking = z5;
        this.futureBlocked = z6;
        this.deadJam = z7;
        this.builtOffline = z8;
        this.predicted = z9;
        this.hasRuggedRoads = z10;
        this.hasFordCrossing = z11;
        this.hasVehicleRestrictions = z12;
        this.hasUnpavedRoads = z13;
        this.hasInPoorConditionRoads = z14;
        this.hasRailwayCrossing = z15;
        this.hasCheckpoints = z16;
        this.scheduledDeparture = z17;
        this.hasNonTransactionalTolls = z18;
        this.hasTunnels = z19;
        this.hasHighways = z20;
    }

    public Flags() {
    }

    public boolean getBlocked() {
        return this.blocked;
    }

    public boolean getHasFerries() {
        return this.hasFerries;
    }

    public boolean getHasTolls() {
        return this.hasTolls;
    }

    public boolean getRequiresAccessPass() {
        return this.requiresAccessPass;
    }

    public boolean getForParking() {
        return this.forParking;
    }

    public boolean getFutureBlocked() {
        return this.futureBlocked;
    }

    public boolean getDeadJam() {
        return this.deadJam;
    }

    public boolean getBuiltOffline() {
        return this.builtOffline;
    }

    public boolean getPredicted() {
        return this.predicted;
    }

    public boolean getHasRuggedRoads() {
        return this.hasRuggedRoads;
    }

    public boolean getHasFordCrossing() {
        return this.hasFordCrossing;
    }

    public boolean getHasVehicleRestrictions() {
        return this.hasVehicleRestrictions;
    }

    public boolean getHasUnpavedRoads() {
        return this.hasUnpavedRoads;
    }

    public boolean getHasInPoorConditionRoads() {
        return this.hasInPoorConditionRoads;
    }

    public boolean getHasRailwayCrossing() {
        return this.hasRailwayCrossing;
    }

    public boolean getHasCheckpoints() {
        return this.hasCheckpoints;
    }

    public boolean getScheduledDeparture() {
        return this.scheduledDeparture;
    }

    public boolean getHasNonTransactionalTolls() {
        return this.hasNonTransactionalTolls;
    }

    public boolean getHasTunnels() {
        return this.hasTunnels;
    }

    public boolean getHasHighways() {
        return this.hasHighways;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.blocked = archive.add(this.blocked);
        this.hasFerries = archive.add(this.hasFerries);
        this.hasTolls = archive.add(this.hasTolls);
        this.requiresAccessPass = archive.add(this.requiresAccessPass);
        this.forParking = archive.add(this.forParking);
        this.futureBlocked = archive.add(this.futureBlocked);
        this.deadJam = archive.add(this.deadJam);
        this.builtOffline = archive.add(this.builtOffline);
        this.predicted = archive.add(this.predicted);
        this.hasRuggedRoads = archive.add(this.hasRuggedRoads);
        this.hasFordCrossing = archive.add(this.hasFordCrossing);
        this.hasVehicleRestrictions = archive.add(this.hasVehicleRestrictions);
        this.hasUnpavedRoads = archive.add(this.hasUnpavedRoads);
        this.hasInPoorConditionRoads = archive.add(this.hasInPoorConditionRoads);
        this.hasRailwayCrossing = archive.add(this.hasRailwayCrossing);
        this.hasCheckpoints = archive.add(this.hasCheckpoints);
        this.scheduledDeparture = archive.add(this.scheduledDeparture);
        this.hasNonTransactionalTolls = archive.add(this.hasNonTransactionalTolls);
        this.hasTunnels = archive.add(this.hasTunnels);
        this.hasHighways = archive.add(this.hasHighways);
    }
}
