package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* JADX INFO: loaded from: classes.dex */
public final class FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 implements Flow {
    final /* synthetic */ Function3 $action$inlined;
    final /* synthetic */ Flow $this_onCompletion$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1 */
    public static final class C26181 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C26181(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(Flow flow, Function3 function3) {
        this.$this_onCompletion$inlined = flow;
        this.$action$inlined = function3;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object collect(FlowCollector flowCollector, Continuation continuation) throws Throwable {
        C26181 c26181;
        FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
        ThrowingCollector throwingCollector;
        Function3 function3;
        SafeCollector safeCollector;
        Throwable th;
        SafeCollector safeCollector2;
        Object objInvoke;
        if (continuation instanceof C26181) {
            c26181 = (C26181) continuation;
            int i = c26181.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c26181.label = i - Integer.MIN_VALUE;
            } else {
                c26181 = new C26181(continuation);
            }
        }
        Object obj = c26181.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c26181.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                Flow flow = this.$this_onCompletion$inlined;
                c26181.L$0 = this;
                c26181.L$1 = flowCollector;
                c26181.label = 1;
                if (flow.collect(flowCollector, c26181) != coroutine_suspended) {
                    flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = this;
                    safeCollector = new SafeCollector(flowCollector, c26181.getContext());
                    Function3 function32 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.$action$inlined;
                    c26181.L$0 = safeCollector;
                    c26181.L$1 = null;
                    c26181.label = 3;
                    InlineMarker.mark(6);
                    objInvoke = function32.invoke(safeCollector, null, c26181);
                    InlineMarker.mark(7);
                    if (objInvoke != coroutine_suspended) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = this;
                throwingCollector = new ThrowingCollector(th);
                function3 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.$action$inlined;
                c26181.L$0 = th;
                c26181.L$1 = null;
                c26181.label = 2;
                if (FlowKt__EmittersKt.invokeSafely$FlowKt__EmittersKt(throwingCollector, function3, th, c26181) == coroutine_suspended) {
                }
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                Throwable th3 = (Throwable) c26181.L$0;
                ResultKt.throwOnFailure(obj);
                throw th3;
            }
            if (i2 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            safeCollector2 = (SafeCollector) c26181.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                safeCollector2.releaseIntercepted();
                return Unit.INSTANCE;
            } catch (Throwable th4) {
                th = th4;
                safeCollector2.releaseIntercepted();
                throw th;
            }
        }
        flowCollector = (FlowCollector) c26181.L$1;
        flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = (FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1) c26181.L$0;
        try {
            ResultKt.throwOnFailure(obj);
            safeCollector = new SafeCollector(flowCollector, c26181.getContext());
        } catch (Throwable th5) {
            th = th5;
            throwingCollector = new ThrowingCollector(th);
            function3 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.$action$inlined;
            c26181.L$0 = th;
            c26181.L$1 = null;
            c26181.label = 2;
            if (FlowKt__EmittersKt.invokeSafely$FlowKt__EmittersKt(throwingCollector, function3, th, c26181) == coroutine_suspended) {
                throw th;
            }
        }
        try {
            Function3 function322 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.$action$inlined;
            c26181.L$0 = safeCollector;
            c26181.L$1 = null;
            c26181.label = 3;
            InlineMarker.mark(6);
            objInvoke = function322.invoke(safeCollector, null, c26181);
            InlineMarker.mark(7);
            if (objInvoke != coroutine_suspended) {
                safeCollector2 = safeCollector;
                safeCollector2.releaseIntercepted();
                return Unit.INSTANCE;
            }
            return coroutine_suspended;
        } catch (Throwable th6) {
            th = th6;
            safeCollector2 = safeCollector;
            safeCollector2.releaseIntercepted();
            throw th;
        }
    }
}
