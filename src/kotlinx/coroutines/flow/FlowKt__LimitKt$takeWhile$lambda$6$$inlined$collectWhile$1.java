package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: loaded from: classes.dex */
public final class FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 implements FlowCollector {
    final /* synthetic */ Function2 $predicate$inlined;
    final /* synthetic */ FlowCollector $this_flow$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1 */
    public static final class C26251 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C26251(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1.this.emit(null, this);
        }
    }

    public FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1(Function2 function2, FlowCollector flowCollector) {
        this.$predicate$inlined = function2;
        this.$this_flow$inlined = flowCollector;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0078, code lost:
    
        if (r2.emit(r9, r0) == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object emit(Object obj, Continuation continuation) {
        C26251 c26251;
        Object obj2;
        Object obj3;
        FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1;
        if (continuation instanceof C26251) {
            c26251 = (C26251) continuation;
            int i = c26251.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c26251.label = i - Integer.MIN_VALUE;
            } else {
                c26251 = new C26251(continuation);
            }
        }
        Object obj4 = c26251.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c26251.label;
        boolean z = true;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj4);
            Function2 function2 = this.$predicate$inlined;
            c26251.L$0 = this;
            c26251.L$1 = obj;
            c26251.label = 1;
            InlineMarker.mark(6);
            Object objInvoke = function2.invoke(obj, c26251);
            InlineMarker.mark(7);
            if (objInvoke != coroutine_suspended) {
                obj2 = objInvoke;
                obj3 = obj;
                flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 = this;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 = (FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1) c26251.L$0;
            ResultKt.throwOnFailure(obj4);
            if (z) {
                throw new AbortFlowException(flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1);
            }
            return Unit.INSTANCE;
        }
        Object obj5 = c26251.L$1;
        FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$12 = (FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1) c26251.L$0;
        ResultKt.throwOnFailure(obj4);
        obj3 = obj5;
        flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 = flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$12;
        obj2 = obj4;
        if (((Boolean) obj2).booleanValue()) {
            FlowCollector flowCollector = flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1.$this_flow$inlined;
            c26251.L$0 = flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1;
            c26251.L$1 = null;
            c26251.label = 2;
        } else {
            z = false;
        }
        if (z) {
        }
    }
}
