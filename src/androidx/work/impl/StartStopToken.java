package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class StartStopToken {

    /* JADX INFO: renamed from: id */
    private final WorkGenerationalId f75id;

    public StartStopToken(WorkGenerationalId id) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.f75id = id;
    }

    public final WorkGenerationalId getId() {
        return this.f75id;
    }
}
