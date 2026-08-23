package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* JADX INFO: loaded from: classes.dex */
public final class FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 implements Flow {
    final /* synthetic */ Function2 $action$inlined;
    final /* synthetic */ Flow $this_onStart$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1 */
    public static final class C26191 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C26191(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(Function2 function2, Flow flow) {
        this.$action$inlined = function2;
        this.$this_onStart$inlined = flow;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0080, code lost:
    
        if (r7.collect(r2, r0) != r1) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object collect(FlowCollector flowCollector, Continuation continuation) throws Throwable {
        C26191 c26191;
        Throwable th;
        SafeCollector safeCollector;
        FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
        FlowCollector flowCollector2;
        if (continuation instanceof C26191) {
            c26191 = (C26191) continuation;
            int i = c26191.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c26191.label = i - Integer.MIN_VALUE;
            } else {
                c26191 = new C26191(continuation);
            }
        }
        Object obj = c26191.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c26191.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            SafeCollector safeCollector2 = new SafeCollector(flowCollector, c26191.getContext());
            try {
                Function2 function2 = this.$action$inlined;
                c26191.L$0 = this;
                c26191.L$1 = flowCollector;
                c26191.L$2 = safeCollector2;
                c26191.label = 1;
                InlineMarker.mark(6);
                Object objInvoke = function2.invoke(safeCollector2, c26191);
                InlineMarker.mark(7);
                if (objInvoke != coroutine_suspended) {
                    flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = this;
                    flowCollector2 = flowCollector;
                    safeCollector = safeCollector2;
                    safeCollector.releaseIntercepted();
                    Flow flow = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.$this_onStart$inlined;
                    c26191.L$0 = null;
                    c26191.L$1 = null;
                    c26191.L$2 = null;
                    c26191.label = 2;
                }
                return coroutine_suspended;
            } catch (Throwable th2) {
                th = th2;
                safeCollector = safeCollector2;
                safeCollector.releaseIntercepted();
                throw th;
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        safeCollector = (SafeCollector) c26191.L$2;
        flowCollector2 = (FlowCollector) c26191.L$1;
        flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = (FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1) c26191.L$0;
        try {
            ResultKt.throwOnFailure(obj);
            safeCollector.releaseIntercepted();
            Flow flow2 = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.$this_onStart$inlined;
            c26191.L$0 = null;
            c26191.L$1 = null;
            c26191.L$2 = null;
            c26191.label = 2;
        } catch (Throwable th3) {
            th = th3;
            safeCollector.releaseIntercepted();
            throw th;
        }
    }
}
