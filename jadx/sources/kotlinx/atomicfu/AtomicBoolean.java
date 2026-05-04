package kotlinx.atomicfu;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.TraceBase;

/* JADX INFO: loaded from: classes5.dex */
public final class AtomicBoolean {
    private static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: FU */
    private static final AtomicIntegerFieldUpdater f1538FU = AtomicIntegerFieldUpdater.newUpdater(AtomicBoolean.class, "_value");
    private volatile int _value;
    private final TraceBase trace;

    public AtomicBoolean(boolean z, TraceBase trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        this.trace = trace;
        this._value = z ? 1 : 0;
    }

    public final boolean getValue() {
        return this._value != 0;
    }

    public final void setValue(boolean z) {
        this._value = z ? 1 : 0;
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("set(" + z + ')');
        }
    }

    public final boolean compareAndSet(boolean z, boolean z2) {
        TraceBase traceBase;
        boolean zCompareAndSet = f1538FU.compareAndSet(this, z ? 1 : 0, z2 ? 1 : 0);
        if (zCompareAndSet && (traceBase = this.trace) != TraceBase.None.INSTANCE) {
            traceBase.append("CAS(" + z + ", " + z2 + ')');
        }
        return zCompareAndSet;
    }

    public String toString() {
        return String.valueOf(getValue());
    }

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
