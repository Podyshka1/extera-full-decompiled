package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", _UrlKt.FRAGMENT_ENCODE_SET, "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n1#1,108:1\n55#2,3:109\n*E\n"})
public final class FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1<T> implements Flow<T> {
    final /* synthetic */ Function3 $action$inlined;
    final /* synthetic */ Flow $this_catch$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1", m766f = "Errors.kt", m767i = {0, 0}, m768l = {109, 110}, m769m = "collect", m770n = {"this", "$this$catch_u24lambda_u240"}, m771s = {"L$0", "L$1"})
    public static final class C23161 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C23161(Continuation continuation) {
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

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006a, code lost:
    
        if (r6 == r1) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) {
        C23161 c23161;
        if (continuation instanceof C23161) {
            c23161 = (C23161) continuation;
            int i = c23161.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c23161.label = i - Integer.MIN_VALUE;
            } else {
                c23161 = new C23161(continuation);
            }
        }
        Object objCatchImpl = c23161.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c23161.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objCatchImpl);
            Flow flow = this.$this_catch$inlined;
            c23161.L$0 = this;
            c23161.L$1 = flowCollector;
            c23161.label = 1;
            objCatchImpl = FlowKt.catchImpl(flow, flowCollector, c23161);
            if (objCatchImpl != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.throwOnFailure(objCatchImpl);
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        flowCollector = (FlowCollector) c23161.L$1;
        this = (FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1) c23161.L$0;
        ResultKt.throwOnFailure(objCatchImpl);
        Throwable th = (Throwable) objCatchImpl;
        if (th != null) {
            Function3 function3 = this.$action$inlined;
            c23161.L$0 = null;
            c23161.L$1 = null;
            c23161.label = 2;
            InlineMarker.mark(6);
            Object objInvoke = function3.invoke(flowCollector, th, c23161);
            InlineMarker.mark(7);
        }
        return Unit.INSTANCE;
    }
}
