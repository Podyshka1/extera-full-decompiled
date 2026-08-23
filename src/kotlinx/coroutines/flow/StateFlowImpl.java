package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: loaded from: classes.dex */
final class StateFlowImpl extends AbstractSharedFlow implements MutableStateFlow, Flow, FusibleFlow {
    private static final /* synthetic */ AtomicReferenceFieldUpdater _state$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(StateFlowImpl.class, Object.class, "_state$volatile");
    private volatile /* synthetic */ Object _state$volatile;
    private int sequence;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.StateFlowImpl$collect$1 */
    static final class C26381 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C26381(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StateFlowImpl.this.collect(null, this);
        }
    }

    private final boolean updateState(Object obj, Object obj2) {
        int i;
        AbstractSharedFlowSlot[] slots;
        synchronized (this) {
            Object obj3 = _state$volatile$FU.get(this);
            if (obj != null && !Intrinsics.areEqual(obj3, obj)) {
                return false;
            }
            if (Intrinsics.areEqual(obj3, obj2)) {
                return true;
            }
            _state$volatile$FU.set(this, obj2);
            int i2 = this.sequence;
            if ((i2 & 1) != 0) {
                this.sequence = i2 + 2;
                return true;
            }
            int i3 = i2 + 1;
            this.sequence = i3;
            AbstractSharedFlowSlot[] slots2 = getSlots();
            Unit unit = Unit.INSTANCE;
            while (true) {
                StateFlowSlot[] stateFlowSlotArr = (StateFlowSlot[]) slots2;
                if (stateFlowSlotArr != null) {
                    for (StateFlowSlot stateFlowSlot : stateFlowSlotArr) {
                        if (stateFlowSlot != null) {
                            stateFlowSlot.makePending();
                        }
                    }
                }
                synchronized (this) {
                    i = this.sequence;
                    if (i == i3) {
                        this.sequence = i3 + 1;
                        return true;
                    }
                    slots = getSlots();
                    Unit unit2 = Unit.INSTANCE;
                }
                slots2 = slots;
                i3 = i;
            }
        }
    }

    public StateFlowImpl(Object obj) {
        this._state$volatile = obj;
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow
    public Object getValue() {
        Symbol symbol = NullSurrogateKt.NULL;
        Object obj = _state$volatile$FU.get(this);
        if (obj == symbol) {
            return null;
        }
        return obj;
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow
    public void setValue(Object obj) {
        if (obj == null) {
            obj = NullSurrogateKt.NULL;
        }
        updateState(null, obj);
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow
    public boolean compareAndSet(Object obj, Object obj2) {
        if (obj == null) {
            obj = NullSurrogateKt.NULL;
        }
        if (obj2 == null) {
            obj2 = NullSurrogateKt.NULL;
        }
        return updateState(obj, obj2);
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public boolean tryEmit(Object obj) {
        setValue(obj);
        return true;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow, kotlinx.coroutines.flow.FlowCollector
    public Object emit(Object obj, Continuation continuation) {
        setValue(obj);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public void resetReplayCache() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    /* JADX WARN: Path cross not found for [B:29:0x008f, B:45:0x00c5], limit reached: 48 */
    /* JADX WARN: Path cross not found for [B:33:0x009e, B:35:0x00a4], limit reached: 48 */
    /* JADX WARN: Path cross not found for [B:35:0x00a4, B:33:0x009e], limit reached: 48 */
    /* JADX WARN: Path cross not found for [B:35:0x00a4, B:43:0x00bf], limit reached: 48 */
    /* JADX WARN: Path cross not found for [B:45:0x00c5, B:29:0x008f], limit reached: 48 */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0099 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:29:0x008f, B:31:0x0099, B:33:0x009e, B:43:0x00bf, B:45:0x00c5, B:35:0x00a4, B:39:0x00ab, B:22:0x005f, B:25:0x0071, B:28:0x0080), top: B:50:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009e A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:29:0x008f, B:31:0x0099, B:33:0x009e, B:43:0x00bf, B:45:0x00c5, B:35:0x00a4, B:39:0x00ab, B:22:0x005f, B:25:0x0071, B:28:0x0080), top: B:50:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c5 A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:29:0x008f, B:31:0x0099, B:33:0x009e, B:43:0x00bf, B:45:0x00c5, B:35:0x00a4, B:39:0x00ab, B:22:0x005f, B:25:0x0071, B:28:0x0080), top: B:50:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00c3 -> B:29:0x008f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00d5 -> B:29:0x008f). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object collect(FlowCollector flowCollector, Continuation continuation) {
        C26381 c26381;
        StateFlowImpl stateFlowImpl;
        StateFlowSlot stateFlowSlot;
        FlowCollector flowCollector2;
        Job job;
        Object obj;
        Object obj2;
        Object obj3;
        if (continuation instanceof C26381) {
            c26381 = (C26381) continuation;
            int i = c26381.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c26381.label = i - Integer.MIN_VALUE;
            } else {
                c26381 = new C26381(continuation);
            }
        }
        Object obj4 = c26381.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c26381.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj4);
                stateFlowImpl = this;
                stateFlowSlot = (StateFlowSlot) allocateSlot();
            } else if (i2 == 1) {
                stateFlowSlot = (StateFlowSlot) c26381.L$2;
                flowCollector = (FlowCollector) c26381.L$1;
                stateFlowImpl = (StateFlowImpl) c26381.L$0;
                ResultKt.throwOnFailure(obj4);
            } else if (i2 == 2) {
                obj = c26381.L$4;
                job = (Job) c26381.L$3;
                stateFlowSlot = (StateFlowSlot) c26381.L$2;
                flowCollector2 = (FlowCollector) c26381.L$1;
                stateFlowImpl = (StateFlowImpl) c26381.L$0;
                ResultKt.throwOnFailure(obj4);
                if (!stateFlowSlot.takePending()) {
                }
                obj2 = _state$volatile$FU.get(stateFlowImpl);
                if (job != null) {
                }
                if (obj != null) {
                }
                if (obj2 != NullSurrogateKt.NULL) {
                }
                c26381.L$0 = stateFlowImpl;
                c26381.L$1 = flowCollector2;
                c26381.L$2 = stateFlowSlot;
                c26381.L$3 = job;
                c26381.L$4 = obj2;
                c26381.label = 2;
                if (flowCollector2.emit(obj3, c26381) != coroutine_suspended) {
                }
            } else {
                if (i2 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj = c26381.L$4;
                job = (Job) c26381.L$3;
                stateFlowSlot = (StateFlowSlot) c26381.L$2;
                flowCollector2 = (FlowCollector) c26381.L$1;
                stateFlowImpl = (StateFlowImpl) c26381.L$0;
                ResultKt.throwOnFailure(obj4);
                obj2 = _state$volatile$FU.get(stateFlowImpl);
                if (job != null) {
                    JobKt.ensureActive(job);
                }
                if (obj != null || !Intrinsics.areEqual(obj, obj2)) {
                    obj3 = obj2 != NullSurrogateKt.NULL ? null : obj2;
                    c26381.L$0 = stateFlowImpl;
                    c26381.L$1 = flowCollector2;
                    c26381.L$2 = stateFlowSlot;
                    c26381.L$3 = job;
                    c26381.L$4 = obj2;
                    c26381.label = 2;
                    if (flowCollector2.emit(obj3, c26381) != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj = obj2;
                }
                if (!stateFlowSlot.takePending()) {
                    c26381.L$0 = stateFlowImpl;
                    c26381.L$1 = flowCollector2;
                    c26381.L$2 = stateFlowSlot;
                    c26381.L$3 = job;
                    c26381.L$4 = obj;
                    c26381.label = 3;
                    if (stateFlowSlot.awaitPending(c26381) != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
                obj2 = _state$volatile$FU.get(stateFlowImpl);
                if (job != null) {
                }
                if (obj != null) {
                }
                if (obj2 != NullSurrogateKt.NULL) {
                }
                c26381.L$0 = stateFlowImpl;
                c26381.L$1 = flowCollector2;
                c26381.L$2 = stateFlowSlot;
                c26381.L$3 = job;
                c26381.L$4 = obj2;
                c26381.label = 2;
                if (flowCollector2.emit(obj3, c26381) != coroutine_suspended) {
                }
            }
            flowCollector2 = flowCollector;
            job = (Job) c26381.getContext().get(Job.Key);
            obj = null;
            obj2 = _state$volatile$FU.get(stateFlowImpl);
            if (job != null) {
            }
            if (obj != null) {
            }
            if (obj2 != NullSurrogateKt.NULL) {
            }
            c26381.L$0 = stateFlowImpl;
            c26381.L$1 = flowCollector2;
            c26381.L$2 = stateFlowSlot;
            c26381.L$3 = job;
            c26381.L$4 = obj2;
            c26381.label = 2;
            if (flowCollector2.emit(obj3, c26381) != coroutine_suspended) {
            }
        } catch (Throwable th) {
            stateFlowImpl.freeSlot(stateFlowSlot);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public StateFlowSlot createSlot() {
        return new StateFlowSlot();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public StateFlowSlot[] createSlotArray(int i) {
        return new StateFlowSlot[i];
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public Flow fuse(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return StateFlowKt.fuseStateFlow(this, coroutineContext, i, bufferOverflow);
    }
}
