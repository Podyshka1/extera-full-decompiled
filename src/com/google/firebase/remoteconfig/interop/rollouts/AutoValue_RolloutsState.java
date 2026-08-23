package com.google.firebase.remoteconfig.interop.rollouts;

import java.util.Set;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_RolloutsState extends RolloutsState {
    private final Set<RolloutAssignment> rolloutAssignments;

    public AutoValue_RolloutsState(Set<RolloutAssignment> set) {
        if (set == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null rolloutAssignments");
            throw null;
        }
        this.rolloutAssignments = set;
    }

    @Override // com.google.firebase.remoteconfig.interop.rollouts.RolloutsState
    public Set<RolloutAssignment> getRolloutAssignments() {
        return this.rolloutAssignments;
    }

    public String toString() {
        return "RolloutsState{rolloutAssignments=" + this.rolloutAssignments + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RolloutsState) {
            return this.rolloutAssignments.equals(((RolloutsState) obj).getRolloutAssignments());
        }
        return false;
    }

    public int hashCode() {
        return this.rolloutAssignments.hashCode() ^ 1000003;
    }
}
