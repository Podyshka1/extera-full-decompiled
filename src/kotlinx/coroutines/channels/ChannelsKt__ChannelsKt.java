package kotlinx.coroutines.channels;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class ChannelsKt__ChannelsKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$trySendBlocking$2 */
    /* JADX INFO: loaded from: classes5.dex */
    static final class C26122 extends SuspendLambda implements Function2 {
        final /* synthetic */ Object $element;
        final /* synthetic */ SendChannel $this_trySendBlocking;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C26122(SendChannel sendChannel, Object obj, Continuation continuation) {
            super(2, continuation);
            this.$this_trySendBlocking = sendChannel;
            this.$element = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C26122 c26122 = new C26122(this.$this_trySendBlocking, this.$element, continuation);
            c26122.L$0 = obj;
            return c26122;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C26122) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM3604constructorimpl;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    SendChannel sendChannel = this.$this_trySendBlocking;
                    Object obj2 = this.$element;
                    Result.Companion companion = Result.Companion;
                    this.label = 1;
                    if (sendChannel.send(obj2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                objM3604constructorimpl = Result.m3604constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                objM3604constructorimpl = Result.m3604constructorimpl(ResultKt.createFailure(th));
            }
            return ChannelResult.m3673boximpl(Result.m3609isSuccessimpl(objM3604constructorimpl) ? ChannelResult.Companion.m3686successJP2dKIU(Unit.INSTANCE) : ChannelResult.Companion.m3684closedJP2dKIU(Result.m3606exceptionOrNullimpl(objM3604constructorimpl)));
        }
    }

    public static final Object trySendBlocking(SendChannel sendChannel, Object obj) {
        Object objMo3670trySendJP2dKIU = sendChannel.mo3670trySendJP2dKIU(obj);
        if (objMo3670trySendJP2dKIU instanceof ChannelResult.Failed) {
            return ((ChannelResult) BuildersKt__BuildersKt.runBlocking$default(null, new C26122(sendChannel, obj, null), 1, null)).m3683unboximpl();
        }
        return ChannelResult.Companion.m3686successJP2dKIU(Unit.INSTANCE);
    }
}
