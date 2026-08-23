package com.google.firebase.remoteconfig.interop.rollouts;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class RolloutsState {
    public abstract Set getRolloutAssignments();

    public static RolloutsState create(Set set) {
        return new AutoValue_RolloutsState(set);
    }
}
