package androidx.room.concurrent;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ThreadContextElementKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ThreadLocal_jvmAndroidKt {
    public static final CoroutineContext.Element asContextElement(ThreadLocal threadLocal, Object obj) {
        Intrinsics.checkNotNullParameter(threadLocal, "<this>");
        return ThreadContextElementKt.asContextElement(threadLocal, obj);
    }

    public static final long currentThreadId() {
        return Thread.currentThread().getId();
    }
}
