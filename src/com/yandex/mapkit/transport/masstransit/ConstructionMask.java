package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ConstructionMask implements Serializable {
    private boolean binding;
    private boolean crosswalk;
    private Elevator elevator;
    private Escalator escalator;
    private boolean indoor;
    private Pass pass;
    private Stairs stairs;
    private boolean transition;
    private Travolator travolator;
    private boolean tunnel;

    public ConstructionMask(Stairs stairs, Pass pass, boolean z, boolean z2, boolean z3, boolean z4, Travolator travolator, boolean z5, Escalator escalator, Elevator elevator) {
        this.stairs = stairs;
        this.pass = pass;
        this.crosswalk = z;
        this.binding = z2;
        this.transition = z3;
        this.tunnel = z4;
        this.travolator = travolator;
        this.indoor = z5;
        this.escalator = escalator;
        this.elevator = elevator;
    }

    public ConstructionMask() {
    }

    public Stairs getStairs() {
        return this.stairs;
    }

    public Pass getPass() {
        return this.pass;
    }

    public boolean getCrosswalk() {
        return this.crosswalk;
    }

    public boolean getBinding() {
        return this.binding;
    }

    public boolean getTransition() {
        return this.transition;
    }

    public boolean getTunnel() {
        return this.tunnel;
    }

    public Travolator getTravolator() {
        return this.travolator;
    }

    public boolean getIndoor() {
        return this.indoor;
    }

    public Escalator getEscalator() {
        return this.escalator;
    }

    public Elevator getElevator() {
        return this.elevator;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.stairs = (Stairs) archive.add(this.stairs, true, (Class<Stairs>) Stairs.class);
        this.pass = (Pass) archive.add(this.pass, true, (Class<Pass>) Pass.class);
        this.crosswalk = archive.add(this.crosswalk);
        this.binding = archive.add(this.binding);
        this.transition = archive.add(this.transition);
        this.tunnel = archive.add(this.tunnel);
        this.travolator = (Travolator) archive.add(this.travolator, true, (Class<Travolator>) Travolator.class);
        this.indoor = archive.add(this.indoor);
        this.escalator = (Escalator) archive.add(this.escalator, true, (Class<Escalator>) Escalator.class);
        this.elevator = (Elevator) archive.add(this.elevator, true, (Class<Elevator>) Elevator.class);
    }
}
