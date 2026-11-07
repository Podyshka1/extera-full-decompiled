package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", _UrlKt.FRAGMENT_ENCODE_SET, "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n1#1,111:1\n129#2,15:112\n*E\n"})
public final class FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1<T> implements Flow<T> {
    final /* synthetic */ Function4 $predicate$inlined;
    final /* synthetic */ Flow $this_retryWhen$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1 */
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m920c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1", m921f = "Errors.kt", m922i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1}, m923l = {116, 118}, m924m = "collect", m925n = {"collector", "$completion", "$this$retryWhen_u24lambda_u240", "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1", "attempt", "shallRetry", "collector", "$completion", "$this$retryWhen_u24lambda_u240", "cause", "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1", "attempt", "shallRetry"}, m926s = {"L$0", "L$1", "L$2", "I$0", "J$0", "I$1", "L$0", "L$1", "L$2", "L$3", "I$0", "J$0", "I$1"}, m927v = 1)
    public static final class C25281 extends ContinuationImpl {
        int I$0;
        int I$1;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public C25281(Continuation continuation) {
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

    /* JADX WARN: Removed duplicated region for block: B:20:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x009f -> B:30:0x00de). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00ce -> B:27:0x00d1). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) throws Throwable {
        C25281 c25281;
        FlowCollector<? super T> flowCollector2;
        C25281 c252812;
        int i;
        long j;
        FlowCollector<? super T> flowCollector3;
        Continuation continuation2;
        FlowCollector<? super T> flowCollector4;
        Continuation continuation3;
        FlowCollector<? super T> flowCollector5;
        int i2;
        int i3;
        Throwable th;
        Object objCatchImpl;
        if (continuation instanceof C25281) {
            c25281 = (C25281) continuation;
            int i4 = c25281.label;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                c25281.label = i4 - Integer.MIN_VALUE;
            } else {
                c25281 = new C25281(continuation);
            }
        }
        Object obj = c25281.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i5 = c25281.label;
        Object obj2 = null;
        int i6 = 0;
        if (i5 == 0) {
            ResultKt.throwOnFailure(obj);
            flowCollector2 = flowCollector;
            c252812 = c25281;
            i = 0;
            j = 0;
            flowCollector3 = flowCollector2;
            continuation2 = c252812;
            Flow flow = this.$this_retryWhen$inlined;
            c252812.L$0 = SpillingKt.nullOutSpilledVariable(flowCollector3);
            c252812.L$1 = SpillingKt.nullOutSpilledVariable(continuation2);
            c252812.L$2 = flowCollector2;
            c252812.L$3 = obj2;
            c252812.I$0 = i;
            c252812.J$0 = j;
            c252812.I$1 = i6;
            c252812.label = 1;
            objCatchImpl = FlowKt.catchImpl(flow, flowCollector2, c252812);
            if (objCatchImpl != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i5 == 1) {
            int i7 = c25281.I$1;
            long j2 = c25281.J$0;
            int i8 = c25281.I$0;
            flowCollector5 = (FlowCollector) c25281.L$2;
            continuation3 = (Continuation) c25281.L$1;
            flowCollector4 = (FlowCollector) c25281.L$0;
            ResultKt.throwOnFailure(obj);
            i2 = i7;
            i3 = i8;
            j = j2;
            th = (Throwable) obj;
            if (th != null) {
            }
            flowCollector2 = flowCollector5;
            i = i3;
            c252812 = c25281;
            flowCollector3 = flowCollector4;
            if (i2 == 0) {
            }
        } else {
            if (i5 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            long j3 = c25281.J$0;
            i3 = c25281.I$0;
            Throwable th2 = (Throwable) c25281.L$3;
            flowCollector5 = (FlowCollector) c25281.L$2;
            continuation3 = (Continuation) c25281.L$1;
            flowCollector4 = (FlowCollector) c25281.L$0;
            ResultKt.throwOnFailure(obj);
            if (!((Boolean) obj).booleanValue()) {
                j = j3 + 1;
                i2 = 1;
                flowCollector2 = flowCollector5;
                i = i3;
                c252812 = c25281;
                flowCollector3 = flowCollector4;
                if (i2 == 0) {
                    return Unit.INSTANCE;
                }
                continuation2 = continuation3;
                obj2 = null;
                i6 = 0;
                Flow flow2 = this.$this_retryWhen$inlined;
                c252812.L$0 = SpillingKt.nullOutSpilledVariable(flowCollector3);
                c252812.L$1 = SpillingKt.nullOutSpilledVariable(continuation2);
                c252812.L$2 = flowCollector2;
                c252812.L$3 = obj2;
                c252812.I$0 = i;
                c252812.J$0 = j;
                c252812.I$1 = i6;
                c252812.label = 1;
                objCatchImpl = FlowKt.catchImpl(flow2, flowCollector2, c252812);
                if (objCatchImpl != coroutine_suspended) {
                    flowCollector4 = flowCollector3;
                    c25281 = c252812;
                    i3 = i;
                    flowCollector5 = flowCollector2;
                    obj = objCatchImpl;
                    continuation3 = continuation2;
                    i2 = i6;
                    th = (Throwable) obj;
                    if (th != null) {
                        Function4 function4 = this.$predicate$inlined;
                        Long lBoxLong = Boxing.boxLong(j);
                        c25281.L$0 = SpillingKt.nullOutSpilledVariable(flowCollector4);
                        c25281.L$1 = SpillingKt.nullOutSpilledVariable(continuation3);
                        c25281.L$2 = flowCollector5;
                        c25281.L$3 = th;
                        c25281.I$0 = i3;
                        c25281.J$0 = j;
                        c25281.I$1 = i2;
                        c25281.label = 2;
                        InlineMarker.mark(6);
                        Object objInvoke = function4.invoke(flowCollector5, th, lBoxLong, c25281);
                        InlineMarker.mark(7);
                        if (objInvoke != coroutine_suspended) {
                            j3 = j;
                            th2 = th;
                            obj = objInvoke;
                            if (!((Boolean) obj).booleanValue()) {
                                throw th2;
                            }
                        }
                    }
                    flowCollector2 = flowCollector5;
                    i = i3;
                    c252812 = c25281;
                    flowCollector3 = flowCollector4;
                    if (i2 == 0) {
                    }
                }
                return coroutine_suspended;
            }
        }
    }
}
