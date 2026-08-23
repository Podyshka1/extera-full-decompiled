package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes.dex */
final class FlowKt__LimitKt$dropWhile$1$1 implements FlowCollector {
    final /* synthetic */ Ref$BooleanRef $matched;
    final /* synthetic */ Function2 $predicate;
    final /* synthetic */ FlowCollector $this_flow;

    FlowKt__LimitKt$dropWhile$1$1(Ref$BooleanRef ref$BooleanRef, FlowCollector flowCollector, Function2 function2) {
        this.$matched = ref$BooleanRef;
        this.$this_flow = flowCollector;
        this.$predicate = function2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
    
        if (r8.emit(r7, r0) == r1) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0085, code lost:
    
        if (r8.emit(r7, r0) == r1) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        FlowKt__LimitKt$dropWhile$1$1$emit$1 flowKt__LimitKt$dropWhile$1$1$emit$1;
        FlowKt__LimitKt$dropWhile$1$1 flowKt__LimitKt$dropWhile$1$1;
        if (continuation instanceof FlowKt__LimitKt$dropWhile$1$1$emit$1) {
            flowKt__LimitKt$dropWhile$1$1$emit$1 = (FlowKt__LimitKt$dropWhile$1$1$emit$1) continuation;
            int i = flowKt__LimitKt$dropWhile$1$1$emit$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$dropWhile$1$1$emit$1 = new FlowKt__LimitKt$dropWhile$1$1$emit$1(this, continuation);
            }
        }
        Object objInvoke = flowKt__LimitKt$dropWhile$1$1$emit$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = flowKt__LimitKt$dropWhile$1$1$emit$1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objInvoke);
            if (this.$matched.element) {
                FlowCollector flowCollector = this.$this_flow;
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = 1;
            } else {
                Function2 function2 = this.$predicate;
                flowKt__LimitKt$dropWhile$1$1$emit$1.L$0 = this;
                flowKt__LimitKt$dropWhile$1$1$emit$1.L$1 = obj;
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = 2;
                objInvoke = function2.invoke(obj, flowKt__LimitKt$dropWhile$1$1$emit$1);
                if (objInvoke != coroutine_suspended) {
                    flowKt__LimitKt$dropWhile$1$1 = this;
                    if (!((Boolean) objInvoke).booleanValue()) {
                    }
                }
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            ResultKt.throwOnFailure(objInvoke);
            return Unit.INSTANCE;
        }
        if (i2 != 2) {
            if (i2 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objInvoke);
            return Unit.INSTANCE;
        }
        obj = flowKt__LimitKt$dropWhile$1$1$emit$1.L$1;
        flowKt__LimitKt$dropWhile$1$1 = (FlowKt__LimitKt$dropWhile$1$1) flowKt__LimitKt$dropWhile$1$1$emit$1.L$0;
        ResultKt.throwOnFailure(objInvoke);
        if (!((Boolean) objInvoke).booleanValue()) {
            return Unit.INSTANCE;
        }
        flowKt__LimitKt$dropWhile$1$1.$matched.element = true;
        FlowCollector flowCollector2 = flowKt__LimitKt$dropWhile$1$1.$this_flow;
        flowKt__LimitKt$dropWhile$1$1$emit$1.L$0 = null;
        flowKt__LimitKt$dropWhile$1$1$emit$1.L$1 = null;
        flowKt__LimitKt$dropWhile$1$1$emit$1.label = 3;
    }
}
