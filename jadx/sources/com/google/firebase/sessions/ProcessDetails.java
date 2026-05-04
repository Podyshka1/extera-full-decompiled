package com.google.firebase.sessions;

import androidx.camera.camera2.adapter.EvCompValue$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessDetails {
    private final int importance;
    private final boolean isDefaultProcess;
    private final int pid;
    private final String processName;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProcessDetails)) {
            return false;
        }
        ProcessDetails processDetails = (ProcessDetails) obj;
        return Intrinsics.areEqual(this.processName, processDetails.processName) && this.pid == processDetails.pid && this.importance == processDetails.importance && this.isDefaultProcess == processDetails.isDefaultProcess;
    }

    public int hashCode() {
        return (((((this.processName.hashCode() * 31) + this.pid) * 31) + this.importance) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.isDefaultProcess);
    }

    public String toString() {
        return "ProcessDetails(processName=" + this.processName + ", pid=" + this.pid + ", importance=" + this.importance + ", isDefaultProcess=" + this.isDefaultProcess + ')';
    }

    public ProcessDetails(String processName, int i, int i2, boolean z) {
        Intrinsics.checkNotNullParameter(processName, "processName");
        this.processName = processName;
        this.pid = i;
        this.importance = i2;
        this.isDefaultProcess = z;
    }

    public final String getProcessName() {
        return this.processName;
    }

    public final int getPid() {
        return this.pid;
    }

    public final int getImportance() {
        return this.importance;
    }

    public final boolean isDefaultProcess() {
        return this.isDefaultProcess;
    }
}
