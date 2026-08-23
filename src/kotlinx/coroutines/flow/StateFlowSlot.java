package kotlinx.coroutines.flow;

import com.google.android.exoplayer2.mediacodec.AbstractC1260xa830b2f;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.internal.Concurrent_commonKt;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0014\u0010\n\u001a\u00020\u000b2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016J'\u0010\r\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000e2\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016¢\u0006\u0002\u0010\u0011J\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u000bJ\u000e\u0010\u0014\u001a\u00020\u0010H\u0086@¢\u0006\u0002\u0010\u0015R$\u0010\u0005\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006j\n\u0012\u0006\u0012\u0004\u0018\u00010\u0007`\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\t¨\u0006\u0016"}, d2 = {"Lkotlinx/coroutines/flow/StateFlowSlot;", "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "Lkotlinx/coroutines/flow/StateFlowImpl;", "<init>", "()V", "_state", "Ljava/util/concurrent/atomic/AtomicReference;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/internal/WorkaroundAtomicReference;", "Ljava/util/concurrent/atomic/AtomicReference;", "allocateLocked", _UrlKt.FRAGMENT_ENCODE_SET, "flow", "freeLocked", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, "(Lkotlinx/coroutines/flow/StateFlowImpl;)[Lkotlin/coroutines/Continuation;", "makePending", "takePending", "awaitPending", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowSlot\n+ 2 Concurrent.common.kt\nkotlinx/coroutines/internal/Concurrent_commonKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,433:1\n37#2,2:434\n1#3:436\n426#4,11:437\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowSlot\n*L\n280#1:434,2\n303#1:437,11\n*E\n"})
final class StateFlowSlot extends AbstractSharedFlowSlot<StateFlowImpl<?>> {
    private final AtomicReference<Object> _state = new AtomicReference<>(null);

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    public boolean allocateLocked(StateFlowImpl<?> flow) {
        if (Concurrent_commonKt.getValue(this._state) != null) {
            return false;
        }
        Concurrent_commonKt.setValue(this._state, StateFlowKt.NONE);
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    public Continuation<Unit>[] freeLocked(StateFlowImpl<?> flow) {
        Concurrent_commonKt.setValue(this._state, null);
        return AbstractSharedFlowKt.EMPTY_RESUMES;
    }

    public final void makePending() {
        AtomicReference<Object> atomicReference = this._state;
        while (true) {
            Object value = Concurrent_commonKt.getValue(atomicReference);
            if (value == null || value == StateFlowKt.PENDING) {
                return;
            }
            Symbol symbol = StateFlowKt.NONE;
            AtomicReference<Object> atomicReference2 = this._state;
            if (value == symbol) {
                if (AbstractC1260xa830b2f.m261m(atomicReference2, value, StateFlowKt.PENDING)) {
                    return;
                }
            } else if (AbstractC1260xa830b2f.m261m(atomicReference2, value, StateFlowKt.NONE)) {
                Result.Companion companion = Result.INSTANCE;
                ((CancellableContinuationImpl) value).resumeWith(Result.m3291constructorimpl(Unit.INSTANCE));
                return;
            }
        }
    }

    public final boolean takePending() {
        return this._state.getAndSet(StateFlowKt.NONE) == StateFlowKt.PENDING;
    }

    public final Object awaitPending(Continuation<? super Unit> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        if (!AbstractC1260xa830b2f.m261m(this._state, StateFlowKt.NONE, cancellableContinuationImpl)) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m3291constructorimpl(Unit.INSTANCE));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }
}
