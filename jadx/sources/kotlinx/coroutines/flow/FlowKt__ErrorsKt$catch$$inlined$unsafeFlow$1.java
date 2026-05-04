package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;

/* JADX INFO: loaded from: classes.dex */
public final class FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 implements Flow {
    final /* synthetic */ Function3 $action$inlined;
    final /* synthetic */ Flow $this_catch$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1 */
    public static final class C26201 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C26201(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(Flow flow, Function3 function3) {
        this.$this_catch$inlined = flow;
        this.$action$inlined = function3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006c, code lost:
    
        if (r6 == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object collect(FlowCollector flowCollector, Continuation continuation) {
        C26201 c26201;
        FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;
        if (continuation instanceof C26201) {
            c26201 = (C26201) continuation;
            int i = c26201.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c26201.label = i - Integer.MIN_VALUE;
            } else {
                c26201 = new C26201(continuation);
            }
        }
        Object objCatchImpl = c26201.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c26201.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objCatchImpl);
            Flow flow = this.$this_catch$inlined;
            c26201.L$0 = this;
            c26201.L$1 = flowCollector;
            c26201.label = 1;
            objCatchImpl = FlowKt.catchImpl(flow, flowCollector, c26201);
            if (objCatchImpl != coroutine_suspended) {
                flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 = this;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objCatchImpl);
            return Unit.INSTANCE;
        }
        flowCollector = (FlowCollector) c26201.L$1;
        flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 = (FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1) c26201.L$0;
        ResultKt.throwOnFailure(objCatchImpl);
        Throwable th = (Throwable) objCatchImpl;
        if (th != null) {
            Function3 function3 = flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.$action$inlined;
            c26201.L$0 = null;
            c26201.L$1 = null;
            c26201.label = 2;
            InlineMarker.mark(6);
            Object objInvoke = function3.invoke(flowCollector, th, c26201);
            InlineMarker.mark(7);
        }
        return Unit.INSTANCE;
    }
}
