package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.List;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_CrashlyticsReport_Session_Event_RolloutsState extends CrashlyticsReport.Session.Event.RolloutsState {
    private final List<CrashlyticsReport.Session.Event.RolloutAssignment> rolloutAssignments;

    private AutoValue_CrashlyticsReport_Session_Event_RolloutsState(List<CrashlyticsReport.Session.Event.RolloutAssignment> list) {
        this.rolloutAssignments = list;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutsState
    public List<CrashlyticsReport.Session.Event.RolloutAssignment> getRolloutAssignments() {
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
    public static final class Builder extends CrashlyticsReport.Session.Event.RolloutsState.Builder {
        private List<CrashlyticsReport.Session.Event.RolloutAssignment> rolloutAssignments;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutsState.Builder
        public CrashlyticsReport.Session.Event.RolloutsState.Builder setRolloutAssignments(List<CrashlyticsReport.Session.Event.RolloutAssignment> list) {
            if (list == null) {
                f$$ExternalSyntheticBUOutline2.m179m("Null rolloutAssignments");
                return null;
            }
            this.rolloutAssignments = list;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutsState.Builder
        public CrashlyticsReport.Session.Event.RolloutsState build() {
            List<CrashlyticsReport.Session.Event.RolloutAssignment> list = this.rolloutAssignments;
            if (list == null) {
                Segment$$ExternalSyntheticBUOutline1.m848m("Missing required properties: rolloutAssignments");
                return null;
            }
            return new AutoValue_CrashlyticsReport_Session_Event_RolloutsState(list);
        }
    }
}
