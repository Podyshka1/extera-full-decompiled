package androidx.work.impl.model;

import androidx.work.Data;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class WorkProgress {
    private final Data progress;
    private final String workSpecId;

    public WorkProgress(String workSpecId, Data progress) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        Intrinsics.checkNotNullParameter(progress, "progress");
        this.workSpecId = workSpecId;
        this.progress = progress;
    }

    public final String getWorkSpecId() {
        return this.workSpecId;
    }

    public final Data getProgress() {
        return this.progress;
    }
}
