package kotlinx.coroutines.flow.internal;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CombineKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2 */
    static final class C26422 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function0 $arrayFactory;
        final /* synthetic */ Flow[] $flows;
        final /* synthetic */ FlowCollector $this_combineInternal;
        final /* synthetic */ Function3 $transform;
        int I$0;
        int I$1;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C26422(Flow[] flowArr, Function0 function0, Function3 function3, FlowCollector flowCollector, Continuation continuation) {
            super(2, continuation);
            this.$flows = flowArr;
            this.$arrayFactory = function0;
            this.$transform = function3;
            this.$this_combineInternal = flowCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C26422 c26422 = new C26422(this.$flows, this.$arrayFactory, this.$transform, this.$this_combineInternal, continuation);
            c26422.L$0 = obj;
            return c26422;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C26422) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x0106, code lost:
        
            if (r10.invoke(r11, r9, r21) == r1) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0126, code lost:
        
            if (r11.invoke(r12, r10, r21) == r1) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0129, code lost:
        
            if (r6 != 0) goto L44;
         */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00be  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00c1 A[LOOP:0: B:28:0x00c1->B:47:?, LOOP_START, PHI: r6 r10
  0x00c1: PHI (r6v4 int) = (r6v3 int), (r6v5 int) binds: [B:25:0x00bc, B:47:?] A[DONT_GENERATE, DONT_INLINE]
  0x00c1: PHI (r10v5 kotlin.collections.IndexedValue) = (r10v4 kotlin.collections.IndexedValue), (r10v12 kotlin.collections.IndexedValue) binds: [B:25:0x00bc, B:47:?] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00e8  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0106 -> B:44:0x0129). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x0126 -> B:44:0x0129). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            int length;
            int i;
            byte[] bArr;
            Object[] objArr;
            Channel channel;
            Object objMo3668receiveCatchingJP2dKIU;
            Object[] objArr2;
            byte[] bArr2;
            int i2;
            int i3;
            IndexedValue indexedValue;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.label;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                length = this.$flows.length;
                if (length == 0) {
                    return Unit.INSTANCE;
                }
                Object[] objArr3 = new Object[length];
                ArraysKt.fill$default(objArr3, NullSurrogateKt.UNINITIALIZED, 0, 0, 6, (Object) null);
                Channel channelChannel$default = ChannelKt.Channel$default(length, null, null, 6, null);
                AtomicInteger atomicInteger = new AtomicInteger(length);
                i = 0;
                int i5 = 0;
                while (i5 < length) {
                    AtomicInteger atomicInteger2 = atomicInteger;
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(this.$flows, i5, atomicInteger2, channelChannel$default, null), 3, null);
                    i5++;
                    atomicInteger = atomicInteger2;
                }
                bArr = new byte[length];
                objArr = objArr3;
                channel = channelChannel$default;
                byte b = (byte) (i + 1);
                this.L$0 = objArr;
                this.L$1 = channel;
                this.L$2 = bArr;
                this.I$0 = length;
                this.I$1 = b;
                this.label = 1;
                objMo3668receiveCatchingJP2dKIU = channel.mo3668receiveCatchingJP2dKIU(this);
                if (objMo3668receiveCatchingJP2dKIU != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i4 != 1) {
                if (i4 != 2 && i4 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i3 = this.I$1;
                i2 = this.I$0;
                bArr2 = (byte[]) this.L$2;
                channel = (Channel) this.L$1;
                objArr2 = (Object[]) this.L$0;
                ResultKt.throwOnFailure(obj);
                i = i3;
                length = i2;
                bArr = bArr2;
                objArr = objArr2;
                byte b2 = (byte) (i + 1);
                this.L$0 = objArr;
                this.L$1 = channel;
                this.L$2 = bArr;
                this.I$0 = length;
                this.I$1 = b2;
                this.label = 1;
                objMo3668receiveCatchingJP2dKIU = channel.mo3668receiveCatchingJP2dKIU(this);
                if (objMo3668receiveCatchingJP2dKIU != coroutine_suspended) {
                    byte[] bArr3 = bArr;
                    i2 = length;
                    i3 = b2;
                    objArr2 = objArr;
                    bArr2 = bArr3;
                    indexedValue = (IndexedValue) ChannelResult.m3677getOrNullimpl(objMo3668receiveCatchingJP2dKIU);
                    if (indexedValue != null) {
                        return Unit.INSTANCE;
                    }
                    while (true) {
                        int index = indexedValue.getIndex();
                        Object obj2 = objArr2[index];
                        objArr2[index] = indexedValue.getValue();
                        if (obj2 == NullSurrogateKt.UNINITIALIZED) {
                            i2--;
                        }
                        if (bArr2[index] != i3) {
                            bArr2[index] = (byte) i3;
                            indexedValue = (IndexedValue) ChannelResult.m3677getOrNullimpl(channel.mo3669tryReceivePtdJZtk());
                            if (indexedValue == null) {
                                if (i2 == 0) {
                                }
                            }
                        } else if (i2 == 0) {
                            Object[] objArr4 = (Object[]) this.$arrayFactory.invoke();
                            if (objArr4 == null) {
                                Function3 function3 = this.$transform;
                                FlowCollector flowCollector = this.$this_combineInternal;
                                this.L$0 = objArr2;
                                this.L$1 = channel;
                                this.L$2 = bArr2;
                                this.I$0 = i2;
                                this.I$1 = i3;
                                this.label = 2;
                            } else {
                                ArraysKt.copyInto$default(objArr2, objArr4, 0, 0, 0, 14, (Object) null);
                                Function3 function32 = this.$transform;
                                FlowCollector flowCollector2 = this.$this_combineInternal;
                                this.L$0 = objArr2;
                                this.L$1 = channel;
                                this.L$2 = bArr2;
                                this.I$0 = i2;
                                this.I$1 = i3;
                                this.label = 3;
                            }
                        }
                        byte b22 = (byte) (i + 1);
                        this.L$0 = objArr;
                        this.L$1 = channel;
                        this.L$2 = bArr;
                        this.I$0 = length;
                        this.I$1 = b22;
                        this.label = 1;
                        objMo3668receiveCatchingJP2dKIU = channel.mo3668receiveCatchingJP2dKIU(this);
                        if (objMo3668receiveCatchingJP2dKIU != coroutine_suspended) {
                        }
                    }
                }
                return coroutine_suspended;
            }
            i3 = this.I$1;
            i2 = this.I$0;
            bArr2 = (byte[]) this.L$2;
            channel = (Channel) this.L$1;
            objArr2 = (Object[]) this.L$0;
            ResultKt.throwOnFailure(obj);
            objMo3668receiveCatchingJP2dKIU = ((ChannelResult) obj).m3683unboximpl();
            indexedValue = (IndexedValue) ChannelResult.m3677getOrNullimpl(objMo3668receiveCatchingJP2dKIU);
            if (indexedValue != null) {
            }
        }

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            final /* synthetic */ Flow[] $flows;

            /* JADX INFO: renamed from: $i */
            final /* synthetic */ int f1543$i;
            final /* synthetic */ AtomicInteger $nonClosed;
            final /* synthetic */ Channel $resultChannel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Flow[] flowArr, int i, AtomicInteger atomicInteger, Channel channel, Continuation continuation) {
                super(2, continuation);
                this.$flows = flowArr;
                this.f1543$i = i;
                this.$nonClosed = atomicInteger;
                this.$resultChannel = channel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(this.$flows, this.f1543$i, this.$nonClosed, this.$resultChannel, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                AtomicInteger atomicInteger;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                try {
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        Flow[] flowArr = this.$flows;
                        int i2 = this.f1543$i;
                        Flow flow = flowArr[i2];
                        C75741 c75741 = new C75741(this.$resultChannel, i2);
                        this.label = 1;
                        if (flow.collect(c75741, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    if (atomicInteger.decrementAndGet() == 0) {
                        SendChannel.DefaultImpls.close$default(this.$resultChannel, null, 1, null);
                    }
                    return Unit.INSTANCE;
                } finally {
                    if (this.$nonClosed.decrementAndGet() == 0) {
                        SendChannel.DefaultImpls.close$default(this.$resultChannel, null, 1, null);
                    }
                }
            }

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1, reason: invalid class name and collision with other inner class name */
            static final class C75741 implements FlowCollector {

                /* JADX INFO: renamed from: $i */
                final /* synthetic */ int f1544$i;
                final /* synthetic */ Channel $resultChannel;

                C75741(Channel channel, int i) {
                    this.$resultChannel = channel;
                    this.f1544$i = i;
                }

                /* JADX WARN: Code restructure failed: missing block: B:20:0x0053, code lost:
                
                    if (kotlinx.coroutines.YieldKt.yield(r0) == r1) goto L21;
                 */
                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(Object obj, Continuation continuation) {
                    CombineKt$combineInternal$2$1$1$emit$1 combineKt$combineInternal$2$1$1$emit$1;
                    if (continuation instanceof CombineKt$combineInternal$2$1$1$emit$1) {
                        combineKt$combineInternal$2$1$1$emit$1 = (CombineKt$combineInternal$2$1$1$emit$1) continuation;
                        int i = combineKt$combineInternal$2$1$1$emit$1.label;
                        if ((i & Integer.MIN_VALUE) != 0) {
                            combineKt$combineInternal$2$1$1$emit$1.label = i - Integer.MIN_VALUE;
                        } else {
                            combineKt$combineInternal$2$1$1$emit$1 = new CombineKt$combineInternal$2$1$1$emit$1(this, continuation);
                        }
                    }
                    Object obj2 = combineKt$combineInternal$2$1$1$emit$1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i2 = combineKt$combineInternal$2$1$1$emit$1.label;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj2);
                        Channel channel = this.$resultChannel;
                        IndexedValue indexedValue = new IndexedValue(this.f1544$i, obj);
                        combineKt$combineInternal$2$1$1$emit$1.label = 1;
                        if (channel.send(indexedValue, combineKt$combineInternal$2$1$1$emit$1) != coroutine_suspended) {
                        }
                        return coroutine_suspended;
                    }
                    if (i2 != 1) {
                        if (i2 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj2);
                        return Unit.INSTANCE;
                    }
                    ResultKt.throwOnFailure(obj2);
                    combineKt$combineInternal$2$1$1$emit$1.label = 2;
                }
            }
        }
    }

    public static final Object combineInternal(FlowCollector flowCollector, Flow[] flowArr, Function0 function0, Function3 function3, Continuation continuation) {
        Object objFlowScope = FlowCoroutineKt.flowScope(new C26422(flowArr, function0, function3, flowCollector, null), continuation);
        return objFlowScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFlowScope : Unit.INSTANCE;
    }
}
