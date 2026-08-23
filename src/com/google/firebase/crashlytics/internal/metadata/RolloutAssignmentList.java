package com.google.firebase.crashlytics.internal.metadata;

import com.google.firebase.crashlytics.internal.Logger;
import java.util.ArrayList;
import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public class RolloutAssignmentList {
    private final int maxEntries;
    private final List rolloutsState = new ArrayList();

    public RolloutAssignmentList(int i) {
        this.maxEntries = i;
    }

    public synchronized List getRolloutAssignmentList() {
        return DesugarCollections.unmodifiableList(new ArrayList(this.rolloutsState));
    }

    public synchronized boolean updateRolloutAssignmentList(List list) {
        this.rolloutsState.clear();
        if (list.size() > this.maxEntries) {
            Logger.getLogger().m509w("Ignored 0 entries when adding rollout assignments. Maximum allowable: " + this.maxEntries);
            return this.rolloutsState.addAll(list.subList(0, this.maxEntries));
        }
        return this.rolloutsState.addAll(list);
    }

    public List getReportRolloutsState() {
        List rolloutAssignmentList = getRolloutAssignmentList();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < rolloutAssignmentList.size(); i++) {
            arrayList.add(((RolloutAssignment) rolloutAssignmentList.get(i)).toReportProto());
        }
        return arrayList;
    }
}
