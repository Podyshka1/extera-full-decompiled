package androidx.work.impl.utils;

import androidx.core.util.Consumer;
import androidx.work.Logger;
import androidx.work.WorkerExceptionInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class WorkerExceptionUtilsKt {
    public static final void safeAccept(Consumer consumer, WorkerExceptionInfo info, String tag) {
        Intrinsics.checkNotNullParameter(consumer, "<this>");
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(tag, "tag");
        try {
            consumer.accept(info);
        } catch (Throwable th) {
            Logger.get().error(tag, "Exception handler threw an exception", th);
        }
    }
}
