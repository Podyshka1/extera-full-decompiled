package androidx.work;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class WorkerFactoryKt {
    private static final String TAG;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("WorkerFactory");
        Intrinsics.checkNotNullExpressionValue(strTagWithPrefix, "tagWithPrefix(...)");
        TAG = strTagWithPrefix;
    }
}
