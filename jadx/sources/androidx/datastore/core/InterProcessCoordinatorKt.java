package androidx.datastore.core;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class InterProcessCoordinatorKt {
    public static final InterProcessCoordinator createSingleProcessCoordinator(String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        return new SingleProcessCoordinator(filePath);
    }
}
