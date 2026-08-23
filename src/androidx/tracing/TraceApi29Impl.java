package androidx.tracing;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class TraceApi29Impl {
    public static final TraceApi29Impl INSTANCE = new TraceApi29Impl();

    private TraceApi29Impl() {
    }

    public final boolean isEnabled() {
        return android.os.Trace.isEnabled();
    }

    public final void beginAsyncSection(String methodName, int i) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        android.os.Trace.beginAsyncSection(methodName, i);
    }

    public final void endAsyncSection(String methodName, int i) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        android.os.Trace.endAsyncSection(methodName, i);
    }

    public final void setCounter(String counterName, int i) {
        Intrinsics.checkNotNullParameter(counterName, "counterName");
        android.os.Trace.setCounter(counterName, i);
    }
}
