package androidx.work.impl.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class SystemIdInfo {
    private final int generation;
    public final int systemId;
    public final String workSpecId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SystemIdInfo)) {
            return false;
        }
        SystemIdInfo systemIdInfo = (SystemIdInfo) obj;
        return Intrinsics.areEqual(this.workSpecId, systemIdInfo.workSpecId) && this.generation == systemIdInfo.generation && this.systemId == systemIdInfo.systemId;
    }

    public int hashCode() {
        return (((this.workSpecId.hashCode() * 31) + this.generation) * 31) + this.systemId;
    }

    public String toString() {
        return "SystemIdInfo(workSpecId=" + this.workSpecId + ", generation=" + this.generation + ", systemId=" + this.systemId + ')';
    }

    public SystemIdInfo(String workSpecId, int i, int i2) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        this.workSpecId = workSpecId;
        this.generation = i;
        this.systemId = i2;
    }

    public final int getGeneration() {
        return this.generation;
    }
}
