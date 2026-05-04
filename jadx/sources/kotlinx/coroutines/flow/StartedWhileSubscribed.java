package kotlinx.coroutines.flow;

import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes5.dex */
final class StartedWhileSubscribed implements SharingStarted {
    private final long replayExpiration;
    private final long stopTimeout;

    public StartedWhileSubscribed(long j, long j2) {
        this.stopTimeout = j;
        this.replayExpiration = j2;
        if (j < 0) {
            throw new IllegalArgumentException(("stopTimeout(" + j + " ms) cannot be negative").toString());
        }
        if (j2 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("replayExpiration(" + j2 + " ms) cannot be negative").toString());
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.StartedWhileSubscribed$command$1 */
    static final class C26361 extends SuspendLambda implements Function3 {
        /* synthetic */ int I$0;
        private /* synthetic */ Object L$0;
        int label;

        C26361(Continuation continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            return invoke((FlowCollector) obj, ((Number) obj2).intValue(), (Continuation) obj3);
        }

        public final Object invoke(FlowCollector flowCollector, int i, Continuation continuation) {
            C26361 c26361 = StartedWhileSubscribed.this.new C26361(continuation);
            c26361.L$0 = flowCollector;
            c26361.I$0 = i;
            return c26361.invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
        
            if (r1.emit(r10, r9) == r0) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0099, code lost:
        
            if (r1.emit(r10, r9) != r0) goto L35;
         */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x008e A[PHI: r1
  0x008e: PHI (r1v5 kotlinx.coroutines.flow.FlowCollector) = 
  (r1v3 kotlinx.coroutines.flow.FlowCollector)
  (r1v4 kotlinx.coroutines.flow.FlowCollector)
  (r1v11 kotlinx.coroutines.flow.FlowCollector)
 binds: [B:25:0x006e, B:30:0x008b, B:12:0x0020] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            FlowCollector flowCollector;
            long j;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                flowCollector = (FlowCollector) this.L$0;
                if (this.I$0 <= 0) {
                    long j2 = StartedWhileSubscribed.this.stopTimeout;
                    this.L$0 = flowCollector;
                    this.label = 2;
                    if (DelayKt.delay(j2, this) != coroutine_suspended) {
                        if (StartedWhileSubscribed.this.replayExpiration <= 0) {
                        }
                    }
                } else {
                    SharingCommand sharingCommand = SharingCommand.START;
                    this.label = 1;
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i == 2) {
                    flowCollector = (FlowCollector) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    if (StartedWhileSubscribed.this.replayExpiration <= 0) {
                        SharingCommand sharingCommand2 = SharingCommand.STOP;
                        this.L$0 = flowCollector;
                        this.label = 3;
                        if (flowCollector.emit(sharingCommand2, this) != coroutine_suspended) {
                            j = StartedWhileSubscribed.this.replayExpiration;
                            this.L$0 = flowCollector;
                            this.label = 4;
                            if (DelayKt.delay(j, this) != coroutine_suspended) {
                            }
                        }
                    }
                    return coroutine_suspended;
                }
                if (i == 3) {
                    flowCollector = (FlowCollector) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    j = StartedWhileSubscribed.this.replayExpiration;
                    this.L$0 = flowCollector;
                    this.label = 4;
                    if (DelayKt.delay(j, this) != coroutine_suspended) {
                        SharingCommand sharingCommand3 = SharingCommand.STOP_AND_RESET_REPLAY_CACHE;
                        this.L$0 = null;
                        this.label = 5;
                    }
                    return coroutine_suspended;
                }
                if (i == 4) {
                    flowCollector = (FlowCollector) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    SharingCommand sharingCommand32 = SharingCommand.STOP_AND_RESET_REPLAY_CACHE;
                    this.L$0 = null;
                    this.label = 5;
                } else if (i != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
    }

    @Override // kotlinx.coroutines.flow.SharingStarted
    public Flow command(StateFlow stateFlow) {
        return FlowKt.distinctUntilChanged(FlowKt.dropWhile(FlowKt.transformLatest(stateFlow, new C26361(null)), new C26372(null)));
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.StartedWhileSubscribed$command$2 */
    static final class C26372 extends SuspendLambda implements Function2 {
        /* synthetic */ Object L$0;
        int label;

        C26372(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C26372 c26372 = new C26372(continuation);
            c26372.L$0 = obj;
            return c26372;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SharingCommand sharingCommand, Continuation continuation) {
            return ((C26372) create(sharingCommand, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(((SharingCommand) this.L$0) != SharingCommand.START);
        }
    }

    public String toString() {
        List listCreateListBuilder = CollectionsKt.createListBuilder(2);
        if (this.stopTimeout > 0) {
            listCreateListBuilder.add("stopTimeout=" + this.stopTimeout + "ms");
        }
        if (this.replayExpiration < Long.MAX_VALUE) {
            listCreateListBuilder.add("replayExpiration=" + this.replayExpiration + "ms");
        }
        return "SharingStarted.WhileSubscribed(" + CollectionsKt.joinToString$default(CollectionsKt.build(listCreateListBuilder), null, null, null, 0, null, null, 63, null) + ')';
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof StartedWhileSubscribed)) {
            return false;
        }
        StartedWhileSubscribed startedWhileSubscribed = (StartedWhileSubscribed) obj;
        return this.stopTimeout == startedWhileSubscribed.stopTimeout && this.replayExpiration == startedWhileSubscribed.replayExpiration;
    }

    public int hashCode() {
        return (CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.stopTimeout) * 31) + CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.replayExpiration);
    }
}
