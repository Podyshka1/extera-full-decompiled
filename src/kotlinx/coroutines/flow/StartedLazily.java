package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.time.InstantKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/flow/StartedLazily;", "Lkotlinx/coroutines/flow/SharingStarted;", "<init>", "()V", "command", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/SharingCommand;", "subscriptionCount", "Lkotlinx/coroutines/flow/StateFlow;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", _UrlKt.FRAGMENT_ENCODE_SET, "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
final class StartedLazily implements SharingStarted {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.StartedLazily$command$1 */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlinx/coroutines/flow/SharingCommand;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "kotlinx.coroutines.flow.StartedLazily$command$1", m766f = "SharingStarted.kt", m767i = {}, m768l = {151}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    public static final class C23311 extends SuspendLambda implements Function2<FlowCollector<? super SharingCommand>, Continuation<? super Unit>, Object> {
        final /* synthetic */ StateFlow<Integer> $subscriptionCount;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23311(StateFlow<Integer> stateFlow, Continuation<? super C23311> continuation) {
            super(2, continuation);
            this.$subscriptionCount = stateFlow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C23311 c23311 = new C23311(this.$subscriptionCount, continuation);
            c23311.L$0 = obj;
            return c23311;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super SharingCommand> flowCollector, Continuation<? super Unit> continuation) {
            return ((C23311) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                FlowCollector flowCollector = (FlowCollector) this.L$0;
                Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                StateFlow<Integer> stateFlow = this.$subscriptionCount;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(booleanRef, flowCollector);
                this.label = 1;
                if (stateFlow.collect(anonymousClass1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            InstantKt$$ExternalSyntheticBUOutline0.m813m();
            return null;
        }

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.StartedLazily$command$1$1, reason: invalid class name */
        @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
        public static final class AnonymousClass1<T> implements FlowCollector {
            final /* synthetic */ FlowCollector<SharingCommand> $$this$flow;
            final /* synthetic */ Ref.BooleanRef $started;

            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(Ref.BooleanRef booleanRef, FlowCollector<? super SharingCommand> flowCollector) {
                this.$started = booleanRef;
                this.$$this$flow = flowCollector;
            }

            /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object emit(int i, Continuation<? super Unit> continuation) {
                StartedLazily$command$1$1$emit$1 startedLazily$command$1$1$emit$1;
                if (continuation instanceof StartedLazily$command$1$1$emit$1) {
                    startedLazily$command$1$1$emit$1 = (StartedLazily$command$1$1$emit$1) continuation;
                    int i2 = startedLazily$command$1$1$emit$1.label;
                    if ((i2 & Integer.MIN_VALUE) != 0) {
                        startedLazily$command$1$1$emit$1.label = i2 - Integer.MIN_VALUE;
                    } else {
                        startedLazily$command$1$1$emit$1 = new StartedLazily$command$1$1$emit$1(this, continuation);
                    }
                }
                Object obj = startedLazily$command$1$1$emit$1.result;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i3 = startedLazily$command$1$1$emit$1.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (i > 0) {
                        Ref.BooleanRef booleanRef = this.$started;
                        if (!booleanRef.element) {
                            booleanRef.element = true;
                            FlowCollector<SharingCommand> flowCollector = this.$$this$flow;
                            SharingCommand sharingCommand = SharingCommand.START;
                            startedLazily$command$1$1$emit$1.label = 1;
                            if (flowCollector.emit(sharingCommand, startedLazily$command$1$1$emit$1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    }
                    return Unit.INSTANCE;
                }
                if (i3 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }

            @Override // kotlinx.coroutines.flow.FlowCollector
            public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
                return emit(((Number) obj).intValue(), (Continuation<? super Unit>) continuation);
            }
        }
    }

    @Override // kotlinx.coroutines.flow.SharingStarted
    public Flow<SharingCommand> command(StateFlow<Integer> subscriptionCount) {
        return FlowKt.flow(new C23311(subscriptionCount, null));
    }

    public String toString() {
        return "SharingStarted.Lazily";
    }
}
