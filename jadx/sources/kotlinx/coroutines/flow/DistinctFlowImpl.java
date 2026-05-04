package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* JADX INFO: loaded from: classes.dex */
final class DistinctFlowImpl implements Flow {
    public final Function2 areEquivalent;
    public final Function1 keySelector;
    private final Flow upstream;

    public DistinctFlowImpl(Flow flow, Function1 function1, Function2 function2) {
        this.upstream = flow;
        this.keySelector = function1;
        this.areEquivalent = function2;
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.DistinctFlowImpl$collect$2 */
    static final class C26162 implements FlowCollector {
        final /* synthetic */ FlowCollector $collector;
        final /* synthetic */ Ref$ObjectRef $previousKey;

        C26162(Ref$ObjectRef ref$ObjectRef, FlowCollector flowCollector) {
            this.$previousKey = ref$ObjectRef;
            this.$collector = flowCollector;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(Object obj, Continuation continuation) {
            DistinctFlowImpl$collect$2$emit$1 distinctFlowImpl$collect$2$emit$1;
            if (continuation instanceof DistinctFlowImpl$collect$2$emit$1) {
                distinctFlowImpl$collect$2$emit$1 = (DistinctFlowImpl$collect$2$emit$1) continuation;
                int i = distinctFlowImpl$collect$2$emit$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    distinctFlowImpl$collect$2$emit$1.label = i - Integer.MIN_VALUE;
                } else {
                    distinctFlowImpl$collect$2$emit$1 = new DistinctFlowImpl$collect$2$emit$1(this, continuation);
                }
            }
            Object obj2 = distinctFlowImpl$collect$2$emit$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = distinctFlowImpl$collect$2$emit$1.label;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj2);
                Object objInvoke = DistinctFlowImpl.this.keySelector.invoke(obj);
                Object obj3 = this.$previousKey.element;
                if (obj3 == NullSurrogateKt.NULL || !((Boolean) DistinctFlowImpl.this.areEquivalent.invoke(obj3, objInvoke)).booleanValue()) {
                    this.$previousKey.element = objInvoke;
                    FlowCollector flowCollector = this.$collector;
                    distinctFlowImpl$collect$2$emit$1.label = 1;
                    if (flowCollector.emit(obj, distinctFlowImpl$collect$2$emit$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    return Unit.INSTANCE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj2);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector flowCollector, Continuation continuation) {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = NullSurrogateKt.NULL;
        Object objCollect = this.upstream.collect(new C26162(ref$ObjectRef, flowCollector), continuation);
        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
    }
}
