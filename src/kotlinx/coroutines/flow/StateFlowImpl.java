package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\b\u0012\u0004\u0012\u00028\u00000\u0006B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ!\u0010\r\u001a\u00020\f2\b\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0011\u0010\u000eJ\u0017\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001e\u0010\u001d\u001a\u00020\u001c2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001aH\u0096@¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010$\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030#2\u0006\u0010\"\u001a\u00020!H\u0014¢\u0006\u0004\b$\u0010%J-\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00000+2\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020!2\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b,\u0010-R\u0016\u0010.\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R$\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00028\u00008V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b0\u00101\"\u0004\b2\u0010\tR\u0011\u00104\u001a\b\u0012\u0004\u0012\u00020\u0005038\u0002X\u0082\u0004¨\u00065"}, d2 = {"Lkotlinx/coroutines/flow/StateFlowImpl;", "T", "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;", "Lkotlinx/coroutines/flow/StateFlowSlot;", "Lkotlinx/coroutines/flow/MutableStateFlow;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/flow/internal/FusibleFlow;", "initialState", "<init>", "(Ljava/lang/Object;)V", "expectedState", "newState", _UrlKt.FRAGMENT_ENCODE_SET, "updateState", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "expect", "update", "compareAndSet", "value", "tryEmit", "(Ljava/lang/Object;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resetReplayCache", "()V", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", _UrlKt.FRAGMENT_ENCODE_SET, "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createSlot", "()Lkotlinx/coroutines/flow/StateFlowSlot;", _UrlKt.FRAGMENT_ENCODE_SET, "size", _UrlKt.FRAGMENT_ENCODE_SET, "createSlotArray", "(I)[Lkotlinx/coroutines/flow/StateFlowSlot;", "Lkotlin/coroutines/CoroutineContext;", "context", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/Flow;", "fuse", "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;", "sequence", "I", "getValue", "()Ljava/lang/Object;", "setValue", "Lkotlinx/atomicfu/AtomicRef;", "_state", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,433:1\n14#2:434\n14#2:442\n29#3:435\n29#3:439\n16#4:436\n16#4:440\n13402#5,2:437\n375#6:441\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n*L\n320#1:434\n401#1:442\n329#1:435\n357#1:439\n329#1:436\n357#1:440\n353#1:437,2\n390#1:441\n*E\n"})
final class StateFlowImpl<T> extends AbstractSharedFlow<StateFlowSlot> implements MutableStateFlow<T>, Flow, FusibleFlow<T> {
    private static final /* synthetic */ AtomicReferenceFieldUpdater _state$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(StateFlowImpl.class, Object.class, "_state$volatile");
    private volatile /* synthetic */ Object _state$volatile;
    private int sequence;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.StateFlowImpl$collect$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "kotlinx.coroutines.flow.StateFlowImpl", m766f = "StateFlow.kt", m767i = {0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, m768l = {389, 401, 406}, m769m = "collect", m770n = {"this", "collector", "slot", "this", "collector", "slot", "collectorJob", "newState", "this", "collector", "slot", "collectorJob", "oldState"}, m771s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4"})
    public static final class C23341 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ StateFlowImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23341(StateFlowImpl<T> stateFlowImpl, Continuation<? super C23341> continuation) {
            super(continuation);
            this.this$0 = stateFlowImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.collect(null, this);
        }
    }

    private final boolean updateState(Object expectedState, Object newState) {
        int i;
        StateFlowSlot[] slots;
        synchronized (this) {
            Object obj = _state$volatile$FU.get(this);
            if (expectedState != null && !Intrinsics.areEqual(obj, expectedState)) {
                return false;
            }
            if (Intrinsics.areEqual(obj, newState)) {
                return true;
            }
            _state$volatile$FU.set(this, newState);
            int i2 = this.sequence;
            if ((i2 & 1) != 0) {
                this.sequence = i2 + 2;
                return true;
            }
            int i3 = i2 + 1;
            this.sequence = i3;
            StateFlowSlot[] slots2 = getSlots();
            Unit unit = Unit.INSTANCE;
            while (true) {
                StateFlowSlot[] stateFlowSlotArr = slots2;
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
    public T getValue() {
        Symbol symbol = NullSurrogateKt.NULL;
        T t = (T) _state$volatile$FU.get(this);
        if (t == symbol) {
            return null;
        }
        return t;
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow
    public void setValue(T t) {
        if (t == null) {
            t = (T) NullSurrogateKt.NULL;
        }
        updateState(null, t);
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow
    public boolean compareAndSet(T expect, T update) {
        if (expect == null) {
            expect = (T) NullSurrogateKt.NULL;
        }
        if (update == null) {
            update = (T) NullSurrogateKt.NULL;
        }
        return updateState(expect, update);
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public boolean tryEmit(T value) {
        setValue(value);
        return true;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow, kotlinx.coroutines.flow.FlowCollector
    public Object emit(T t, Continuation<? super Unit> continuation) {
        setValue(t);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public void resetReplayCache() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a6, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r9, r11) == false) goto L38;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Path cross not found for [B:32:0x0093, B:48:0x00c9], limit reached: 53 */
    /* JADX WARN: Path cross not found for [B:36:0x00a2, B:38:0x00a8], limit reached: 53 */
    /* JADX WARN: Path cross not found for [B:38:0x00a8, B:36:0x00a2], limit reached: 53 */
    /* JADX WARN: Path cross not found for [B:38:0x00a8, B:46:0x00c3], limit reached: 53 */
    /* JADX WARN: Path cross not found for [B:48:0x00c9, B:32:0x0093], limit reached: 53 */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009d A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:32:0x0093, B:34:0x009d, B:36:0x00a2, B:46:0x00c3, B:48:0x00c9, B:38:0x00a8, B:42:0x00af, B:22:0x005d), top: B:53:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a2 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:32:0x0093, B:34:0x009d, B:36:0x00a2, B:46:0x00c3, B:48:0x00c9, B:38:0x00a8, B:42:0x00af, B:22:0x005d), top: B:53:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c9 A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:32:0x0093, B:34:0x009d, B:36:0x00a2, B:46:0x00c3, B:48:0x00c9, B:38:0x00a8, B:42:0x00af, B:22:0x005d), top: B:53:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object, kotlinx.coroutines.flow.StateFlowSlot] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v9, types: [kotlinx.coroutines.flow.StateFlowSlot] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object, kotlinx.coroutines.flow.FlowCollector] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00c7 -> B:32:0x0093). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00d9 -> B:32:0x0093). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<?> continuation) throws Throwable {
        C23341 c23341;
        StateFlowImpl<T> stateFlowImpl;
        ?? r6;
        Job job;
        Object obj;
        ?? r62;
        ?? r2;
        boolean zTakePending;
        Object obj2;
        if (continuation instanceof C23341) {
            c23341 = (C23341) continuation;
            int i = c23341.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c23341.label = i - Integer.MIN_VALUE;
            } else {
                c23341 = new C23341(this, continuation);
            }
        }
        Object obj3 = c23341.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? AllocateSlot = c23341.label;
        try {
            if (AllocateSlot == 0) {
                ResultKt.throwOnFailure(obj3);
                AllocateSlot = allocateSlot();
            } else if (AllocateSlot == 1) {
                AllocateSlot = (StateFlowSlot) c23341.L$2;
                flowCollector = (FlowCollector) c23341.L$1;
                this = (StateFlowImpl) c23341.L$0;
                try {
                    ResultKt.throwOnFailure(obj3);
                    AllocateSlot = AllocateSlot;
                } catch (Throwable th) {
                    stateFlowImpl = this;
                    th = th;
                    stateFlowImpl.freeSlot(AllocateSlot);
                    throw th;
                }
            } else if (AllocateSlot == 2) {
                obj = c23341.L$4;
                job = (Job) c23341.L$3;
                StateFlowSlot stateFlowSlot = (StateFlowSlot) c23341.L$2;
                FlowCollector flowCollector2 = (FlowCollector) c23341.L$1;
                stateFlowImpl = (StateFlowImpl) c23341.L$0;
                ResultKt.throwOnFailure(obj3);
                r2 = stateFlowSlot;
                r62 = flowCollector2;
                zTakePending = r2.takePending();
                AllocateSlot = r2;
                r6 = r62;
                if (!zTakePending) {
                }
                Object obj4 = _state$volatile$FU.get(stateFlowImpl);
                if (job != null) {
                }
                if (obj != null) {
                }
                if (obj4 != NullSurrogateKt.NULL) {
                }
                c23341.L$0 = stateFlowImpl;
                c23341.L$1 = r6;
                c23341.L$2 = AllocateSlot;
                c23341.L$3 = job;
                c23341.L$4 = obj4;
                c23341.label = 2;
                if (r6.emit(obj2, c23341) != coroutine_suspended) {
                }
            } else {
                if (AllocateSlot != 3) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                obj = c23341.L$4;
                job = (Job) c23341.L$3;
                StateFlowSlot stateFlowSlot2 = (StateFlowSlot) c23341.L$2;
                FlowCollector flowCollector3 = (FlowCollector) c23341.L$1;
                stateFlowImpl = (StateFlowImpl) c23341.L$0;
                ResultKt.throwOnFailure(obj3);
                AllocateSlot = stateFlowSlot2;
                r6 = flowCollector3;
                Object obj42 = _state$volatile$FU.get(stateFlowImpl);
                if (job != null) {
                    JobKt.ensureActive(job);
                }
                if (obj != null) {
                    r2 = AllocateSlot;
                    r62 = r6;
                }
                obj2 = obj42 != NullSurrogateKt.NULL ? null : obj42;
                c23341.L$0 = stateFlowImpl;
                c23341.L$1 = r6;
                c23341.L$2 = AllocateSlot;
                c23341.L$3 = job;
                c23341.L$4 = obj42;
                c23341.label = 2;
                if (r6.emit(obj2, c23341) != coroutine_suspended) {
                    return coroutine_suspended;
                }
                obj = obj42;
                r2 = AllocateSlot;
                r62 = r6;
                zTakePending = r2.takePending();
                AllocateSlot = r2;
                r6 = r62;
                if (!zTakePending) {
                    c23341.L$0 = stateFlowImpl;
                    c23341.L$1 = r62;
                    c23341.L$2 = r2;
                    c23341.L$3 = job;
                    c23341.L$4 = obj;
                    c23341.label = 3;
                    Object objAwaitPending = r2.awaitPending(c23341);
                    AllocateSlot = r2;
                    r6 = r62;
                    if (objAwaitPending != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
                Object obj422 = _state$volatile$FU.get(stateFlowImpl);
                if (job != null) {
                }
                if (obj != null) {
                }
                if (obj422 != NullSurrogateKt.NULL) {
                }
                c23341.L$0 = stateFlowImpl;
                c23341.L$1 = r6;
                c23341.L$2 = AllocateSlot;
                c23341.L$3 = job;
                c23341.L$4 = obj422;
                c23341.label = 2;
                if (r6.emit(obj2, c23341) != coroutine_suspended) {
                }
            }
            stateFlowImpl = this;
            r6 = flowCollector;
            job = (Job) c23341.get$context().get(Job.INSTANCE);
            obj = null;
            AllocateSlot = AllocateSlot;
            Object obj4222 = _state$volatile$FU.get(stateFlowImpl);
            if (job != null) {
            }
            if (obj != null) {
            }
            if (obj4222 != NullSurrogateKt.NULL) {
            }
            c23341.L$0 = stateFlowImpl;
            c23341.L$1 = r6;
            c23341.L$2 = AllocateSlot;
            c23341.L$3 = job;
            c23341.L$4 = obj4222;
            c23341.label = 2;
            if (r6.emit(obj2, c23341) != coroutine_suspended) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public StateFlowSlot createSlot() {
        return new StateFlowSlot();
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public StateFlowSlot[] createSlotArray(int size) {
        return new StateFlowSlot[size];
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public Flow<T> fuse(CoroutineContext context, int capacity, BufferOverflow onBufferOverflow) {
        return StateFlowKt.fuseStateFlow(this, context, capacity, onBufferOverflow);
    }
}
