package com.yandex.runtime.sensors.internal;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class GnssMeasurement implements Serializable {
    private double accumulatedDeltaRangeMeters;
    private boolean accumulatedDeltaRangeMeters__is_initialized;
    private int accumulatedDeltaRangeState;
    private boolean accumulatedDeltaRangeState__is_initialized;
    private double accumulatedDeltaRangeUncertaintyMeters;
    private boolean accumulatedDeltaRangeUncertaintyMeters__is_initialized;
    private Long carrierCycles;
    private boolean carrierCycles__is_initialized;
    private Float carrierFrequencyHz;
    private boolean carrierFrequencyHz__is_initialized;
    private Double carrierPhase;
    private Double carrierPhaseUncertainty;
    private boolean carrierPhaseUncertainty__is_initialized;
    private boolean carrierPhase__is_initialized;
    private double cn0DbHz;
    private boolean cn0DbHz__is_initialized;
    private int constellationType;
    private boolean constellationType__is_initialized;
    private int multipathIndicator;
    private boolean multipathIndicator__is_initialized;
    private NativeObject nativeObject;
    private double pseudorangeRateMetersPerSecond;
    private boolean pseudorangeRateMetersPerSecond__is_initialized;
    private double pseudorangeRateUncertaintyMetersPerSecond;
    private boolean pseudorangeRateUncertaintyMetersPerSecond__is_initialized;
    private long receivedSvTimeNanos;
    private boolean receivedSvTimeNanos__is_initialized;
    private long receivedSvTimeUncertaintyNanos;
    private boolean receivedSvTimeUncertaintyNanos__is_initialized;
    private Double snrInDb;
    private boolean snrInDb__is_initialized;
    private int state;
    private boolean state__is_initialized;
    private int svid;
    private boolean svid__is_initialized;
    private double timeOffsetNanos;
    private boolean timeOffsetNanos__is_initialized;

    private native double getAccumulatedDeltaRangeMeters__Native();

    private native int getAccumulatedDeltaRangeState__Native();

    private native double getAccumulatedDeltaRangeUncertaintyMeters__Native();

    private native Long getCarrierCycles__Native();

    private native Float getCarrierFrequencyHz__Native();

    private native Double getCarrierPhaseUncertainty__Native();

    private native Double getCarrierPhase__Native();

    private native double getCn0DbHz__Native();

    private native int getConstellationType__Native();

    private native int getMultipathIndicator__Native();

    private native double getPseudorangeRateMetersPerSecond__Native();

    private native double getPseudorangeRateUncertaintyMetersPerSecond__Native();

    private native long getReceivedSvTimeNanos__Native();

    private native long getReceivedSvTimeUncertaintyNanos__Native();

    private native Double getSnrInDb__Native();

    private native int getState__Native();

    private native int getSvid__Native();

    private native double getTimeOffsetNanos__Native();

    private native NativeObject init(int i, int i2, double d, int i3, double d2, Float f, double d3, double d4, double d5, long j, long j2, Double d6, int i4, double d7, int i5, Long l, Double d8, Double d9);

    public GnssMeasurement() {
        this.constellationType__is_initialized = false;
        this.svid__is_initialized = false;
        this.accumulatedDeltaRangeMeters__is_initialized = false;
        this.accumulatedDeltaRangeState__is_initialized = false;
        this.accumulatedDeltaRangeUncertaintyMeters__is_initialized = false;
        this.carrierFrequencyHz__is_initialized = false;
        this.cn0DbHz__is_initialized = false;
        this.pseudorangeRateMetersPerSecond__is_initialized = false;
        this.pseudorangeRateUncertaintyMetersPerSecond__is_initialized = false;
        this.receivedSvTimeNanos__is_initialized = false;
        this.receivedSvTimeUncertaintyNanos__is_initialized = false;
        this.snrInDb__is_initialized = false;
        this.state__is_initialized = false;
        this.timeOffsetNanos__is_initialized = false;
        this.multipathIndicator__is_initialized = false;
        this.carrierCycles__is_initialized = false;
        this.carrierPhase__is_initialized = false;
        this.carrierPhaseUncertainty__is_initialized = false;
    }

    public GnssMeasurement(int i, int i2, double d, int i3, double d2, Float f, double d3, double d4, double d5, long j, long j2, Double d6, int i4, double d7, int i5, Long l, Double d8, Double d9) {
        this.constellationType__is_initialized = false;
        this.svid__is_initialized = false;
        this.accumulatedDeltaRangeMeters__is_initialized = false;
        this.accumulatedDeltaRangeState__is_initialized = false;
        this.accumulatedDeltaRangeUncertaintyMeters__is_initialized = false;
        this.carrierFrequencyHz__is_initialized = false;
        this.cn0DbHz__is_initialized = false;
        this.pseudorangeRateMetersPerSecond__is_initialized = false;
        this.pseudorangeRateUncertaintyMetersPerSecond__is_initialized = false;
        this.receivedSvTimeNanos__is_initialized = false;
        this.receivedSvTimeUncertaintyNanos__is_initialized = false;
        this.snrInDb__is_initialized = false;
        this.state__is_initialized = false;
        this.timeOffsetNanos__is_initialized = false;
        this.multipathIndicator__is_initialized = false;
        this.carrierCycles__is_initialized = false;
        this.carrierPhase__is_initialized = false;
        this.carrierPhaseUncertainty__is_initialized = false;
        this.nativeObject = init(i, i2, d, i3, d2, f, d3, d4, d5, j, j2, d6, i4, d7, i5, l, d8, d9);
        this.constellationType = i;
        this.constellationType__is_initialized = true;
        this.svid = i2;
        this.svid__is_initialized = true;
        this.accumulatedDeltaRangeMeters = d;
        this.accumulatedDeltaRangeMeters__is_initialized = true;
        this.accumulatedDeltaRangeState = i3;
        this.accumulatedDeltaRangeState__is_initialized = true;
        this.accumulatedDeltaRangeUncertaintyMeters = d2;
        this.accumulatedDeltaRangeUncertaintyMeters__is_initialized = true;
        this.carrierFrequencyHz = f;
        this.carrierFrequencyHz__is_initialized = true;
        this.cn0DbHz = d3;
        this.cn0DbHz__is_initialized = true;
        this.pseudorangeRateMetersPerSecond = d4;
        this.pseudorangeRateMetersPerSecond__is_initialized = true;
        this.pseudorangeRateUncertaintyMetersPerSecond = d5;
        this.pseudorangeRateUncertaintyMetersPerSecond__is_initialized = true;
        this.receivedSvTimeNanos = j;
        this.receivedSvTimeNanos__is_initialized = true;
        this.receivedSvTimeUncertaintyNanos = j2;
        this.receivedSvTimeUncertaintyNanos__is_initialized = true;
        this.snrInDb = d6;
        this.snrInDb__is_initialized = true;
        this.state = i4;
        this.state__is_initialized = true;
        this.timeOffsetNanos = d7;
        this.timeOffsetNanos__is_initialized = true;
        this.multipathIndicator = i5;
        this.multipathIndicator__is_initialized = true;
        this.carrierCycles = l;
        this.carrierCycles__is_initialized = true;
        this.carrierPhase = d8;
        this.carrierPhase__is_initialized = true;
        this.carrierPhaseUncertainty = d9;
        this.carrierPhaseUncertainty__is_initialized = true;
    }

    private GnssMeasurement(NativeObject nativeObject) {
        this.constellationType__is_initialized = false;
        this.svid__is_initialized = false;
        this.accumulatedDeltaRangeMeters__is_initialized = false;
        this.accumulatedDeltaRangeState__is_initialized = false;
        this.accumulatedDeltaRangeUncertaintyMeters__is_initialized = false;
        this.carrierFrequencyHz__is_initialized = false;
        this.cn0DbHz__is_initialized = false;
        this.pseudorangeRateMetersPerSecond__is_initialized = false;
        this.pseudorangeRateUncertaintyMetersPerSecond__is_initialized = false;
        this.receivedSvTimeNanos__is_initialized = false;
        this.receivedSvTimeUncertaintyNanos__is_initialized = false;
        this.snrInDb__is_initialized = false;
        this.state__is_initialized = false;
        this.timeOffsetNanos__is_initialized = false;
        this.multipathIndicator__is_initialized = false;
        this.carrierCycles__is_initialized = false;
        this.carrierPhase__is_initialized = false;
        this.carrierPhaseUncertainty__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized int getConstellationType() {
        try {
            if (!this.constellationType__is_initialized) {
                this.constellationType = getConstellationType__Native();
                this.constellationType__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.constellationType;
    }

    public synchronized int getSvid() {
        try {
            if (!this.svid__is_initialized) {
                this.svid = getSvid__Native();
                this.svid__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.svid;
    }

    public synchronized double getAccumulatedDeltaRangeMeters() {
        try {
            if (!this.accumulatedDeltaRangeMeters__is_initialized) {
                this.accumulatedDeltaRangeMeters = getAccumulatedDeltaRangeMeters__Native();
                this.accumulatedDeltaRangeMeters__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.accumulatedDeltaRangeMeters;
    }

    public synchronized int getAccumulatedDeltaRangeState() {
        try {
            if (!this.accumulatedDeltaRangeState__is_initialized) {
                this.accumulatedDeltaRangeState = getAccumulatedDeltaRangeState__Native();
                this.accumulatedDeltaRangeState__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.accumulatedDeltaRangeState;
    }

    public synchronized double getAccumulatedDeltaRangeUncertaintyMeters() {
        try {
            if (!this.accumulatedDeltaRangeUncertaintyMeters__is_initialized) {
                this.accumulatedDeltaRangeUncertaintyMeters = getAccumulatedDeltaRangeUncertaintyMeters__Native();
                this.accumulatedDeltaRangeUncertaintyMeters__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.accumulatedDeltaRangeUncertaintyMeters;
    }

    public synchronized Float getCarrierFrequencyHz() {
        try {
            if (!this.carrierFrequencyHz__is_initialized) {
                this.carrierFrequencyHz = getCarrierFrequencyHz__Native();
                this.carrierFrequencyHz__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.carrierFrequencyHz;
    }

    public synchronized double getCn0DbHz() {
        try {
            if (!this.cn0DbHz__is_initialized) {
                this.cn0DbHz = getCn0DbHz__Native();
                this.cn0DbHz__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.cn0DbHz;
    }

    public synchronized double getPseudorangeRateMetersPerSecond() {
        try {
            if (!this.pseudorangeRateMetersPerSecond__is_initialized) {
                this.pseudorangeRateMetersPerSecond = getPseudorangeRateMetersPerSecond__Native();
                this.pseudorangeRateMetersPerSecond__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.pseudorangeRateMetersPerSecond;
    }

    public synchronized double getPseudorangeRateUncertaintyMetersPerSecond() {
        try {
            if (!this.pseudorangeRateUncertaintyMetersPerSecond__is_initialized) {
                this.pseudorangeRateUncertaintyMetersPerSecond = getPseudorangeRateUncertaintyMetersPerSecond__Native();
                this.pseudorangeRateUncertaintyMetersPerSecond__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.pseudorangeRateUncertaintyMetersPerSecond;
    }

    public synchronized long getReceivedSvTimeNanos() {
        try {
            if (!this.receivedSvTimeNanos__is_initialized) {
                this.receivedSvTimeNanos = getReceivedSvTimeNanos__Native();
                this.receivedSvTimeNanos__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.receivedSvTimeNanos;
    }

    public synchronized long getReceivedSvTimeUncertaintyNanos() {
        try {
            if (!this.receivedSvTimeUncertaintyNanos__is_initialized) {
                this.receivedSvTimeUncertaintyNanos = getReceivedSvTimeUncertaintyNanos__Native();
                this.receivedSvTimeUncertaintyNanos__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.receivedSvTimeUncertaintyNanos;
    }

    public synchronized Double getSnrInDb() {
        try {
            if (!this.snrInDb__is_initialized) {
                this.snrInDb = getSnrInDb__Native();
                this.snrInDb__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.snrInDb;
    }

    public synchronized int getState() {
        try {
            if (!this.state__is_initialized) {
                this.state = getState__Native();
                this.state__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.state;
    }

    public synchronized double getTimeOffsetNanos() {
        try {
            if (!this.timeOffsetNanos__is_initialized) {
                this.timeOffsetNanos = getTimeOffsetNanos__Native();
                this.timeOffsetNanos__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.timeOffsetNanos;
    }

    public synchronized int getMultipathIndicator() {
        try {
            if (!this.multipathIndicator__is_initialized) {
                this.multipathIndicator = getMultipathIndicator__Native();
                this.multipathIndicator__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.multipathIndicator;
    }

    public synchronized Long getCarrierCycles() {
        try {
            if (!this.carrierCycles__is_initialized) {
                this.carrierCycles = getCarrierCycles__Native();
                this.carrierCycles__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.carrierCycles;
    }

    public synchronized Double getCarrierPhase() {
        try {
            if (!this.carrierPhase__is_initialized) {
                this.carrierPhase = getCarrierPhase__Native();
                this.carrierPhase__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.carrierPhase;
    }

    public synchronized Double getCarrierPhaseUncertainty() {
        try {
            if (!this.carrierPhaseUncertainty__is_initialized) {
                this.carrierPhaseUncertainty = getCarrierPhaseUncertainty__Native();
                this.carrierPhaseUncertainty__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.carrierPhaseUncertainty;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.constellationType = archive.add(this.constellationType);
            this.constellationType__is_initialized = true;
            this.svid = archive.add(this.svid);
            this.svid__is_initialized = true;
            this.accumulatedDeltaRangeMeters = archive.add(this.accumulatedDeltaRangeMeters);
            this.accumulatedDeltaRangeMeters__is_initialized = true;
            this.accumulatedDeltaRangeState = archive.add(this.accumulatedDeltaRangeState);
            this.accumulatedDeltaRangeState__is_initialized = true;
            this.accumulatedDeltaRangeUncertaintyMeters = archive.add(this.accumulatedDeltaRangeUncertaintyMeters);
            this.accumulatedDeltaRangeUncertaintyMeters__is_initialized = true;
            this.carrierFrequencyHz = archive.add(this.carrierFrequencyHz, true);
            this.carrierFrequencyHz__is_initialized = true;
            this.cn0DbHz = archive.add(this.cn0DbHz);
            this.cn0DbHz__is_initialized = true;
            this.pseudorangeRateMetersPerSecond = archive.add(this.pseudorangeRateMetersPerSecond);
            this.pseudorangeRateMetersPerSecond__is_initialized = true;
            this.pseudorangeRateUncertaintyMetersPerSecond = archive.add(this.pseudorangeRateUncertaintyMetersPerSecond);
            this.pseudorangeRateUncertaintyMetersPerSecond__is_initialized = true;
            this.receivedSvTimeNanos = archive.add(this.receivedSvTimeNanos);
            this.receivedSvTimeNanos__is_initialized = true;
            this.receivedSvTimeUncertaintyNanos = archive.add(this.receivedSvTimeUncertaintyNanos);
            this.receivedSvTimeUncertaintyNanos__is_initialized = true;
            this.snrInDb = archive.add(this.snrInDb, true);
            this.snrInDb__is_initialized = true;
            this.state = archive.add(this.state);
            this.state__is_initialized = true;
            this.timeOffsetNanos = archive.add(this.timeOffsetNanos);
            this.timeOffsetNanos__is_initialized = true;
            this.multipathIndicator = archive.add(this.multipathIndicator);
            this.multipathIndicator__is_initialized = true;
            this.carrierCycles = archive.add(this.carrierCycles, true);
            this.carrierCycles__is_initialized = true;
            this.carrierPhase = archive.add(this.carrierPhase, true);
            this.carrierPhase__is_initialized = true;
            Double dAdd = archive.add(this.carrierPhaseUncertainty, true);
            this.carrierPhaseUncertainty = dAdd;
            this.carrierPhaseUncertainty__is_initialized = true;
            this.nativeObject = init(this.constellationType, this.svid, this.accumulatedDeltaRangeMeters, this.accumulatedDeltaRangeState, this.accumulatedDeltaRangeUncertaintyMeters, this.carrierFrequencyHz, this.cn0DbHz, this.pseudorangeRateMetersPerSecond, this.pseudorangeRateUncertaintyMetersPerSecond, this.receivedSvTimeNanos, this.receivedSvTimeUncertaintyNanos, this.snrInDb, this.state, this.timeOffsetNanos, this.multipathIndicator, this.carrierCycles, this.carrierPhase, dAdd);
            return;
        }
        archive.add(getConstellationType());
        archive.add(getSvid());
        archive.add(getAccumulatedDeltaRangeMeters());
        archive.add(getAccumulatedDeltaRangeState());
        archive.add(getAccumulatedDeltaRangeUncertaintyMeters());
        archive.add(getCarrierFrequencyHz(), true);
        archive.add(getCn0DbHz());
        archive.add(getPseudorangeRateMetersPerSecond());
        archive.add(getPseudorangeRateUncertaintyMetersPerSecond());
        archive.add(getReceivedSvTimeNanos());
        archive.add(getReceivedSvTimeUncertaintyNanos());
        archive.add(getSnrInDb(), true);
        archive.add(getState());
        archive.add(getTimeOffsetNanos());
        archive.add(getMultipathIndicator());
        archive.add(getCarrierCycles(), true);
        archive.add(getCarrierPhase(), true);
        archive.add(getCarrierPhaseUncertainty(), true);
    }

    public static String getNativeName() {
        return "yandex::maps::runtime::sensors::internal::GnssMeasurement";
    }
}
