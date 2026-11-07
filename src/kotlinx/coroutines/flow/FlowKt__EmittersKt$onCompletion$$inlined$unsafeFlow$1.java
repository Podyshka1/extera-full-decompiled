package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.SafeCollector;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", _UrlKt.FRAGMENT_ENCODE_SET, "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,111:1\n141#2,13:112\n154#2,6:126\n1307#3:125\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n153#1:125\n*E\n"})
public final class FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1<T> implements Flow<T> {
    final /* synthetic */ Function3 $action$inlined;
    final /* synthetic */ Flow $this_onCompletion$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1 */
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m920c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", m921f = "Emitters.kt", m922i = {0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, m923l = {113, 120, 127}, m924m = "collect", m925n = {"collector", "$completion", "$this$onCompletion_u24lambda_u240", "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1", "collector", "$completion", "$this$onCompletion_u24lambda_u240", "e", "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1", "collector", "$completion", "$this$onCompletion_u24lambda_u240", "sc", "$i$a$-unsafeFlow-FlowKt__EmittersKt$onCompletion$1"}, m926s = {"L$0", "L$1", "L$2", "I$0", "L$0", "L$1", "L$2", "L$3", "I$0", "L$0", "L$1", "L$2", "L$3", "I$0"}, m927v = 1)
    public static final class C25231 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public C25231(Continuation continuation) {
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

    /* JADX WARN: Removed duplicated region for block: B:35:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) throws Throwable {
        C25231 c25231;
        int i;
        int i2;
        Continuation continuation2;
        FlowCollector<? super T> flowCollector2;
        FlowCollector<? super T> flowCollector3;
        ThrowingCollector throwingCollector;
        Function3 function3;
        SafeCollector safeCollector;
        SafeCollector safeCollector2;
        Object objInvoke;
        if (continuation instanceof C25231) {
            c25231 = (C25231) continuation;
            int i3 = c25231.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c25231.label = i3 - Integer.MIN_VALUE;
            } else {
                c25231 = new C25231(continuation);
            }
        }
        Object obj = c25231.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c25231.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            i = 0;
            try {
                Flow flow = this.$this_onCompletion$inlined;
                c25231.L$0 = SpillingKt.nullOutSpilledVariable(flowCollector);
                c25231.L$1 = SpillingKt.nullOutSpilledVariable(c25231);
                c25231.L$2 = flowCollector;
                c25231.I$0 = 0;
                c25231.label = 1;
                if (flow.collect(flowCollector, c25231) != coroutine_suspended) {
                    flowCollector3 = flowCollector;
                    continuation2 = c25231;
                    safeCollector = new SafeCollector(flowCollector, c25231.getContext());
                    Function3 function32 = this.$action$inlined;
                    c25231.L$0 = SpillingKt.nullOutSpilledVariable(flowCollector3);
                    c25231.L$1 = SpillingKt.nullOutSpilledVariable(continuation2);
                    c25231.L$2 = SpillingKt.nullOutSpilledVariable(flowCollector);
                    c25231.L$3 = safeCollector;
                    c25231.I$0 = i;
                    c25231.label = 3;
                    InlineMarker.mark(6);
                    objInvoke = function32.invoke(safeCollector, null, c25231);
                    InlineMarker.mark(7);
                    if (objInvoke != coroutine_suspended) {
                    }
                }
            } catch (Throwable th) {
                th = th;
                i2 = 0;
                continuation2 = c25231;
                flowCollector2 = flowCollector;
                throwingCollector = new ThrowingCollector(th);
                function3 = this.$action$inlined;
                c25231.L$0 = SpillingKt.nullOutSpilledVariable(flowCollector);
                c25231.L$1 = SpillingKt.nullOutSpilledVariable(continuation2);
                c25231.L$2 = SpillingKt.nullOutSpilledVariable(flowCollector2);
                c25231.L$3 = th;
                c25231.I$0 = i2;
                c25231.label = 2;
                if (FlowKt__EmittersKt.invokeSafely$FlowKt__EmittersKt(throwingCollector, function3, th, c25231) != coroutine_suspended) {
                }
            }
            return coroutine_suspended;
        }
        if (i4 != 1) {
            if (i4 == 2) {
                Throwable th2 = (Throwable) c25231.L$3;
                ResultKt.throwOnFailure(obj);
                throw th2;
            }
            if (i4 != 3) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            safeCollector2 = (SafeCollector) c25231.L$3;
            try {
                ResultKt.throwOnFailure(obj);
                safeCollector2.releaseIntercepted();
                return Unit.INSTANCE;
            } catch (Throwable th3) {
                th = th3;
                safeCollector2.releaseIntercepted();
                throw th;
            }
        }
        int i5 = c25231.I$0;
        FlowCollector<? super T> flowCollector4 = (FlowCollector) c25231.L$2;
        continuation2 = (Continuation) c25231.L$1;
        flowCollector3 = (FlowCollector) c25231.L$0;
        try {
            ResultKt.throwOnFailure(obj);
            i = i5;
            flowCollector = flowCollector4;
            safeCollector = new SafeCollector(flowCollector, c25231.getContext());
        } catch (Throwable th4) {
            th = th4;
            flowCollector2 = flowCollector4;
            i2 = i5;
            flowCollector = flowCollector3;
            throwingCollector = new ThrowingCollector(th);
            function3 = this.$action$inlined;
            c25231.L$0 = SpillingKt.nullOutSpilledVariable(flowCollector);
            c25231.L$1 = SpillingKt.nullOutSpilledVariable(continuation2);
            c25231.L$2 = SpillingKt.nullOutSpilledVariable(flowCollector2);
            c25231.L$3 = th;
            c25231.I$0 = i2;
            c25231.label = 2;
            if (FlowKt__EmittersKt.invokeSafely$FlowKt__EmittersKt(throwingCollector, function3, th, c25231) != coroutine_suspended) {
                throw th;
            }
        }
        try {
            Function3 function322 = this.$action$inlined;
            c25231.L$0 = SpillingKt.nullOutSpilledVariable(flowCollector3);
            c25231.L$1 = SpillingKt.nullOutSpilledVariable(continuation2);
            c25231.L$2 = SpillingKt.nullOutSpilledVariable(flowCollector);
            c25231.L$3 = safeCollector;
            c25231.I$0 = i;
            c25231.label = 3;
            InlineMarker.mark(6);
            objInvoke = function322.invoke(safeCollector, null, c25231);
            InlineMarker.mark(7);
            if (objInvoke != coroutine_suspended) {
                safeCollector2 = safeCollector;
                safeCollector2.releaseIntercepted();
                return Unit.INSTANCE;
            }
            return coroutine_suspended;
        } catch (Throwable th5) {
            th = th5;
            safeCollector2 = safeCollector;
            safeCollector2.releaseIntercepted();
            throw th;
        }
    }
}
