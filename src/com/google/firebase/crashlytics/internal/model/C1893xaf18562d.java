package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_ProfilingManagerInfo_ProfilingTrigger */
/* JADX INFO: loaded from: classes5.dex */
final class C1893xaf18562d extends CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger {
    private final int trigger;

    private C1893xaf18562d(int i) {
        this.trigger = i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger
    public int getTrigger() {
        return this.trigger;
    }

    public String toString() {
        return "ProfilingTrigger{trigger=" + this.trigger + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger) && this.trigger == ((CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger) obj).getTrigger();
    }

    public int hashCode() {
        return this.trigger ^ 1000003;
    }

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_ProfilingManagerInfo_ProfilingTrigger$Builder */
    public static final class Builder extends CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.Builder {
        private byte set$0;
        private int trigger;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.Builder
        public CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.Builder setTrigger(int i) {
            this.trigger = i;
            this.set$0 = (byte) (this.set$0 | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.Builder
        public CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger build() {
            if (this.set$0 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Missing required properties: trigger");
                return null;
            }
            return new C1893xaf18562d(this.trigger);
        }
    }
}
