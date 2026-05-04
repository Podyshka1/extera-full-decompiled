package androidx.work.impl.constraints;

import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes4.dex */
final class NetworkRequestConstraintController$track$1$timeoutJob$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ ProducerScope $$this$callbackFlow;
    int label;
    final /* synthetic */ NetworkRequestConstraintController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NetworkRequestConstraintController$track$1$timeoutJob$1(NetworkRequestConstraintController networkRequestConstraintController, ProducerScope producerScope, Continuation continuation) {
        super(2, continuation);
        this.this$0 = networkRequestConstraintController;
        this.$$this$callbackFlow = producerScope;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NetworkRequestConstraintController$track$1$timeoutJob$1(this.this$0, this.$$this$callbackFlow, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((NetworkRequestConstraintController$track$1$timeoutJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            long j = this.this$0.timeoutMs;
            this.label = 1;
            if (DelayKt.delay(j, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController didn't receive neither onCapabilitiesChanged/onLost callback, sending `ConstraintsNotMet` after " + this.this$0.timeoutMs + " ms");
        this.$$this$callbackFlow.mo3670trySendJP2dKIU(new ConstraintsState.ConstraintsNotMet(7));
        return Unit.INSTANCE;
    }
}
