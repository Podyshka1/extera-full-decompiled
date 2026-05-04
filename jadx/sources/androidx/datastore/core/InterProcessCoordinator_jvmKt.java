package androidx.datastore.core;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class InterProcessCoordinator_jvmKt {
    public static final InterProcessCoordinator createSingleProcessCoordinator(File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        String absolutePath = file.getCanonicalFile().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "file.canonicalFile.absolutePath");
        return InterProcessCoordinatorKt.createSingleProcessCoordinator(absolutePath);
    }
}
