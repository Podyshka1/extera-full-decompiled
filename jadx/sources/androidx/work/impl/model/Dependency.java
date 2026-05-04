package androidx.work.impl.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Dependency {
    private final String prerequisiteId;
    private final String workSpecId;

    public Dependency(String workSpecId, String prerequisiteId) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        Intrinsics.checkNotNullParameter(prerequisiteId, "prerequisiteId");
        this.workSpecId = workSpecId;
        this.prerequisiteId = prerequisiteId;
    }

    public final String getWorkSpecId() {
        return this.workSpecId;
    }

    public final String getPrerequisiteId() {
        return this.prerequisiteId;
    }
}
