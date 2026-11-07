package kotlinx.coroutines.flow.internal;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u008f\u0001\u0010\u000e\u001a\u00020\n\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0014\u0010\u0005\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u00032\u0016\u0010\u0007\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0018\u00010\u00030\u000629\u0010\r\u001a5\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\b¢\u0006\u0002\b\fH\u0081@¢\u0006\u0004\b\u000e\u0010\u000f*\u001c\b\u0002\u0010\u0011\"\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00102\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0010¨\u0006\u0012"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/flow/Flow;", "flows", "Lkotlin/Function0;", "arrayFactory", "Lkotlin/Function3;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ExtensionFunctionType;", "transform", "combineInternal", "(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/collections/IndexedValue;", "Update", "kotlinx-coroutines-core"}, m910k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,140:1\n105#2:141\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n*L\n83#1:141\n*E\n"})
public abstract class CombineKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m920c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", m921f = "Combine.kt", m922i = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}, m923l = {51, 73, 76}, m924m = "invokeSuspend", m925n = {"$this$flowScope", "latestValues", "resultChannel", "nonClosed", "lastReceivedEpoch", "size", "remainingAbsentValues", "currentEpoch", "$this$flowScope", "latestValues", "resultChannel", "nonClosed", "lastReceivedEpoch", "element", "results", "size", "remainingAbsentValues", "currentEpoch", "$this$flowScope", "latestValues", "resultChannel", "nonClosed", "lastReceivedEpoch", "element", "results", "size", "remainingAbsentValues", "currentEpoch"}, m926s = {"L$0", "L$1", "L$2", "L$3", "L$4", "I$0", "I$1", "I$2", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0", "I$1", "I$2", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0", "I$1", "I$2"}, m927v = 1)
    public static final class C25482 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function0<T[]> $arrayFactory;
        final /* synthetic */ Flow<T>[] $flows;
        final /* synthetic */ FlowCollector<R> $this_combineInternal;
        final /* synthetic */ Function3<FlowCollector<? super R>, T[], Continuation<? super Unit>, Object> $transform;
        int I$0;
        int I$1;
        int I$2;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C25482(Flow<? extends T>[] flowArr, Function0<T[]> function0, Function3<? super FlowCollector<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, FlowCollector<? super R> flowCollector, Continuation<? super C25482> continuation) {
            super(2, continuation);
            this.$flows = flowArr;
            this.$arrayFactory = function0;
            this.$transform = function3;
            this.$this_combineInternal = flowCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C25482 c25482 = new C25482(this.$flows, this.$arrayFactory, this.$transform, this.$this_combineInternal, continuation);
            c25482.L$0 = obj;
            return c25482;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C25482) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:46:0x01aa, code lost:
        
            if (r10.invoke(r11, r14, r22) == r1) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x016c, code lost:
        
            r20 = r12;
            r12 = r4;
            r4 = r6;
            r6 = r20;
            r20 = r7;
         */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00f8  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00fb A[LOOP:0: B:28:0x00fb->B:36:0x0124, LOOP_START, PHI: r4 r14
  0x00fb: PHI (r4v6 int) = (r4v5 int), (r4v7 int) binds: [B:25:0x00f6, B:36:0x0124] A[DONT_GENERATE, DONT_INLINE]
  0x00fb: PHI (r14v5 kotlin.collections.IndexedValue) = (r14v4 kotlin.collections.IndexedValue), (r14v10 kotlin.collections.IndexedValue) binds: [B:25:0x00f6, B:36:0x0124] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x01ad -> B:20:0x00c1). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            int length;
            Object[] objArr;
            int i;
            byte[] bArr;
            int i2;
            AtomicInteger atomicInteger;
            Channel channel;
            Object objMo5120receiveCatchingJP2dKIU;
            Channel channel2;
            int i3;
            byte[] bArr2;
            int i4;
            IndexedValue indexedValue;
            IndexedValue indexedValue2;
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i5 = this.label;
            int i6 = 1;
            Object obj2 = null;
            if (i5 == 0) {
                ResultKt.throwOnFailure(obj);
                length = this.$flows.length;
                if (length == 0) {
                    return Unit.INSTANCE;
                }
                objArr = new Object[length];
                ArraysKt.fill$default(objArr, NullSurrogateKt.UNINITIALIZED, 0, 0, 6, (Object) null);
                Channel channelChannel$default = ChannelKt.Channel$default(length, null, null, 6, null);
                AtomicInteger atomicInteger2 = new AtomicInteger(length);
                i = 0;
                int i7 = 0;
                while (i7 < length) {
                    AtomicInteger atomicInteger3 = atomicInteger2;
                    int i8 = i7;
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(this.$flows, i8, atomicInteger3, channelChannel$default, null), 3, null);
                    i7 = i8 + 1;
                    atomicInteger2 = atomicInteger3;
                }
                bArr = new byte[length];
                i2 = length;
                atomicInteger = atomicInteger2;
                channel = channelChannel$default;
                i3 = (byte) (i + 1);
                this.L$0 = SpillingKt.nullOutSpilledVariable(coroutineScope);
                this.L$1 = objArr;
                this.L$2 = channel;
                this.L$3 = SpillingKt.nullOutSpilledVariable(atomicInteger);
                this.L$4 = bArr;
                this.L$5 = obj2;
                this.L$6 = obj2;
                this.I$0 = i2;
                this.I$1 = length;
                this.I$2 = i3;
                this.label = i6;
                objMo5120receiveCatchingJP2dKIU = channel.mo5120receiveCatchingJP2dKIU(this);
                if (objMo5120receiveCatchingJP2dKIU != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i5 != 1) {
                if (i5 != 2 && i5 != 3) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                int i9 = this.I$2;
                int i10 = this.I$1;
                i2 = this.I$0;
                byte[] bArr3 = (byte[]) this.L$4;
                AtomicInteger atomicInteger4 = (AtomicInteger) this.L$3;
                Channel channel3 = (Channel) this.L$2;
                objArr = (Object[]) this.L$1;
                ResultKt.throwOnFailure(obj);
                length = i10;
                bArr = bArr3;
                channel = channel3;
                i = i9;
                atomicInteger = atomicInteger4;
                i6 = 1;
                obj2 = null;
                i3 = (byte) (i + 1);
                this.L$0 = SpillingKt.nullOutSpilledVariable(coroutineScope);
                this.L$1 = objArr;
                this.L$2 = channel;
                this.L$3 = SpillingKt.nullOutSpilledVariable(atomicInteger);
                this.L$4 = bArr;
                this.L$5 = obj2;
                this.L$6 = obj2;
                this.I$0 = i2;
                this.I$1 = length;
                this.I$2 = i3;
                this.label = i6;
                objMo5120receiveCatchingJP2dKIU = channel.mo5120receiveCatchingJP2dKIU(this);
                if (objMo5120receiveCatchingJP2dKIU != coroutine_suspended) {
                    Channel channel4 = channel;
                    bArr2 = bArr;
                    i4 = length;
                    channel2 = channel4;
                    indexedValue = (IndexedValue) ChannelResult.m5128getOrNullimpl(objMo5120receiveCatchingJP2dKIU);
                    if (indexedValue != null) {
                        return Unit.INSTANCE;
                    }
                    do {
                        indexedValue2 = indexedValue;
                        int index = indexedValue2.getIndex();
                        Object obj3 = objArr[index];
                        objArr[index] = indexedValue2.getValue();
                        if (obj3 == NullSurrogateKt.UNINITIALIZED) {
                            i4--;
                        }
                        if (bArr2[index] == i3) {
                            break;
                        }
                        bArr2[index] = (byte) i3;
                        indexedValue = (IndexedValue) ChannelResult.m5128getOrNullimpl(channel2.mo5121tryReceivePtdJZtk());
                    } while (indexedValue != null);
                    if (i4 != 0) {
                        Channel channel5 = channel2;
                        length = i4;
                        bArr = bArr2;
                        channel = channel5;
                        i = i3;
                        i6 = 1;
                        i3 = (byte) (i + 1);
                        this.L$0 = SpillingKt.nullOutSpilledVariable(coroutineScope);
                        this.L$1 = objArr;
                        this.L$2 = channel;
                        this.L$3 = SpillingKt.nullOutSpilledVariable(atomicInteger);
                        this.L$4 = bArr;
                        this.L$5 = obj2;
                        this.L$6 = obj2;
                        this.I$0 = i2;
                        this.I$1 = length;
                        this.I$2 = i3;
                        this.label = i6;
                        objMo5120receiveCatchingJP2dKIU = channel.mo5120receiveCatchingJP2dKIU(this);
                        if (objMo5120receiveCatchingJP2dKIU != coroutine_suspended) {
                        }
                    } else {
                        Object[] objArr2 = (Object[]) this.$arrayFactory.invoke();
                        if (objArr2 == null) {
                            Function3<FlowCollector<? super R>, T[], Continuation<? super Unit>, Object> function3 = this.$transform;
                            Object obj4 = this.$this_combineInternal;
                            this.L$0 = SpillingKt.nullOutSpilledVariable(coroutineScope);
                            this.L$1 = objArr;
                            this.L$2 = channel2;
                            this.L$3 = SpillingKt.nullOutSpilledVariable(atomicInteger);
                            this.L$4 = bArr2;
                            this.L$5 = SpillingKt.nullOutSpilledVariable(indexedValue2);
                            this.L$6 = SpillingKt.nullOutSpilledVariable(objArr2);
                            this.I$0 = i2;
                            this.I$1 = i4;
                            this.I$2 = i3;
                            this.label = 2;
                            if (function3.invoke(obj4, objArr, this) != coroutine_suspended) {
                                Channel channel6 = channel2;
                                length = i4;
                                bArr = bArr2;
                                channel = channel6;
                                i = i3;
                                i6 = 1;
                                obj2 = null;
                            }
                        } else {
                            ArraysKt.copyInto$default(objArr, objArr2, 0, 0, 0, 14, (Object) null);
                            Function3<FlowCollector<? super R>, T[], Continuation<? super Unit>, Object> function32 = this.$transform;
                            Object obj5 = this.$this_combineInternal;
                            this.L$0 = SpillingKt.nullOutSpilledVariable(coroutineScope);
                            this.L$1 = objArr;
                            this.L$2 = channel2;
                            this.L$3 = SpillingKt.nullOutSpilledVariable(atomicInteger);
                            this.L$4 = bArr2;
                            this.L$5 = SpillingKt.nullOutSpilledVariable(indexedValue2);
                            this.L$6 = SpillingKt.nullOutSpilledVariable(objArr2);
                            this.I$0 = i2;
                            this.I$1 = i4;
                            this.I$2 = i3;
                            this.label = 3;
                        }
                        i3 = (byte) (i + 1);
                        this.L$0 = SpillingKt.nullOutSpilledVariable(coroutineScope);
                        this.L$1 = objArr;
                        this.L$2 = channel;
                        this.L$3 = SpillingKt.nullOutSpilledVariable(atomicInteger);
                        this.L$4 = bArr;
                        this.L$5 = obj2;
                        this.L$6 = obj2;
                        this.I$0 = i2;
                        this.I$1 = length;
                        this.I$2 = i3;
                        this.label = i6;
                        objMo5120receiveCatchingJP2dKIU = channel.mo5120receiveCatchingJP2dKIU(this);
                        if (objMo5120receiveCatchingJP2dKIU != coroutine_suspended) {
                        }
                    }
                }
                return coroutine_suspended;
            }
            int i11 = this.I$2;
            i4 = this.I$1;
            i2 = this.I$0;
            bArr2 = (byte[]) this.L$4;
            AtomicInteger atomicInteger5 = (AtomicInteger) this.L$3;
            channel2 = (Channel) this.L$2;
            objArr = (Object[]) this.L$1;
            ResultKt.throwOnFailure(obj);
            objMo5120receiveCatchingJP2dKIU = ((ChannelResult) obj).getHolder();
            i3 = i11;
            atomicInteger = atomicInteger5;
            indexedValue = (IndexedValue) ChannelResult.m5128getOrNullimpl(objMo5120receiveCatchingJP2dKIU);
            if (indexedValue != null) {
            }
        }

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m920c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", m921f = "Combine.kt", m922i = {}, m923l = {28}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Flow<T>[] $flows;
            final /* synthetic */ int $i;
            final /* synthetic */ AtomicInteger $nonClosed;
            final /* synthetic */ Channel<IndexedValue<Object>> $resultChannel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(Flow<? extends T>[] flowArr, int i, AtomicInteger atomicInteger, Channel<IndexedValue<Object>> channel, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$flows = flowArr;
                this.$i = i;
                this.$nonClosed = atomicInteger;
                this.$resultChannel = channel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$flows, this.$i, this.$nonClosed, this.$resultChannel, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
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
                        int i2 = this.$i;
                        Flow flow = flowArr[i2];
                        C68151 c68151 = new C68151(this.$resultChannel, i2);
                        this.label = 1;
                        if (flow.collect(c68151, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    if (atomicInteger.decrementAndGet() == 0) {
                        SendChannel.close$default(this.$resultChannel, null, 1, null);
                    }
                    return Unit.INSTANCE;
                } finally {
                    if (this.$nonClosed.decrementAndGet() == 0) {
                        SendChannel.close$default(this.$resultChannel, null, 1, null);
                    }
                }
            }

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
            public static final class C68151<T> implements FlowCollector {
                final /* synthetic */ int $i;
                final /* synthetic */ Channel<IndexedValue<Object>> $resultChannel;

                public C68151(Channel<IndexedValue<Object>> channel, int i) {
                    this.$resultChannel = channel;
                    this.$i = i;
                }

                /* JADX WARN: Code restructure failed: missing block: B:20:0x0060, code lost:
                
                    if (kotlinx.coroutines.YieldKt.yield(r0) == r1) goto L21;
                 */
                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(T t, Continuation<? super Unit> continuation) {
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
                    Object obj = combineKt$combineInternal$2$1$1$emit$1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i2 = combineKt$combineInternal$2$1$1$emit$1.label;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj);
                        Channel<IndexedValue<Object>> channel = this.$resultChannel;
                        IndexedValue<Object> indexedValue = new IndexedValue<>(this.$i, t);
                        combineKt$combineInternal$2$1$1$emit$1.L$0 = SpillingKt.nullOutSpilledVariable(t);
                        combineKt$combineInternal$2$1$1$emit$1.label = 1;
                        if (channel.send(indexedValue, combineKt$combineInternal$2$1$1$emit$1) != coroutine_suspended) {
                        }
                        return coroutine_suspended;
                    }
                    if (i2 != 1) {
                        if (i2 == 2) {
                            ResultKt.throwOnFailure(obj);
                            return Unit.INSTANCE;
                        }
                        Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    t = (T) combineKt$combineInternal$2$1$1$emit$1.L$0;
                    ResultKt.throwOnFailure(obj);
                    combineKt$combineInternal$2$1$1$emit$1.L$0 = SpillingKt.nullOutSpilledVariable(t);
                    combineKt$combineInternal$2$1$1$emit$1.label = 2;
                }
            }
        }
    }

    @PublishedApi
    public static final <R, T> Object combineInternal(FlowCollector<? super R> flowCollector, Flow<? extends T>[] flowArr, Function0<T[]> function0, Function3<? super FlowCollector<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super Unit> continuation) {
        Object objFlowScope = FlowCoroutineKt.flowScope(new C25482(flowArr, function0, function3, flowCollector, null), continuation);
        return objFlowScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFlowScope : Unit.INSTANCE;
    }
}
