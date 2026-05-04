package kotlinx.coroutines.sync;

import androidx.concurrent.futures.AbstractC0329xc40028dd;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.ChannelSegment$$ExternalSyntheticBackportWithForwarding0;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.selects.SelectInstance;

/* JADX INFO: loaded from: classes.dex */
public class SemaphoreAndMutexImpl {
    private volatile /* synthetic */ int _availablePermits$volatile;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    private final Function3 onCancellationRelease;
    private final int permits;
    private volatile /* synthetic */ Object tail$volatile;
    private static final /* synthetic */ AtomicReferenceFieldUpdater head$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "head$volatile");
    private static final /* synthetic */ AtomicLongFieldUpdater deqIdx$volatile$FU = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "deqIdx$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater tail$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "tail$volatile");
    private static final /* synthetic */ AtomicLongFieldUpdater enqIdx$volatile$FU = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "enqIdx$volatile");
    private static final /* synthetic */ AtomicIntegerFieldUpdater _availablePermits$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "_availablePermits$volatile");

    public SemaphoreAndMutexImpl(int i, int i2) {
        this.permits = i;
        if (i <= 0) {
            throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i).toString());
        }
        if (i2 < 0 || i2 > i) {
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i).toString());
        }
        SemaphoreSegment semaphoreSegment = new SemaphoreSegment(0L, null, 2);
        this.head$volatile = semaphoreSegment;
        this.tail$volatile = semaphoreSegment;
        this._availablePermits$volatile = i - i2;
        this.onCancellationRelease = new Function3() { // from class: kotlinx.coroutines.sync.SemaphoreAndMutexImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return SemaphoreAndMutexImpl.onCancellationRelease$lambda$2(this.f$0, (Throwable) obj, (Unit) obj2, (CoroutineContext) obj3);
            }
        };
    }

    public final int getAvailablePermits() {
        return Math.max(_availablePermits$volatile$FU.get(this), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCancellationRelease$lambda$2(SemaphoreAndMutexImpl semaphoreAndMutexImpl, Throwable th, Unit unit, CoroutineContext coroutineContext) {
        semaphoreAndMutexImpl.release();
        return Unit.INSTANCE;
    }

    public final boolean tryAcquire() {
        while (true) {
            int i = _availablePermits$volatile$FU.get(this);
            if (i > this.permits) {
                coerceAvailablePermitsAtMaximum();
            } else {
                if (i <= 0) {
                    return false;
                }
                if (_availablePermits$volatile$FU.compareAndSet(this, i, i - 1)) {
                    return true;
                }
            }
        }
    }

    public final Object acquire(Continuation continuation) {
        if (decPermits() > 0) {
            return Unit.INSTANCE;
        }
        Object objAcquireSlowPath = acquireSlowPath(continuation);
        return objAcquireSlowPath == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAcquireSlowPath : Unit.INSTANCE;
    }

    protected final void acquire(CancellableContinuation cancellableContinuation) {
        while (decPermits() <= 0) {
            Intrinsics.checkNotNull(cancellableContinuation, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (addAcquireToQueue((Waiter) cancellableContinuation)) {
                return;
            }
        }
        cancellableContinuation.resume(Unit.INSTANCE, this.onCancellationRelease);
    }

    private final int decPermits() {
        int andDecrement;
        do {
            andDecrement = _availablePermits$volatile$FU.getAndDecrement(this);
        } while (andDecrement > this.permits);
        return andDecrement;
    }

    public final void release() {
        do {
            int andIncrement = _availablePermits$volatile$FU.getAndIncrement(this);
            if (andIncrement >= this.permits) {
                coerceAvailablePermitsAtMaximum();
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.permits).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!tryResumeNextFromQueue());
    }

    private final void coerceAvailablePermitsAtMaximum() {
        int i;
        do {
            i = _availablePermits$volatile$FU.get(this);
            if (i <= this.permits) {
                return;
            }
        } while (!_availablePermits$volatile$FU.compareAndSet(this, i, this.permits));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean addAcquireToQueue(Waiter waiter) {
        Object objFindSegmentInternal;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) tail$volatile$FU.get(this);
        long andIncrement = enqIdx$volatile$FU.getAndIncrement(this);
        SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 = SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1.INSTANCE;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = tail$volatile$FU;
        long j = andIncrement / ((long) SemaphoreKt.SEGMENT_SIZE);
        loop0: while (true) {
            objFindSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(semaphoreSegment, j, semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1);
            if (!SegmentOrClosed.m3698isClosedimpl(objFindSegmentInternal)) {
                Segment segmentM3697getSegmentimpl = SegmentOrClosed.m3697getSegmentimpl(objFindSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.f1546id >= segmentM3697getSegmentimpl.f1546id) {
                        break loop0;
                    }
                    if (!segmentM3697getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    if (AbstractC0329xc40028dd.m112m(atomicReferenceFieldUpdater, this, segment, segmentM3697getSegmentimpl)) {
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    } else if (segmentM3697getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        segmentM3697getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        }
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) SegmentOrClosed.m3697getSegmentimpl(objFindSegmentInternal);
        int i = (int) (andIncrement % ((long) SemaphoreKt.SEGMENT_SIZE));
        if (!ChannelSegment$$ExternalSyntheticBackportWithForwarding0.m1091m(semaphoreSegment2.getAcquirers(), i, null, waiter)) {
            if (!ChannelSegment$$ExternalSyntheticBackportWithForwarding0.m1091m(semaphoreSegment2.getAcquirers(), i, SemaphoreKt.PERMIT, SemaphoreKt.TAKEN)) {
                return false;
            }
            if (waiter instanceof CancellableContinuation) {
                Intrinsics.checkNotNull(waiter, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
                ((CancellableContinuation) waiter).resume(Unit.INSTANCE, this.onCancellationRelease);
            } else if (waiter instanceof SelectInstance) {
                ((SelectInstance) waiter).selectInRegistrationPhase(Unit.INSTANCE);
            } else {
                throw new IllegalStateException(("unexpected: " + waiter).toString());
            }
            return true;
        }
        waiter.invokeOnCancellation(semaphoreSegment2, i);
        return true;
    }

    private final boolean tryResumeNextFromQueue() {
        Object objFindSegmentInternal;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) head$volatile$FU.get(this);
        long andIncrement = deqIdx$volatile$FU.getAndIncrement(this);
        long j = andIncrement / ((long) SemaphoreKt.SEGMENT_SIZE);
        SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 = SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1.INSTANCE;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = head$volatile$FU;
        loop0: while (true) {
            objFindSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(semaphoreSegment, j, semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1);
            if (SegmentOrClosed.m3698isClosedimpl(objFindSegmentInternal)) {
                break;
            }
            Segment segmentM3697getSegmentimpl = SegmentOrClosed.m3697getSegmentimpl(objFindSegmentInternal);
            while (true) {
                Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                if (segment.f1546id >= segmentM3697getSegmentimpl.f1546id) {
                    break loop0;
                }
                if (!segmentM3697getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                }
                if (AbstractC0329xc40028dd.m112m(atomicReferenceFieldUpdater, this, segment, segmentM3697getSegmentimpl)) {
                    if (segment.decPointers$kotlinx_coroutines_core()) {
                        segment.remove();
                    }
                } else if (segmentM3697getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                    segmentM3697getSegmentimpl.remove();
                }
            }
        }
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) SegmentOrClosed.m3697getSegmentimpl(objFindSegmentInternal);
        semaphoreSegment2.cleanPrev();
        if (semaphoreSegment2.f1546id > j) {
            return false;
        }
        int i = (int) (andIncrement % ((long) SemaphoreKt.SEGMENT_SIZE));
        Object andSet = semaphoreSegment2.getAcquirers().getAndSet(i, SemaphoreKt.PERMIT);
        if (andSet == null) {
            int i2 = SemaphoreKt.MAX_SPIN_CYCLES;
            for (int i3 = 0; i3 < i2; i3++) {
                if (semaphoreSegment2.getAcquirers().get(i) == SemaphoreKt.TAKEN) {
                    return true;
                }
            }
            return !ChannelSegment$$ExternalSyntheticBackportWithForwarding0.m1091m(semaphoreSegment2.getAcquirers(), i, SemaphoreKt.PERMIT, SemaphoreKt.BROKEN);
        }
        if (andSet == SemaphoreKt.CANCELLED) {
            return false;
        }
        return tryResumeAcquire(andSet);
    }

    private final boolean tryResumeAcquire(Object obj) {
        if (obj instanceof CancellableContinuation) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            CancellableContinuation cancellableContinuation = (CancellableContinuation) obj;
            Object objTryResume = cancellableContinuation.tryResume(Unit.INSTANCE, null, this.onCancellationRelease);
            if (objTryResume == null) {
                return false;
            }
            cancellableContinuation.completeResume(objTryResume);
            return true;
        }
        if (obj instanceof SelectInstance) {
            return ((SelectInstance) obj).trySelect(this, Unit.INSTANCE);
        }
        throw new IllegalStateException(("unexpected: " + obj).toString());
    }

    private final Object acquireSlowPath(Continuation continuation) {
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt.intercepted(continuation));
        try {
            if (!addAcquireToQueue(orCreateCancellableContinuation)) {
                acquire((CancellableContinuation) orCreateCancellableContinuation);
            }
            Object result = orCreateCancellableContinuation.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
        } catch (Throwable th) {
            orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }
}
