package kotlinx.atomicfu;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.TraceBase;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\r\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R \u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0005\u0010\u0013\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015R*\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0018\u001a\u0004\b\u0019\u0010\u000e\"\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lkotlinx/atomicfu/AtomicInt;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "Lkotlinx/atomicfu/TraceBase;", "trace", "<init>", "(ILkotlinx/atomicfu/TraceBase;)V", "expect", PluginsConstants.UPDATE, _UrlKt.FRAGMENT_ENCODE_SET, "compareAndSet", "(II)Z", "incrementAndGet", "()I", "decrementAndGet", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Lkotlinx/atomicfu/TraceBase;", "getTrace", "()Lkotlinx/atomicfu/TraceBase;", "getTrace$annotations", "()V", "I", "getValue", "setValue", "(I)V", "Companion", "atomicfu"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAtomicFU.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtomicFU.kt\nkotlinx/atomicfu/AtomicInt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,469:1\n1#2:470\n*E\n"})
public final class AtomicInt {
    private static final Companion Companion = new Companion(null);
    private static final AtomicIntegerFieldUpdater<AtomicInt> FU = AtomicIntegerFieldUpdater.newUpdater(AtomicInt.class, "value");
    private final TraceBase trace;
    private volatile int value;

    public AtomicInt(int i, TraceBase traceBase) {
        this.trace = traceBase;
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

    public final boolean compareAndSet(int expect, int update) {
        TraceBase traceBase;
        boolean zCompareAndSet = FU.compareAndSet(this, expect, update);
        if (zCompareAndSet && (traceBase = this.trace) != TraceBase.None.INSTANCE) {
            traceBase.append("CAS(" + expect + ", " + update + ')');
        }
        return zCompareAndSet;
    }

    public final int incrementAndGet() {
        int iIncrementAndGet = FU.incrementAndGet(this);
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("incAndGet():" + iIncrementAndGet);
        }
        return iIncrementAndGet;
    }

    public final int decrementAndGet() {
        int iDecrementAndGet = FU.decrementAndGet(this);
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("decAndGet():" + iDecrementAndGet);
        }
        return iDecrementAndGet;
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R4\u0010\u0004\u001a&\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/atomicfu/AtomicInt$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "FU", "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;", "Lkotlinx/atomicfu/AtomicInt;", "kotlin.jvm.PlatformType", "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;", "atomicfu"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
