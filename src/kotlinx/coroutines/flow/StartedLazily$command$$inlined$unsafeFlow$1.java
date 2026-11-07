package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.InstantKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001e\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/StartedLazily$command$$inlined$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", _UrlKt.FRAGMENT_ENCODE_SET, "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 SharingStarted.kt\nkotlinx/coroutines/flow/StartedLazily\n*L\n1#1,111:1\n151#2,2:112\n*E\n"})
public final class StartedLazily$command$$inlined$unsafeFlow$1 implements Flow<SharingCommand> {
    final /* synthetic */ StateFlow $subscriptionCount$inlined;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.StartedLazily$command$$inlined$unsafeFlow$1$1 */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "kotlinx.coroutines.flow.StartedLazily$command$$inlined$unsafeFlow$1", m873f = "SharingStarted.kt", m874i = {0, 0, 0, 0, 0}, m875l = {113}, m876m = "collect", m877n = {"collector", "$completion", "$this$command_u24lambda_u240", "started", "$i$a$-unsafeFlow-StartedLazily$command$1"}, m878s = {"L$0", "L$1", "L$2", "L$3", "I$0"}, m879v = 1)
    public static final class C24011 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public C24011(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StartedLazily$command$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public StartedLazily$command$$inlined$unsafeFlow$1(StateFlow stateFlow) {
        this.$subscriptionCount$inlined = stateFlow;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object collect(FlowCollector<? super SharingCommand> flowCollector, Continuation<? super Unit> continuation) {
        C24011 c24011;
        if (continuation instanceof C24011) {
            c24011 = (C24011) continuation;
            int i = c24011.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c24011.label = i - Integer.MIN_VALUE;
            } else {
                c24011 = new C24011(continuation);
            }
        }
        Object obj = c24011.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c24011.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            StateFlow stateFlow = this.$subscriptionCount$inlined;
            StartedLazily$command$1$1 startedLazily$command$1$1 = new StartedLazily$command$1$1(booleanRef, flowCollector);
            c24011.L$0 = SpillingKt.nullOutSpilledVariable(flowCollector);
            c24011.L$1 = SpillingKt.nullOutSpilledVariable(c24011);
            c24011.L$2 = SpillingKt.nullOutSpilledVariable(flowCollector);
            c24011.L$3 = SpillingKt.nullOutSpilledVariable(booleanRef);
            c24011.I$0 = 0;
            c24011.label = 1;
            if (stateFlow.collect(startedLazily$command$1$1, c24011) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        InstantKt$$ExternalSyntheticBUOutline0.m896m();
        return null;
    }
}
