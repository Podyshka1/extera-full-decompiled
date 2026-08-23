package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", _UrlKt.FRAGMENT_ENCODE_SET, "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n1#1,108:1\n129#2,15:109\n*E\n"})
public final class FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1<T> implements Flow<T> {
    final /* synthetic */ Function4 $predicate$inlined;
    final /* synthetic */ Flow $this_retryWhen$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1", m766f = "Errors.kt", m767i = {0, 0, 0, 0, 1, 1, 1, 1}, m768l = {113, 115}, m769m = "collect", m770n = {"this", "$this$retryWhen_u24lambda_u242", "attempt", "shallRetry", "this", "$this$retryWhen_u24lambda_u242", "cause", "attempt"}, m771s = {"L$0", "L$1", "J$0", "I$0", "L$0", "L$1", "L$2", "J$0"})
    public static final class C23191 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C23191(Continuation continuation) {
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

    /* JADX WARN: Removed duplicated region for block: B:20:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0079 -> B:30:0x00a9). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x009a -> B:27:0x009d). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object collect(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) throws Throwable {
        C23191 c23191;
        long j;
        long j2;
        FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1<T> flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
        FlowCollector<? super T> flowCollector2;
        int i;
        Throwable th;
        if (continuation instanceof C23191) {
            c23191 = (C23191) continuation;
            int i2 = c23191.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c23191.label = i2 - Integer.MIN_VALUE;
            } else {
                c23191 = new C23191(continuation);
            }
        }
        Object objCatchImpl = c23191.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c23191.label;
        if (i3 == 0) {
            ResultKt.throwOnFailure(objCatchImpl);
            j = 0;
            Flow flow = this.$this_retryWhen$inlined;
            c23191.L$0 = this;
            c23191.L$1 = flowCollector;
            c23191.L$2 = null;
            c23191.J$0 = j;
            i = 0;
            c23191.I$0 = 0;
            c23191.label = 1;
            objCatchImpl = FlowKt.catchImpl(flow, flowCollector, c23191);
            if (objCatchImpl != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i3 == 1) {
            int i4 = c23191.I$0;
            long j3 = c23191.J$0;
            FlowCollector<? super T> flowCollector3 = (FlowCollector) c23191.L$1;
            FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1<T> flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$12 = (FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1) c23191.L$0;
            ResultKt.throwOnFailure(objCatchImpl);
            i = i4;
            flowCollector2 = flowCollector3;
            flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$12;
            j2 = j3;
            th = (Throwable) objCatchImpl;
            if (th != null) {
            }
            long j4 = j2;
            flowCollector = flowCollector2;
            this = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
            j = j4;
            if (i == 0) {
            }
            Flow flow2 = this.$this_retryWhen$inlined;
            c23191.L$0 = this;
            c23191.L$1 = flowCollector;
            c23191.L$2 = null;
            c23191.J$0 = j;
            i = 0;
            c23191.I$0 = 0;
            c23191.label = 1;
            objCatchImpl = FlowKt.catchImpl(flow2, flowCollector, c23191);
            if (objCatchImpl != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i3 != 2) {
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        j2 = c23191.J$0;
        Throwable th2 = (Throwable) c23191.L$2;
        flowCollector2 = (FlowCollector) c23191.L$1;
        flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 = (FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1) c23191.L$0;
        ResultKt.throwOnFailure(objCatchImpl);
        if (!((Boolean) objCatchImpl).booleanValue()) {
            j2++;
            i = 1;
            long j42 = j2;
            flowCollector = flowCollector2;
            this = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
            j = j42;
            if (i == 0) {
                return Unit.INSTANCE;
            }
            Flow flow22 = this.$this_retryWhen$inlined;
            c23191.L$0 = this;
            c23191.L$1 = flowCollector;
            c23191.L$2 = null;
            c23191.J$0 = j;
            i = 0;
            c23191.I$0 = 0;
            c23191.label = 1;
            objCatchImpl = FlowKt.catchImpl(flow22, flowCollector, c23191);
            if (objCatchImpl != coroutine_suspended) {
                long j5 = j;
                flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 = this;
                flowCollector2 = flowCollector;
                j2 = j5;
                th = (Throwable) objCatchImpl;
                if (th != null) {
                    Function4 function4 = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.$predicate$inlined;
                    Long lBoxLong = Boxing.boxLong(j2);
                    c23191.L$0 = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
                    c23191.L$1 = flowCollector2;
                    c23191.L$2 = th;
                    c23191.J$0 = j2;
                    c23191.label = 2;
                    InlineMarker.mark(6);
                    Object objInvoke = function4.invoke(flowCollector2, th, lBoxLong, c23191);
                    InlineMarker.mark(7);
                    if (objInvoke != coroutine_suspended) {
                        th2 = th;
                        objCatchImpl = objInvoke;
                        if (!((Boolean) objCatchImpl).booleanValue()) {
                            throw th2;
                        }
                    }
                }
                long j422 = j2;
                flowCollector = flowCollector2;
                this = flowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
                j = j422;
                if (i == 0) {
                }
                Flow flow222 = this.$this_retryWhen$inlined;
                c23191.L$0 = this;
                c23191.L$1 = flowCollector;
                c23191.L$2 = null;
                c23191.J$0 = j;
                i = 0;
                c23191.I$0 = 0;
                c23191.label = 1;
                objCatchImpl = FlowKt.catchImpl(flow222, flowCollector, c23191);
                if (objCatchImpl != coroutine_suspended) {
                }
            }
            return coroutine_suspended;
        }
    }
}
