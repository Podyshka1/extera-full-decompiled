package androidx.work.impl.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class SystemIdInfoKt {
    public static final SystemIdInfo systemIdInfo(WorkGenerationalId generationalId, int i) {
        Intrinsics.checkNotNullParameter(generationalId, "generationalId");
        return new SystemIdInfo(generationalId.getWorkSpecId(), generationalId.getGeneration(), i);
    }
}
