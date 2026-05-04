package kotlinx.atomicfu;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.TraceBase;

/* JADX INFO: loaded from: classes5.dex */
public final class AtomicLong {
    private static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: FU */
    private static final AtomicLongFieldUpdater f1540FU = AtomicLongFieldUpdater.newUpdater(AtomicLong.class, "value");
    private final TraceBase trace;
    private volatile long value;

    public AtomicLong(long j, TraceBase trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        this.trace = trace;
        this.value = j;
    }

    public final long getValue() {
        return this.value;
    }

    public final void setValue(long j) {
        this.value = j;
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("set(" + j + ')');
        }
    }

    public final boolean compareAndSet(long j, long j2) {
        TraceBase traceBase;
        boolean zCompareAndSet = f1540FU.compareAndSet(this, j, j2);
        if (zCompareAndSet && (traceBase = this.trace) != TraceBase.None.INSTANCE) {
            traceBase.append("CAS(" + j + ", " + j2 + ')');
        }
        return zCompareAndSet;
    }

    public final long incrementAndGet() {
        long jIncrementAndGet = f1540FU.incrementAndGet(this);
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("incAndGet():" + jIncrementAndGet);
        }
        return jIncrementAndGet;
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
