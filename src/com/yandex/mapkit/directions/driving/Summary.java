package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Summary implements Serializable {
    private Flags flags;
    private NonAvoidedFeatures nonAvoidedFeatures;
    private Weight weight;

    public Summary(Weight weight, Flags flags, NonAvoidedFeatures nonAvoidedFeatures) {
        if (weight == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"weight\" cannot be null");
            throw null;
        }
        if (flags == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"flags\" cannot be null");
            throw null;
        }
        if (nonAvoidedFeatures == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"nonAvoidedFeatures\" cannot be null");
            throw null;
        }
        this.weight = weight;
        this.flags = flags;
        this.nonAvoidedFeatures = nonAvoidedFeatures;
    }

    public Summary() {
    }

    public Weight getWeight() {
        return this.weight;
    }

    public Flags getFlags() {
        return this.flags;
    }

    public NonAvoidedFeatures getNonAvoidedFeatures() {
        return this.nonAvoidedFeatures;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.weight = (Weight) archive.add(this.weight, false, (Class<Weight>) Weight.class);
        this.flags = (Flags) archive.add(this.flags, false, (Class<Flags>) Flags.class);
        this.nonAvoidedFeatures = (NonAvoidedFeatures) archive.add(this.nonAvoidedFeatures, false, (Class<NonAvoidedFeatures>) NonAvoidedFeatures.class);
    }
}
