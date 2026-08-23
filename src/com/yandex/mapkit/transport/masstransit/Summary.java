package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Summary implements Serializable {
    private TravelEstimation estimation;
    private boolean estimation__is_initialized;
    private Flags flags;
    private boolean flags__is_initialized;
    private NativeObject nativeObject;
    private Weight weight;
    private boolean weight__is_initialized;

    private native TravelEstimation getEstimation__Native();

    private native Flags getFlags__Native();

    private native Weight getWeight__Native();

    private native NativeObject init(Weight weight, TravelEstimation travelEstimation, Flags flags);

    public Summary() {
        this.weight__is_initialized = false;
        this.estimation__is_initialized = false;
        this.flags__is_initialized = false;
    }

    public Summary(Weight weight, TravelEstimation travelEstimation, Flags flags) {
        this.weight__is_initialized = false;
        this.estimation__is_initialized = false;
        this.flags__is_initialized = false;
        if (weight == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"weight\" cannot be null");
            throw null;
        }
        this.nativeObject = init(weight, travelEstimation, flags);
        this.weight = weight;
        this.weight__is_initialized = true;
        this.estimation = travelEstimation;
        this.estimation__is_initialized = true;
        this.flags = flags;
        this.flags__is_initialized = true;
    }

    private Summary(NativeObject nativeObject) {
        this.weight__is_initialized = false;
        this.estimation__is_initialized = false;
        this.flags__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Weight getWeight() {
        try {
            if (!this.weight__is_initialized) {
                this.weight = getWeight__Native();
                this.weight__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.weight;
    }

    public synchronized TravelEstimation getEstimation() {
        try {
            if (!this.estimation__is_initialized) {
                this.estimation = getEstimation__Native();
                this.estimation__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.estimation;
    }

    public synchronized Flags getFlags() {
        try {
            if (!this.flags__is_initialized) {
                this.flags = getFlags__Native();
                this.flags__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.flags;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.weight = (Weight) archive.add(this.weight, false, (Class<Weight>) Weight.class);
            this.weight__is_initialized = true;
            this.estimation = (TravelEstimation) archive.add(this.estimation, true, (Class<TravelEstimation>) TravelEstimation.class);
            this.estimation__is_initialized = true;
            Flags flags = (Flags) archive.add(this.flags, true, (Class<Flags>) Flags.class);
            this.flags = flags;
            this.flags__is_initialized = true;
            this.nativeObject = init(this.weight, this.estimation, flags);
            return;
        }
        archive.add(getWeight(), false, (Class<Weight>) Weight.class);
        archive.add(getEstimation(), true, (Class<TravelEstimation>) TravelEstimation.class);
        archive.add(getFlags(), true, (Class<Flags>) Flags.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::Summary";
    }
}
