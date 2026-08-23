package androidx.work.impl.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class WorkSpecKt {
    public static final WorkGenerationalId generationalId(WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "<this>");
        return new WorkGenerationalId(workSpec.f76id, workSpec.getGeneration());
    }
}
