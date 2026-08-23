package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.InlineMarker;

/* JADX INFO: loaded from: classes.dex */
public final class FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 implements Flow {
    final /* synthetic */ Function4 $predicate$inlined;
    final /* synthetic */ Flow $this_retryWhen$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1 */
    public static final class C26231 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C26231(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(Flow flow, Function4 function4) {
        this.$this_retryWhen$inlined = flow;
        this.$predicate$inlined = function4;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0076 -> B:30:0x00a6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0097 -> B:27:0x009a). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object collect(FlowCollector flowCollector, Continuation continuation) throws Throwable {
        C26231 c26231;
        long j;
        FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
        int i;
        FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$12;
        FlowCollector flowCollector2;
        Throwable th;
        Object objCatchImpl;
        if (continuation instanceof C26231) {
            c26231 = (C26231) continuation;
            int i2 = c26231.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c26231.label = i2 - Integer.MIN_VALUE;
            } else {
                c26231 = new C26231(continuation);
            }
        }
        Object obj = c26231.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c26231.label;
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            j = 0;
            flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 = this;
            Flow flow = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.$this_retryWhen$inlined;
            c26231.L$0 = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
            c26231.L$1 = flowCollector;
            c26231.L$2 = null;
            c26231.J$0 = j;
            c26231.I$0 = 0;
            c26231.label = 1;
            objCatchImpl = FlowKt.catchImpl(flow, flowCollector, c26231);
            if (objCatchImpl != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i3 == 1) {
            i = c26231.I$0;
            j = c26231.J$0;
            flowCollector2 = (FlowCollector) c26231.L$1;
            flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$12 = (FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1) c26231.L$0;
            ResultKt.throwOnFailure(obj);
            th = (Throwable) obj;
            if (th != null) {
            }
            flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$12;
            if (i == 0) {
            }
        } else {
            if (i3 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = c26231.J$0;
            Throwable th2 = (Throwable) c26231.L$2;
            flowCollector2 = (FlowCollector) c26231.L$1;
            flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$12 = (FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1) c26231.L$0;
            ResultKt.throwOnFailure(obj);
            if (!((Boolean) obj).booleanValue()) {
                j++;
                i = 1;
                flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$12;
                if (i == 0) {
                    return Unit.INSTANCE;
                }
                flowCollector = flowCollector2;
                Flow flow2 = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.$this_retryWhen$inlined;
                c26231.L$0 = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
                c26231.L$1 = flowCollector;
                c26231.L$2 = null;
                c26231.J$0 = j;
                c26231.I$0 = 0;
                c26231.label = 1;
                objCatchImpl = FlowKt.catchImpl(flow2, flowCollector, c26231);
                if (objCatchImpl != coroutine_suspended) {
                    flowCollector2 = flowCollector;
                    i = 0;
                    flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$12 = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
                    obj = objCatchImpl;
                    th = (Throwable) obj;
                    if (th != null) {
                        Function4 function4 = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$12.$predicate$inlined;
                        Long lBoxLong = Boxing.boxLong(j);
                        c26231.L$0 = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$12;
                        c26231.L$1 = flowCollector2;
                        c26231.L$2 = th;
                        c26231.J$0 = j;
                        c26231.label = 2;
                        InlineMarker.mark(6);
                        Object objInvoke = function4.invoke(flowCollector2, th, lBoxLong, c26231);
                        InlineMarker.mark(7);
                        if (objInvoke != coroutine_suspended) {
                            obj = objInvoke;
                            th2 = th;
                            if (!((Boolean) obj).booleanValue()) {
                                throw th2;
                            }
                        }
                    }
                    flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$12;
                    if (i == 0) {
                    }
                }
                return coroutine_suspended;
            }
        }
    }
}
