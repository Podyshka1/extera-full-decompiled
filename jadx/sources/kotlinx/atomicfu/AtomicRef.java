package kotlinx.atomicfu;

import androidx.concurrent.futures.AbstractC0329xc40028dd;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.TraceBase;

/* JADX INFO: loaded from: classes5.dex */
public final class AtomicRef {
    private static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: FU */
    private static final AtomicReferenceFieldUpdater f1541FU = AtomicReferenceFieldUpdater.newUpdater(AtomicRef.class, Object.class, "value");
    private final TraceBase trace;
    private volatile Object value;

    public AtomicRef(Object obj, TraceBase trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        this.trace = trace;
        this.value = obj;
    }

    public final Object getValue() {
        return this.value;
    }

    public final void setValue(Object obj) {
        this.value = obj;
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("set(" + obj + ')');
        }
    }

    public final boolean compareAndSet(Object obj, Object obj2) {
        TraceBase traceBase;
        boolean zM112m = AbstractC0329xc40028dd.m112m(f1541FU, this, obj, obj2);
        if (zM112m && (traceBase = this.trace) != TraceBase.None.INSTANCE) {
            traceBase.append("CAS(" + obj + ", " + obj2 + ')');
        }
        return zM112m;
    }

    public final Object getAndSet(Object obj) {
        Object andSet = f1541FU.getAndSet(this, obj);
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("getAndSet(" + obj + "):" + andSet);
        }
        return andSet;
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
