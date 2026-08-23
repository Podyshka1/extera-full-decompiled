package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.SafeCollector;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", _UrlKt.FRAGMENT_ENCODE_SET, "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,108:1\n73#2:109\n74#2,7:111\n375#3:110\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n73#1:110\n*E\n"})
public final class FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1<T> implements Flow<T> {
    final /* synthetic */ Function2 $action$inlined;
    final /* synthetic */ Flow $this_onStart$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1", m766f = "Emitters.kt", m767i = {0, 0, 0}, m768l = {112, 116}, m769m = "collect", m770n = {"this", "$this$onStart_u24lambda_u241", "safeCollector"}, m771s = {"L$0", "L$1", "L$2"})
    public static final class C23151 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C23151(Continuation continuation) {
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

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007d, code lost:
    
        if (r6.collect(r7, r0) != r1) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) throws Throwable {
        C23151 c23151;
        SafeCollector safeCollector;
        FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1<T> flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
        if (continuation instanceof C23151) {
            c23151 = (C23151) continuation;
            int i = c23151.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c23151.label = i - Integer.MIN_VALUE;
            } else {
                c23151 = new C23151(continuation);
            }
        }
        Object obj = c23151.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c23151.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            SafeCollector safeCollector2 = new SafeCollector(flowCollector, c23151.getContext());
            try {
                Function2 function2 = this.$action$inlined;
                c23151.L$0 = this;
                c23151.L$1 = flowCollector;
                c23151.L$2 = safeCollector2;
                c23151.label = 1;
                InlineMarker.mark(6);
                Object objInvoke = function2.invoke(safeCollector2, c23151);
                InlineMarker.mark(7);
                if (objInvoke != coroutine_suspended) {
                    flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = this;
                    safeCollector = safeCollector2;
                    safeCollector.releaseIntercepted();
                    Flow flow = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.$this_onStart$inlined;
                    c23151.L$0 = null;
                    c23151.L$1 = null;
                    c23151.L$2 = null;
                    c23151.label = 2;
                }
                return coroutine_suspended;
            } catch (Throwable th) {
                th = th;
                safeCollector = safeCollector2;
                safeCollector.releaseIntercepted();
                throw th;
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        safeCollector = (SafeCollector) c23151.L$2;
        flowCollector = (FlowCollector) c23151.L$1;
        flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = (FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1) c23151.L$0;
        try {
            ResultKt.throwOnFailure(obj);
            safeCollector.releaseIntercepted();
            Flow flow2 = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.$this_onStart$inlined;
            c23151.L$0 = null;
            c23151.L$1 = null;
            c23151.L$2 = null;
            c23151.label = 2;
        } catch (Throwable th2) {
            th = th2;
            safeCollector.releaseIntercepted();
            throw th;
        }
    }
}
