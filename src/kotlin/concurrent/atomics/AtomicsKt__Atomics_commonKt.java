package kotlin.concurrent.atomics;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0082\u0004¢\u0006\u0002\u0010\u0005\u001a\u001b\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0082\u0004¢\u0006\u0002\u0010\u0005\u001a\u0013\u0010\u0007\u001a\u00020\u0004*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\b\u001a\u0013\u0010\t\u001a\u00020\u0004*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\b\u001a\u0013\u0010\n\u001a\u00020\u0004*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\b\u001a\u0013\u0010\u000b\u001a\u00020\u0004*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\b\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\f2\u0006\u0010\u0003\u001a\u00020\rH\u0087\u0082\u0004¢\u0006\u0002\u0010\u000e\u001a\u001b\u0010\u0006\u001a\u00020\u0001*\u00020\f2\u0006\u0010\u0003\u001a\u00020\rH\u0087\u0082\u0004¢\u0006\u0002\u0010\u000e\u001a\u0013\u0010\u0007\u001a\u00020\r*\u00020\fH\u0087\u0080\u0004¢\u0006\u0002\u0010\u000f\u001a\u0013\u0010\t\u001a\u00020\r*\u00020\fH\u0087\u0080\u0004¢\u0006\u0002\u0010\u000f\u001a\u0013\u0010\n\u001a\u00020\r*\u00020\fH\u0087\u0080\u0004¢\u0006\u0002\u0010\u000f\u001a\u0013\u0010\u000b\u001a\u00020\r*\u00020\fH\u0087\u0080\u0004¢\u0006\u0002\u0010\u000f¨\u0006\u0010"}, d2 = {"plusAssign", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/concurrent/atomics/AtomicInt;", "delta", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/util/concurrent/atomic/AtomicInteger;I)V", "minusAssign", "fetchAndIncrement", "(Ljava/util/concurrent/atomic/AtomicInteger;)I", "incrementAndFetch", "decrementAndFetch", "fetchAndDecrement", "Lkotlin/concurrent/atomics/AtomicLong;", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/util/concurrent/atomic/AtomicLong;J)V", "(Ljava/util/concurrent/atomic/AtomicLong;)J", "kotlin-stdlib"}, m862k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/concurrent/atomics/AtomicsKt")
class AtomicsKt__Atomics_commonKt {
    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final void plusAssign(AtomicInteger atomicInteger, int i) {
        atomicInteger.addAndGet(i);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final void minusAssign(AtomicInteger atomicInteger, int i) {
        atomicInteger.addAndGet(-i);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int fetchAndIncrement(AtomicInteger atomicInteger) {
        return atomicInteger.getAndAdd(1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int incrementAndFetch(AtomicInteger atomicInteger) {
        return atomicInteger.addAndGet(1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int decrementAndFetch(AtomicInteger atomicInteger) {
        return atomicInteger.addAndGet(-1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int fetchAndDecrement(AtomicInteger atomicInteger) {
        return atomicInteger.getAndAdd(-1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final void plusAssign(AtomicLong atomicLong, long j) {
        atomicLong.addAndGet(j);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final void minusAssign(AtomicLong atomicLong, long j) {
        atomicLong.addAndGet(-j);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long fetchAndIncrement(AtomicLong atomicLong) {
        return atomicLong.getAndAdd(1L);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long incrementAndFetch(AtomicLong atomicLong) {
        return atomicLong.addAndGet(1L);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long decrementAndFetch(AtomicLong atomicLong) {
        return atomicLong.addAndGet(-1L);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long fetchAndDecrement(AtomicLong atomicLong) {
        return atomicLong.getAndAdd(-1L);
    }
}
