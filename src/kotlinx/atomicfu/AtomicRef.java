package kotlinx.atomicfu;

import androidx.concurrent.futures.AbstractC0324xc40028dd;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.TraceBase;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u0000 \u001c*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u001cB\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00028\u00002\u0006\u0010\t\u001a\u00028\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\r\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R \u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0005\u0010\u0012\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0013\u0010\u0014R*\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u00008\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lkotlinx/atomicfu/AtomicRef;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "value", "Lkotlinx/atomicfu/TraceBase;", "trace", "<init>", "(Ljava/lang/Object;Lkotlinx/atomicfu/TraceBase;)V", "expect", "update", _UrlKt.FRAGMENT_ENCODE_SET, "compareAndSet", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "getAndSet", "(Ljava/lang/Object;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Lkotlinx/atomicfu/TraceBase;", "getTrace", "()Lkotlinx/atomicfu/TraceBase;", "getTrace$annotations", "()V", "Ljava/lang/Object;", "getValue", "()Ljava/lang/Object;", "setValue", "(Ljava/lang/Object;)V", "Companion", "atomicfu"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAtomicFU.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtomicFU.kt\nkotlinx/atomicfu/AtomicRef\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,469:1\n1#2:470\n*E\n"})
public final class AtomicRef<T> {
    private static final Companion Companion = new Companion(null);
    private static final AtomicReferenceFieldUpdater<AtomicRef<?>, Object> FU = AtomicReferenceFieldUpdater.newUpdater(AtomicRef.class, Object.class, "value");
    private final TraceBase trace;
    private volatile T value;

    public AtomicRef(T t, TraceBase traceBase) {
        this.trace = traceBase;
        this.value = t;
    }

    public final T getValue() {
        return this.value;
    }

    public final void setValue(T t) {
        this.value = t;
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("set(" + t + ')');
        }
    }

    public final boolean compareAndSet(T expect, T update) {
        TraceBase traceBase;
        boolean zM87m = AbstractC0324xc40028dd.m87m(FU, this, expect, update);
        if (zM87m && (traceBase = this.trace) != TraceBase.None.INSTANCE) {
            traceBase.append("CAS(" + expect + ", " + update + ')');
        }
        return zM87m;
    }

    public final T getAndSet(T value) {
        T t = (T) FU.getAndSet(this, value);
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("getAndSet(" + value + "):" + t);
        }
        return t;
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R`\u0010\u0004\u001aR\u0012\u0014\u0012\u0012\u0012\u0002\b\u0003 \u0007*\b\u0012\u0002\b\u0003\u0018\u00010\u00060\u0006\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00010\u0001 \u0007*(\u0012\u0014\u0012\u0012\u0012\u0002\b\u0003 \u0007*\b\u0012\u0002\b\u0003\u0018\u00010\u00060\u0006\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/atomicfu/AtomicRef$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "FU", "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;", "Lkotlinx/atomicfu/AtomicRef;", "kotlin.jvm.PlatformType", "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;", "atomicfu"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
