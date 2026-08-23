package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import kotlinx.coroutines.flow.internal.ChannelLimitedFlowMerge;
import kotlinx.coroutines.internal.SystemPropsKt;

/* JADX INFO: loaded from: classes5.dex */
abstract /* synthetic */ class FlowKt__MergeKt {
    private static final int DEFAULT_CONCURRENCY = SystemPropsKt.systemProp("kotlinx.coroutines.flow.defaultConcurrency", 16, 1, Integer.MAX_VALUE);

    public static final Flow merge(Iterable iterable) {
        return new ChannelLimitedFlowMerge(iterable, null, 0, null, 14, null);
    }

    public static final Flow merge(Flow... flowArr) {
        return FlowKt.merge(ArraysKt.asIterable(flowArr));
    }

    public static final Flow transformLatest(Flow flow, Function3 function3) {
        return new ChannelFlowTransformLatest(function3, flow, null, 0, null, 28, null);
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1 */
    static final class C26261 extends SuspendLambda implements Function3 {
        final /* synthetic */ Function2 $transform;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C26261(Function2 function2, Continuation continuation) {
            super(3, continuation);
            this.$transform = function2;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector flowCollector, Object obj, Continuation continuation) {
            C26261 c26261 = new C26261(this.$transform, continuation);
            c26261.L$0 = flowCollector;
            c26261.L$1 = obj;
            return c26261.invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
        
            if (r1.emit(r6, r5) == r0) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            FlowCollector flowCollector;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                flowCollector = (FlowCollector) this.L$0;
                Object obj2 = this.L$1;
                Function2 function2 = this.$transform;
                this.L$0 = flowCollector;
                this.label = 1;
                obj = function2.invoke(obj2, this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            flowCollector = (FlowCollector) this.L$0;
            ResultKt.throwOnFailure(obj);
            this.L$0 = null;
            this.label = 2;
        }
    }

    public static final Flow mapLatest(Flow flow, Function2 function2) {
        return FlowKt.transformLatest(flow, new C26261(function2, null));
    }
}
