package com.google.firebase.sessions;

import com.exteragram.messenger.api.dto.RegDateDTO$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class DataCollectionStatus {
    private final DataCollectionState crashlytics;
    private final DataCollectionState performance;
    private final double sessionSamplingRate;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DataCollectionStatus)) {
            return false;
        }
        DataCollectionStatus dataCollectionStatus = (DataCollectionStatus) obj;
        return this.performance == dataCollectionStatus.performance && this.crashlytics == dataCollectionStatus.crashlytics && Double.compare(this.sessionSamplingRate, dataCollectionStatus.sessionSamplingRate) == 0;
    }

    public int hashCode() {
        return (((this.performance.hashCode() * 31) + this.crashlytics.hashCode()) * 31) + RegDateDTO$$ExternalSyntheticBackport0.m226m(this.sessionSamplingRate);
    }

    public String toString() {
        return "DataCollectionStatus(performance=" + this.performance + ", crashlytics=" + this.crashlytics + ", sessionSamplingRate=" + this.sessionSamplingRate + ')';
    }

    public DataCollectionStatus(DataCollectionState performance, DataCollectionState crashlytics, double d) {
        Intrinsics.checkNotNullParameter(performance, "performance");
        Intrinsics.checkNotNullParameter(crashlytics, "crashlytics");
        this.performance = performance;
        this.crashlytics = crashlytics;
        this.sessionSamplingRate = d;
    }

    public final DataCollectionState getPerformance() {
        return this.performance;
    }

    public final DataCollectionState getCrashlytics() {
        return this.crashlytics;
    }

    public final double getSessionSamplingRate() {
        return this.sessionSamplingRate;
    }
}
