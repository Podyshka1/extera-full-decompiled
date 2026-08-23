package androidx.work.impl;

import androidx.work.Logger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class WorkDatabasePathHelperKt {
    private static final String[] DATABASE_EXTRA_FILES;
    private static final String TAG;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("WrkDbPathHelper");
        Intrinsics.checkNotNullExpressionValue(strTagWithPrefix, "tagWithPrefix(...)");
        TAG = strTagWithPrefix;
        DATABASE_EXTRA_FILES = new String[]{"-journal", "-shm", "-wal"};
    }
}
