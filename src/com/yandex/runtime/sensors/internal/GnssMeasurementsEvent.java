package com.yandex.runtime.sensors.internal;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class GnssMeasurementsEvent implements Serializable {
    private GnssClock clock;
    private boolean clock__is_initialized;
    private List<GnssMeasurement> measurements;
    private boolean measurements__is_initialized;
    private NativeObject nativeObject;

    private native GnssClock getClock__Native();

    private native List<GnssMeasurement> getMeasurements__Native();

    private native NativeObject init(GnssClock gnssClock, List<GnssMeasurement> list);

    public GnssMeasurementsEvent() {
        this.clock__is_initialized = false;
        this.measurements__is_initialized = false;
    }

    public GnssMeasurementsEvent(GnssClock gnssClock, List<GnssMeasurement> list) {
        this.clock__is_initialized = false;
        this.measurements__is_initialized = false;
        if (gnssClock == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"clock\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"measurements\" cannot be null");
            throw null;
        }
        this.nativeObject = init(gnssClock, list);
        this.clock = gnssClock;
        this.clock__is_initialized = true;
        this.measurements = list;
        this.measurements__is_initialized = true;
    }

    private GnssMeasurementsEvent(NativeObject nativeObject) {
        this.clock__is_initialized = false;
        this.measurements__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized GnssClock getClock() {
        try {
            if (!this.clock__is_initialized) {
                this.clock = getClock__Native();
                this.clock__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.clock;
    }

    public synchronized List<GnssMeasurement> getMeasurements() {
        try {
            if (!this.measurements__is_initialized) {
                this.measurements = getMeasurements__Native();
                this.measurements__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.measurements;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.clock = (GnssClock) archive.add(this.clock, false, (Class<GnssClock>) GnssClock.class);
            this.clock__is_initialized = true;
            List<GnssMeasurement> listAdd = archive.add((List) this.measurements, false, (ArchivingHandler) new ClassHandler(GnssMeasurement.class));
            this.measurements = listAdd;
            this.measurements__is_initialized = true;
            this.nativeObject = init(this.clock, listAdd);
            return;
        }
        archive.add(getClock(), false, (Class<GnssClock>) GnssClock.class);
        archive.add((List) getMeasurements(), false, (ArchivingHandler) new ClassHandler(GnssMeasurement.class));
    }

    public static String getNativeName() {
        return "yandex::maps::runtime::sensors::internal::GnssMeasurementsEvent";
    }
}
