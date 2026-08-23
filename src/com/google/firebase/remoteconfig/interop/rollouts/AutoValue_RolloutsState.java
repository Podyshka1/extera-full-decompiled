package com.google.firebase.remoteconfig.interop.rollouts;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_RolloutsState extends RolloutsState {
    private final Set rolloutAssignments;

    AutoValue_RolloutsState(Set set) {
        if (set == null) {
            throw new NullPointerException("Null rolloutAssignments");
        }
        this.rolloutAssignments = set;
    }

    @Override // com.google.firebase.remoteconfig.interop.rollouts.RolloutsState
    public Set getRolloutAssignments() {
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
