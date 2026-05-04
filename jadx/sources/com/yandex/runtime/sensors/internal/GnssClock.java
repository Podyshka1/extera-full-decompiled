package com.yandex.runtime.sensors.internal;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class GnssClock implements Serializable {
    private Double biasNanos;
    private boolean biasNanos__is_initialized;
    private Double biasUncertaintyNanos;
    private boolean biasUncertaintyNanos__is_initialized;
    private Double driftNanosPerSecond;
    private boolean driftNanosPerSecond__is_initialized;
    private Double driftNanosUncertaintyPerSecond;
    private boolean driftNanosUncertaintyPerSecond__is_initialized;
    private Long fullBiasNanos;
    private boolean fullBiasNanos__is_initialized;
    private int hardwareClockDiscontinuityCount;
    private boolean hardwareClockDiscontinuityCount__is_initialized;
    private Integer leapSecond;
    private boolean leapSecond__is_initialized;
    private NativeObject nativeObject;
    private long timeNanos;
    private boolean timeNanos__is_initialized;
    private Double timeUncertaintyNanos;
    private boolean timeUncertaintyNanos__is_initialized;

    private native Double getBiasNanos__Native();

    private native Double getBiasUncertaintyNanos__Native();

    private native Double getDriftNanosPerSecond__Native();

    private native Double getDriftNanosUncertaintyPerSecond__Native();

    private native Long getFullBiasNanos__Native();

    private native int getHardwareClockDiscontinuityCount__Native();

    private native Integer getLeapSecond__Native();

    private native long getTimeNanos__Native();

    private native Double getTimeUncertaintyNanos__Native();

    private native NativeObject init(long j, Double d, Integer num, Long l, Double d2, Double d3, Double d4, Double d5, int i);

    public GnssClock() {
        this.timeNanos__is_initialized = false;
        this.timeUncertaintyNanos__is_initialized = false;
        this.leapSecond__is_initialized = false;
        this.fullBiasNanos__is_initialized = false;
        this.biasNanos__is_initialized = false;
        this.biasUncertaintyNanos__is_initialized = false;
        this.driftNanosPerSecond__is_initialized = false;
        this.driftNanosUncertaintyPerSecond__is_initialized = false;
        this.hardwareClockDiscontinuityCount__is_initialized = false;
    }

    public GnssClock(long j, Double d, Integer num, Long l, Double d2, Double d3, Double d4, Double d5, int i) {
        this.timeNanos__is_initialized = false;
        this.timeUncertaintyNanos__is_initialized = false;
        this.leapSecond__is_initialized = false;
        this.fullBiasNanos__is_initialized = false;
        this.biasNanos__is_initialized = false;
        this.biasUncertaintyNanos__is_initialized = false;
        this.driftNanosPerSecond__is_initialized = false;
        this.driftNanosUncertaintyPerSecond__is_initialized = false;
        this.hardwareClockDiscontinuityCount__is_initialized = false;
        this.nativeObject = init(j, d, num, l, d2, d3, d4, d5, i);
        this.timeNanos = j;
        this.timeNanos__is_initialized = true;
        this.timeUncertaintyNanos = d;
        this.timeUncertaintyNanos__is_initialized = true;
        this.leapSecond = num;
        this.leapSecond__is_initialized = true;
        this.fullBiasNanos = l;
        this.fullBiasNanos__is_initialized = true;
        this.biasNanos = d2;
        this.biasNanos__is_initialized = true;
        this.biasUncertaintyNanos = d3;
        this.biasUncertaintyNanos__is_initialized = true;
        this.driftNanosPerSecond = d4;
        this.driftNanosPerSecond__is_initialized = true;
        this.driftNanosUncertaintyPerSecond = d5;
        this.driftNanosUncertaintyPerSecond__is_initialized = true;
        this.hardwareClockDiscontinuityCount = i;
        this.hardwareClockDiscontinuityCount__is_initialized = true;
    }

    private GnssClock(NativeObject nativeObject) {
        this.timeNanos__is_initialized = false;
        this.timeUncertaintyNanos__is_initialized = false;
        this.leapSecond__is_initialized = false;
        this.fullBiasNanos__is_initialized = false;
        this.biasNanos__is_initialized = false;
        this.biasUncertaintyNanos__is_initialized = false;
        this.driftNanosPerSecond__is_initialized = false;
        this.driftNanosUncertaintyPerSecond__is_initialized = false;
        this.hardwareClockDiscontinuityCount__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized long getTimeNanos() {
        try {
            if (!this.timeNanos__is_initialized) {
                this.timeNanos = getTimeNanos__Native();
                this.timeNanos__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.timeNanos;
    }

    public synchronized Double getTimeUncertaintyNanos() {
        try {
            if (!this.timeUncertaintyNanos__is_initialized) {
                this.timeUncertaintyNanos = getTimeUncertaintyNanos__Native();
                this.timeUncertaintyNanos__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.timeUncertaintyNanos;
    }

    public synchronized Integer getLeapSecond() {
        try {
            if (!this.leapSecond__is_initialized) {
                this.leapSecond = getLeapSecond__Native();
                this.leapSecond__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.leapSecond;
    }

    public synchronized Long getFullBiasNanos() {
        try {
            if (!this.fullBiasNanos__is_initialized) {
                this.fullBiasNanos = getFullBiasNanos__Native();
                this.fullBiasNanos__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.fullBiasNanos;
    }

    public synchronized Double getBiasNanos() {
        try {
            if (!this.biasNanos__is_initialized) {
                this.biasNanos = getBiasNanos__Native();
                this.biasNanos__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.biasNanos;
    }

    public synchronized Double getBiasUncertaintyNanos() {
        try {
            if (!this.biasUncertaintyNanos__is_initialized) {
                this.biasUncertaintyNanos = getBiasUncertaintyNanos__Native();
                this.biasUncertaintyNanos__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.biasUncertaintyNanos;
    }

    public synchronized Double getDriftNanosPerSecond() {
        try {
            if (!this.driftNanosPerSecond__is_initialized) {
                this.driftNanosPerSecond = getDriftNanosPerSecond__Native();
                this.driftNanosPerSecond__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.driftNanosPerSecond;
    }

    public synchronized Double getDriftNanosUncertaintyPerSecond() {
        try {
            if (!this.driftNanosUncertaintyPerSecond__is_initialized) {
                this.driftNanosUncertaintyPerSecond = getDriftNanosUncertaintyPerSecond__Native();
                this.driftNanosUncertaintyPerSecond__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.driftNanosUncertaintyPerSecond;
    }

    public synchronized int getHardwareClockDiscontinuityCount() {
        try {
            if (!this.hardwareClockDiscontinuityCount__is_initialized) {
                this.hardwareClockDiscontinuityCount = getHardwareClockDiscontinuityCount__Native();
                this.hardwareClockDiscontinuityCount__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.hardwareClockDiscontinuityCount;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.timeNanos = archive.add(this.timeNanos);
            this.timeNanos__is_initialized = true;
            this.timeUncertaintyNanos = archive.add(this.timeUncertaintyNanos, true);
            this.timeUncertaintyNanos__is_initialized = true;
            this.leapSecond = archive.add(this.leapSecond, true);
            this.leapSecond__is_initialized = true;
            this.fullBiasNanos = archive.add(this.fullBiasNanos, true);
            this.fullBiasNanos__is_initialized = true;
            this.biasNanos = archive.add(this.biasNanos, true);
            this.biasNanos__is_initialized = true;
            this.biasUncertaintyNanos = archive.add(this.biasUncertaintyNanos, true);
            this.biasUncertaintyNanos__is_initialized = true;
            this.driftNanosPerSecond = archive.add(this.driftNanosPerSecond, true);
            this.driftNanosPerSecond__is_initialized = true;
            this.driftNanosUncertaintyPerSecond = archive.add(this.driftNanosUncertaintyPerSecond, true);
            this.driftNanosUncertaintyPerSecond__is_initialized = true;
            int iAdd = archive.add(this.hardwareClockDiscontinuityCount);
            this.hardwareClockDiscontinuityCount = iAdd;
            this.hardwareClockDiscontinuityCount__is_initialized = true;
            this.nativeObject = init(this.timeNanos, this.timeUncertaintyNanos, this.leapSecond, this.fullBiasNanos, this.biasNanos, this.biasUncertaintyNanos, this.driftNanosPerSecond, this.driftNanosUncertaintyPerSecond, iAdd);
            return;
        }
        archive.add(getTimeNanos());
        archive.add(getTimeUncertaintyNanos(), true);
        archive.add(getLeapSecond(), true);
        archive.add(getFullBiasNanos(), true);
        archive.add(getBiasNanos(), true);
        archive.add(getBiasUncertaintyNanos(), true);
        archive.add(getDriftNanosPerSecond(), true);
        archive.add(getDriftNanosUncertaintyPerSecond(), true);
        archive.add(getHardwareClockDiscontinuityCount());
    }

    public static String getNativeName() {
        return "yandex::maps::runtime::sensors::internal::GnssClock";
    }
}
