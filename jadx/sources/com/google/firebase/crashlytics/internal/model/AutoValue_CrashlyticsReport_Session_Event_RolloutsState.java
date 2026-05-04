package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_CrashlyticsReport_Session_Event_RolloutsState extends CrashlyticsReport.Session.Event.RolloutsState {
    private final List rolloutAssignments;

    private AutoValue_CrashlyticsReport_Session_Event_RolloutsState(List list) {
        this.rolloutAssignments = list;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutsState
    public List getRolloutAssignments() {
        return this.rolloutAssignments;
    }

    public String toString() {
        return "RolloutsState{rolloutAssignments=" + this.rolloutAssignments + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.Session.Event.RolloutsState) {
            return this.rolloutAssignments.equals(((CrashlyticsReport.Session.Event.RolloutsState) obj).getRolloutAssignments());
        }
        return false;
    }

    public int hashCode() {
        return this.rolloutAssignments.hashCode() ^ 1000003;
    }

    /* JADX INFO: loaded from: classes5.dex */
    static final class Builder extends CrashlyticsReport.Session.Event.RolloutsState.Builder {
        private List rolloutAssignments;

        Builder() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutsState.Builder
        public CrashlyticsReport.Session.Event.RolloutsState.Builder setRolloutAssignments(List list) {
            if (list == null) {
                throw new NullPointerException("Null rolloutAssignments");
            }
            this.rolloutAssignments = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutsState.Builder
        public CrashlyticsReport.Session.Event.RolloutsState build() {
            List list = this.rolloutAssignments;
            if (list == null) {
                throw new IllegalStateException("Missing required properties: rolloutAssignments");
            }
            return new AutoValue_CrashlyticsReport_Session_Event_RolloutsState(list);
        }
    }
}
