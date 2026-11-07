package kotlinx.atomicfu;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.TraceBase;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\r\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R \u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0005\u0010\u0012\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0013\u0010\u0014R*\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0017\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lkotlinx/atomicfu/AtomicLong;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "Lkotlinx/atomicfu/TraceBase;", "trace", "<init>", "(JLkotlinx/atomicfu/TraceBase;)V", "expect", PluginsConstants.UPDATE, _UrlKt.FRAGMENT_ENCODE_SET, "compareAndSet", "(JJ)Z", "incrementAndGet", "()J", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Lkotlinx/atomicfu/TraceBase;", "getTrace", "()Lkotlinx/atomicfu/TraceBase;", "getTrace$annotations", "()V", "J", "getValue", "setValue", "(J)V", "Companion", "atomicfu"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAtomicFU.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtomicFU.kt\nkotlinx/atomicfu/AtomicLong\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,469:1\n1#2:470\n*E\n"})
public final class AtomicLong {
    private static final Companion Companion = new Companion(null);
    private static final AtomicLongFieldUpdater<AtomicLong> FU = AtomicLongFieldUpdater.newUpdater(AtomicLong.class, "value");
    private final TraceBase trace;
    private volatile long value;

    public AtomicLong(long j, TraceBase traceBase) {
        this.trace = traceBase;
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

    public final boolean compareAndSet(long expect, long update) {
        TraceBase traceBase;
        boolean zCompareAndSet = FU.compareAndSet(this, expect, update);
        if (zCompareAndSet && (traceBase = this.trace) != TraceBase.None.INSTANCE) {
            traceBase.append("CAS(" + expect + ", " + update + ')');
        }
        return zCompareAndSet;
    }

    public final long incrementAndGet() {
        long jIncrementAndGet = FU.incrementAndGet(this);
        TraceBase traceBase = this.trace;
        if (traceBase != TraceBase.None.INSTANCE) {
            traceBase.append("incAndGet():" + jIncrementAndGet);
        }
        return jIncrementAndGet;
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R4\u0010\u0004\u001a&\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006 \u0007*\u0012\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/atomicfu/AtomicLong$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "FU", "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;", "Lkotlinx/atomicfu/AtomicLong;", "kotlin.jvm.PlatformType", "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;", "atomicfu"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
