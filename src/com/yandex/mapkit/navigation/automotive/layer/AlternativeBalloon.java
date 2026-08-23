package com.yandex.mapkit.navigation.automotive.layer;

import com.yandex.mapkit.directions.driving.Summary;
import com.yandex.mapkit.directions.driving.Weight;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class AlternativeBalloon implements Serializable {
    private NativeObject nativeObject;
    private Weight relativeWeight;
    private boolean relativeWeight__is_initialized;
    private Summary summary;
    private boolean summary__is_initialized;

    private native Weight getRelativeWeight__Native();

    private native Summary getSummary__Native();

    private native NativeObject init(Summary summary, Weight weight);

    public AlternativeBalloon() {
        this.summary__is_initialized = false;
        this.relativeWeight__is_initialized = false;
    }

    public AlternativeBalloon(Summary summary, Weight weight) {
        this.summary__is_initialized = false;
        this.relativeWeight__is_initialized = false;
        if (summary == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"summary\" cannot be null");
            throw null;
        }
        if (weight == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"relativeWeight\" cannot be null");
            throw null;
        }
        this.nativeObject = init(summary, weight);
        this.summary = summary;
        this.summary__is_initialized = true;
        this.relativeWeight = weight;
        this.relativeWeight__is_initialized = true;
    }

    private AlternativeBalloon(NativeObject nativeObject) {
        this.summary__is_initialized = false;
        this.relativeWeight__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Summary getSummary() {
        try {
            if (!this.summary__is_initialized) {
                this.summary = getSummary__Native();
                this.summary__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.summary;
    }

    public synchronized Weight getRelativeWeight() {
        try {
            if (!this.relativeWeight__is_initialized) {
                this.relativeWeight = getRelativeWeight__Native();
                this.relativeWeight__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.relativeWeight;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.summary = (Summary) archive.add(this.summary, false, (Class<Summary>) Summary.class);
            this.summary__is_initialized = true;
            Weight weight = (Weight) archive.add(this.relativeWeight, false, (Class<Weight>) Weight.class);
            this.relativeWeight = weight;
            this.relativeWeight__is_initialized = true;
            this.nativeObject = init(this.summary, weight);
            return;
        }
        archive.add(getSummary(), false, (Class<Summary>) Summary.class);
        archive.add(getRelativeWeight(), false, (Class<Weight>) Weight.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::navigation::automotive::layer::AlternativeBalloon";
    }
}
