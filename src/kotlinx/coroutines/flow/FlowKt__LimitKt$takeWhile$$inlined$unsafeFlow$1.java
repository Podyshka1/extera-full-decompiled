package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import kotlinx.coroutines.flow.internal.FlowExceptions_commonKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", _UrlKt.FRAGMENT_ENCODE_SET, "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,111:1\n83#2:112\n124#2,17:113\n*S KotlinDebug\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n83#1:113,17\n*E\n"})
public final class FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1<T> implements Flow<T> {
    final /* synthetic */ Function2 $predicate$inlined;
    final /* synthetic */ Flow $this_takeWhile$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1 */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1", m873f = "Limit.kt", m874i = {0, 0, 0, 0, 0, 0, 0, 0}, m875l = {123}, m876m = "collect", m877n = {"collector", "$completion", "$this$takeWhile_u24lambda_u240", "$this$collectWhile$iv", "$completion$iv", "collector$iv", "$i$a$-unsafeFlow-FlowKt__LimitKt$takeWhile$1", "$i$f$collectWhile"}, m878s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "I$0", "I$1"}, m879v = 1)
    public static final class C23901 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        public C23901(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) {
        C23901 c23901;
        FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1 flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1;
        if (continuation instanceof C23901) {
            c23901 = (C23901) continuation;
            int i = c23901.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c23901.label = i - Integer.MIN_VALUE;
            } else {
                c23901 = new C23901(continuation);
            }
        }
        Object obj = c23901.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c23901.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Flow flow = this.$this_takeWhile$inlined;
            FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1 flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$12 = new FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1(this.$predicate$inlined, flowCollector);
            try {
                c23901.L$0 = SpillingKt.nullOutSpilledVariable(flowCollector);
                c23901.L$1 = SpillingKt.nullOutSpilledVariable(c23901);
                c23901.L$2 = SpillingKt.nullOutSpilledVariable(flowCollector);
                c23901.L$3 = SpillingKt.nullOutSpilledVariable(flow);
                c23901.L$4 = SpillingKt.nullOutSpilledVariable(c23901);
                c23901.L$5 = flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$12;
                c23901.I$0 = 0;
                c23901.I$1 = 0;
                c23901.label = 1;
                if (flow.collect(flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$12, c23901) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } catch (AbortFlowException e) {
                e = e;
                flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1 = flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$12;
                FlowExceptions_commonKt.checkOwnership(e, flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1);
                JobKt.ensureActive(c23901.getContext());
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1 = (FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1) c23901.L$5;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e2) {
                e = e2;
                FlowExceptions_commonKt.checkOwnership(e, flowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1);
                JobKt.ensureActive(c23901.getContext());
            }
        }
        return Unit.INSTANCE;
    }

    public FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(Flow flow, Function2 function2) {
        this.$this_takeWhile$inlined = flow;
        this.$predicate$inlined = function2;
    }
}
