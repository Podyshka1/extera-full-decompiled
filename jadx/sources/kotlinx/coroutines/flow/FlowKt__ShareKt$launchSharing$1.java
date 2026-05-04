package kotlinx.coroutines.flow;

import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharingStarted;

/* JADX INFO: loaded from: classes5.dex */
final class FlowKt__ShareKt$launchSharing$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Object $initialValue;
    final /* synthetic */ MutableSharedFlow $shared;
    final /* synthetic */ SharingStarted $started;
    final /* synthetic */ Flow $upstream;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__ShareKt$launchSharing$1(SharingStarted sharingStarted, Flow flow, MutableSharedFlow mutableSharedFlow, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$started = sharingStarted;
        this.$upstream = flow;
        this.$shared = mutableSharedFlow;
        this.$initialValue = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FlowKt__ShareKt$launchSharing$1(this.$started, this.$upstream, this.$shared, this.$initialValue, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((FlowKt__ShareKt$launchSharing$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003c, code lost:
    
        if (r8.collect(r1, r7) == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0066, code lost:
    
        if (r8.collect(r1, r7) != r0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008a, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.collectLatest(r8, r1, r7) == r0) goto L28;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SharingStarted sharingStarted = this.$started;
            SharingStarted.Companion companion = SharingStarted.Companion;
            if (sharingStarted == companion.getEagerly()) {
                Flow flow = this.$upstream;
                MutableSharedFlow mutableSharedFlow = this.$shared;
                this.label = 1;
            } else {
                if (this.$started == companion.getLazily()) {
                    StateFlow subscriptionCount = this.$shared.getSubscriptionCount();
                    C26311 c26311 = new C26311(null);
                    this.label = 2;
                    if (FlowKt.first(subscriptionCount, c26311, this) != coroutine_suspended) {
                        Flow flow2 = this.$upstream;
                        MutableSharedFlow mutableSharedFlow2 = this.$shared;
                        this.label = 3;
                    }
                } else {
                    Flow flowDistinctUntilChanged = FlowKt.distinctUntilChanged(this.$started.command(this.$shared.getSubscriptionCount()));
                    C26322 c26322 = new C26322(this.$upstream, this.$shared, this.$initialValue, null);
                    this.label = 4;
                }
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    Flow flow22 = this.$upstream;
                    MutableSharedFlow mutableSharedFlow22 = this.$shared;
                    this.label = 3;
                } else if (i != 3 && i != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1 */
    static final class C26311 extends SuspendLambda implements Function2 {
        /* synthetic */ int I$0;
        int label;

        C26311(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C26311 c26311 = new C26311(continuation);
            c26311.I$0 = ((Number) obj).intValue();
            return c26311;
        }

        public final Object invoke(int i, Continuation continuation) {
            return ((C26311) create(Integer.valueOf(i), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke(((Number) obj).intValue(), (Continuation) obj2);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(this.I$0 > 0);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2 */
    static final class C26322 extends SuspendLambda implements Function2 {
        final /* synthetic */ Object $initialValue;
        final /* synthetic */ MutableSharedFlow $shared;
        final /* synthetic */ Flow $upstream;
        /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2$WhenMappings */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SharingCommand.values().length];
                try {
                    iArr[SharingCommand.START.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SharingCommand.STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[SharingCommand.STOP_AND_RESET_REPLAY_CACHE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C26322(Flow flow, MutableSharedFlow mutableSharedFlow, Object obj, Continuation continuation) {
            super(2, continuation);
            this.$upstream = flow;
            this.$shared = mutableSharedFlow;
            this.$initialValue = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C26322 c26322 = new C26322(this.$upstream, this.$shared, this.$initialValue, continuation);
            c26322.L$0 = obj;
            return c26322;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SharingCommand sharingCommand, Continuation continuation) {
            return ((C26322) create(sharingCommand, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                int i2 = WhenMappings.$EnumSwitchMapping$0[((SharingCommand) this.L$0).ordinal()];
                if (i2 == 1) {
                    Flow flow = this.$upstream;
                    MutableSharedFlow mutableSharedFlow = this.$shared;
                    this.label = 1;
                    if (flow.collect(mutableSharedFlow, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i2 != 2) {
                    if (i2 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Object obj2 = this.$initialValue;
                    if (obj2 == SharedFlowKt.NO_VALUE) {
                        this.$shared.resetReplayCache();
                    } else {
                        Boxing.boxBoolean(this.$shared.tryEmit(obj2));
                    }
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }
}
