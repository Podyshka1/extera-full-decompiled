package androidx.datastore.core;

import android.os.Build;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class FileMoves_androidKt {
    public static final boolean atomicMoveTo(File file, File toFile) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(toFile, "toFile");
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.INSTANCE.move(file, toFile);
        }
        return file.renameTo(toFile);
    }
}
