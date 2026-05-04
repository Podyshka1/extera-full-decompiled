package kotlinx.atomicfu;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.TraceBase;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AtomicFU {
    public static final AtomicRef atomic(Object obj, TraceBase trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        return new AtomicRef(obj, trace);
    }

    public static final AtomicRef atomic(Object obj) {
        return atomic(obj, TraceBase.None.INSTANCE);
    }

    public static final AtomicInt atomic(int i, TraceBase trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        return new AtomicInt(i, trace);
    }

    public static final AtomicInt atomic(int i) {
        return atomic(i, (TraceBase) TraceBase.None.INSTANCE);
    }

    public static final AtomicLong atomic(long j, TraceBase trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        return new AtomicLong(j, trace);
    }

    public static final AtomicLong atomic(long j) {
        return atomic(j, TraceBase.None.INSTANCE);
    }

    public static final AtomicBoolean atomic(boolean z, TraceBase trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        return new AtomicBoolean(z, trace);
    }

    public static final AtomicBoolean atomic(boolean z) {
        return atomic(z, TraceBase.None.INSTANCE);
    }
}
