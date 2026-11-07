package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
final class AutoValue_CrashlyticsReport_ProfilingManagerInfo extends CrashlyticsReport.ProfilingManagerInfo {
    private final CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger profilingTrigger;

    private AutoValue_CrashlyticsReport_ProfilingManagerInfo(CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger profilingTrigger) {
        this.profilingTrigger = profilingTrigger;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo
    public CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger getProfilingTrigger() {
        return this.profilingTrigger;
    }

    public String toString() {
        return "ProfilingManagerInfo{profilingTrigger=" + this.profilingTrigger + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.ProfilingManagerInfo) {
            return this.profilingTrigger.equals(((CrashlyticsReport.ProfilingManagerInfo) obj).getProfilingTrigger());
        }
        return false;
    }

    public int hashCode() {
        return this.profilingTrigger.hashCode() ^ 1000003;
    }

    public static final class Builder extends CrashlyticsReport.ProfilingManagerInfo.Builder {
        private CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger profilingTrigger;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.Builder
        public CrashlyticsReport.ProfilingManagerInfo.Builder setProfilingTrigger(CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger profilingTrigger) {
            if (profilingTrigger == null) {
                f$$ExternalSyntheticBUOutline2.m216m("Null profilingTrigger");
                return null;
            }
            this.profilingTrigger = profilingTrigger;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.Builder
        public CrashlyticsReport.ProfilingManagerInfo build() {
            CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger profilingTrigger = this.profilingTrigger;
            if (profilingTrigger == null) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Missing required properties: profilingTrigger");
                return null;
            }
            return new AutoValue_CrashlyticsReport_ProfilingManagerInfo(profilingTrigger);
        }
    }
}
