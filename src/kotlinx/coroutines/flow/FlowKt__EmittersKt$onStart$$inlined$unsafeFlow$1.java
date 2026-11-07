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
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.SafeCollector;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", _UrlKt.FRAGMENT_ENCODE_SET, "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,111:1\n71#2:112\n72#2,7:114\n1307#3:113\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n71#1:113\n*E\n"})
public final class FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1<T> implements Flow<T> {
    final /* synthetic */ Function2 $action$inlined;
    final /* synthetic */ Flow $this_onStart$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1 */
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m920c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1", m921f = "Emitters.kt", m922i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1}, m923l = {115, 119}, m924m = "collect", m925n = {"collector", "$completion", "$this$onStart_u24lambda_u240", "safeCollector", "$i$a$-unsafeFlow-FlowKt__EmittersKt$onStart$1", "collector", "$completion", "$this$onStart_u24lambda_u240", "safeCollector", "$i$a$-unsafeFlow-FlowKt__EmittersKt$onStart$1"}, m926s = {"L$0", "L$1", "L$2", "L$3", "I$0", "L$0", "L$1", "L$2", "L$3", "I$0"}, m927v = 1)
    public static final class C25241 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public C25241(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b8, code lost:
    
        if (r7.collect(r8, r0) == r1) goto L27;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.flow.internal.SafeCollector] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, kotlinx.coroutines.flow.internal.SafeCollector] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) {
        C25241 c25241;
        int i;
        FlowCollector<? super T> flowCollector2;
        Continuation continuation2;
        if (continuation instanceof C25241) {
            c25241 = (C25241) continuation;
            int i2 = c25241.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c25241.label = i2 - Integer.MIN_VALUE;
            } else {
                c25241 = new C25241(continuation);
            }
        }
        Object obj = c25241.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r2 = c25241.label;
        try {
            if (r2 == 0) {
                ResultKt.throwOnFailure(obj);
                SafeCollector safeCollector = new SafeCollector(flowCollector, c25241.getContext());
                Function2 function2 = this.$action$inlined;
                c25241.L$0 = SpillingKt.nullOutSpilledVariable(flowCollector);
                c25241.L$1 = SpillingKt.nullOutSpilledVariable(c25241);
                c25241.L$2 = flowCollector;
                c25241.L$3 = safeCollector;
                i = 0;
                c25241.I$0 = 0;
                c25241.label = 1;
                InlineMarker.mark(6);
                Object objInvoke = function2.invoke(safeCollector, c25241);
                InlineMarker.mark(7);
                if (objInvoke != coroutine_suspended) {
                    flowCollector2 = flowCollector;
                    continuation2 = c25241;
                    r2 = safeCollector;
                }
                return coroutine_suspended;
            }
            if (r2 != 1) {
                if (r2 != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            int i3 = c25241.I$0;
            SafeCollector safeCollector2 = (SafeCollector) c25241.L$3;
            FlowCollector<? super T> flowCollector3 = (FlowCollector) c25241.L$2;
            Continuation continuation3 = (Continuation) c25241.L$1;
            flowCollector2 = (FlowCollector) c25241.L$0;
            ResultKt.throwOnFailure(obj);
            continuation2 = continuation3;
            i = i3;
            flowCollector = flowCollector3;
            r2 = safeCollector2;
            r2.releaseIntercepted();
            Flow flow = this.$this_onStart$inlined;
            c25241.L$0 = SpillingKt.nullOutSpilledVariable(flowCollector2);
            c25241.L$1 = SpillingKt.nullOutSpilledVariable(continuation2);
            c25241.L$2 = SpillingKt.nullOutSpilledVariable(flowCollector);
            c25241.L$3 = SpillingKt.nullOutSpilledVariable(r2);
            c25241.I$0 = i;
            c25241.label = 2;
        } catch (Throwable th) {
            r2.releaseIntercepted();
            throw th;
        }
    }

    public FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(Function2 function2, Flow flow) {
        this.$action$inlined = function2;
        this.$this_onStart$inlined = flow;
    }
}
