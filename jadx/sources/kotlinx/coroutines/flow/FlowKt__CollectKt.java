package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.internal.NopCollector;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class FlowKt__CollectKt {
    public static final Object collect(Flow flow, Continuation continuation) {
        Object objCollect = flow.collect(NopCollector.INSTANCE, continuation);
        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__CollectKt$launchIn$1 */
    static final class C26171 extends SuspendLambda implements Function2 {
        final /* synthetic */ Flow $this_launchIn;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C26171(Flow flow, Continuation continuation) {
            super(2, continuation);
            this.$this_launchIn = flow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C26171(this.$this_launchIn, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C26171) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Flow flow = this.$this_launchIn;
                this.label = 1;
                if (FlowKt.collect(flow, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public static final Job launchIn(Flow flow, CoroutineScope coroutineScope) {
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C26171(flow, null), 3, null);
    }

    public static final Object collectLatest(Flow flow, Function2 function2, Continuation continuation) {
        Object objCollect = FlowKt.collect(FlowKt__ContextKt.buffer$default(FlowKt.mapLatest(flow, function2), 0, null, 2, null), continuation);
        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
    }

    public static final Object emitAll(FlowCollector flowCollector, Flow flow, Continuation continuation) {
        FlowKt.ensureActive(flowCollector);
        Object objCollect = flow.collect(flowCollector, continuation);
        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
    }
}
