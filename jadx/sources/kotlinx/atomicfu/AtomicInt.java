package kotlinx.atomicfu;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.TraceBase;

/* JADX INFO: loaded from: classes5.dex */
public final class AtomicInt {
    private static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: FU */
    private static final AtomicIntegerFieldUpdater f1539FU = AtomicIntegerFieldUpdater.newUpdater(AtomicInt.class, "value");
    private final TraceBase trace;
    private volatile int value;

    public AtomicInt(int i, TraceBase trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        this.trace = trace;
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }

    public final void setValue(int i) {
        this.value = i;
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("set(" + i + ')');
        }
    }

    public final boolean compareAndSet(int i, int i2) {
        TraceBase traceBase;
        boolean zCompareAndSet = f1539FU.compareAndSet(this, i, i2);
        if (zCompareAndSet && (traceBase = this.trace) != TraceBase.None.INSTANCE) {
            traceBase.append("CAS(" + i + ", " + i2 + ')');
        }
        return zCompareAndSet;
    }

    public final int incrementAndGet() {
        int iIncrementAndGet = f1539FU.incrementAndGet(this);
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("incAndGet():" + iIncrementAndGet);
        }
        return iIncrementAndGet;
    }

    public final int decrementAndGet() {
        int iDecrementAndGet = f1539FU.decrementAndGet(this);
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("decAndGet():" + iDecrementAndGet);
        }
        return iDecrementAndGet;
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
