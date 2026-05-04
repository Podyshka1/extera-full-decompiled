package kotlin.p024io;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
abstract class FilesKt__FileTreeWalkKt extends FilesKt__FileReadWriteKt {
    public static final FileTreeWalk walk(File file, FileWalkDirection direction) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(direction, "direction");
        return new FileTreeWalk(file, direction);
    }

    public static final FileTreeWalk walkTopDown(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return walk(file, FileWalkDirection.TOP_DOWN);
    }

    public static final FileTreeWalk walkBottomUp(File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return walk(file, FileWalkDirection.BOTTOM_UP);
    }
}
