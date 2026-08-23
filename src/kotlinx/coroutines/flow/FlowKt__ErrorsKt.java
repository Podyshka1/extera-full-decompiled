package kotlinx.coroutines.flow;

import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Job;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u001ag\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012B\u0010\f\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0002¢\u0006\u0002\b\u000b¢\u0006\u0004\b\r\u0010\u000e\u001a|\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012W\u0010\u0013\u001aS\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u000f¢\u0006\u0002\b\u000b¢\u0006\u0004\b\u0014\u0010\u0015\u001a0\u0010\u0017\u001a\u0004\u0018\u00010\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0080@¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u001b\u0010\u001d\u001a\u00020\u0012*\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001d\u0010!\u001a\u00020\u0012*\u00020\u00042\b\u0010\u001e\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"T", "Lkotlinx/coroutines/flow/Flow;", "Lkotlin/Function3;", "Lkotlinx/coroutines/flow/FlowCollector;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ParameterName;", "name", "cause", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ExtensionFunctionType;", "action", "catch", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;", "Lkotlin/Function4;", _UrlKt.FRAGMENT_ENCODE_SET, "attempt", _UrlKt.FRAGMENT_ENCODE_SET, "predicate", "retryWhen", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/Flow;", "collector", "catchImpl", "(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "isCancellationCause$FlowKt__ErrorsKt", "(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)Z", "isCancellationCause", "other", "isSameExceptionAs$FlowKt__ErrorsKt", "(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z", "isSameExceptionAs", "kotlinx-coroutines-core"}, m754k = 5, mv = {2, 1, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
@SourceDebugExtension({"SMAP\nErrors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,220:1\n105#2:221\n105#2:223\n1#3:222\n159#4:224\n*S KotlinDebug\n*F\n+ 1 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n54#1:221\n128#1:223\n217#1:224\n*E\n"})
abstract /* synthetic */ class FlowKt__ErrorsKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt", m766f = "Errors.kt", m767i = {0}, m768l = {152}, m769m = "catchImpl", m770n = {"fromDownstream"}, m771s = {"L$0"})
    public static final class C23171<T> extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C23171(Continuation<? super C23171> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.catchImpl(null, null, this);
        }
    }

    /* JADX INFO: renamed from: catch, reason: not valid java name */
    public static final <T> Flow<T> m4828catch(Flow<? extends T> flow, Function3<? super FlowCollector<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(flow, function3);
    }

    public static final <T> Flow<T> retryWhen(Flow<? extends T> flow, Function4<? super FlowCollector<? super T>, ? super Throwable, ? super Long, ? super Continuation<? super Boolean>, ? extends Object> function4) {
        return new FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(flow, function4);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object catchImpl(Flow<? extends T> flow, FlowCollector<? super T> flowCollector, Continuation<? super Throwable> continuation) throws Throwable {
        C23171 c23171;
        Ref.ObjectRef objectRef;
        Throwable th;
        if (continuation instanceof C23171) {
            c23171 = (C23171) continuation;
            int i = c23171.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c23171.label = i - Integer.MIN_VALUE;
            } else {
                c23171 = new C23171(continuation);
            }
        }
        Object obj = c23171.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c23171.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            try {
                FlowCollector<? super Object> c23182 = new C23182<>(flowCollector, objectRef2);
                c23171.L$0 = objectRef2;
                c23171.label = 1;
                if (flow.collect(c23182, c23171) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                objectRef = objectRef2;
                th = (Throwable) objectRef.element;
                if (isSameExceptionAs$FlowKt__ErrorsKt(th, th)) {
                }
                throw th;
            }
        }
        if (i2 != 1) {
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        objectRef = (Ref.ObjectRef) c23171.L$0;
        try {
            ResultKt.throwOnFailure(obj);
            return null;
        } catch (Throwable th3) {
            th = th3;
            th = (Throwable) objectRef.element;
            if (!isSameExceptionAs$FlowKt__ErrorsKt(th, th) || isCancellationCause$FlowKt__ErrorsKt(th, c23171.get$context())) {
                throw th;
            }
            if (th == null) {
                return th;
            }
            if (th instanceof CancellationException) {
                ExceptionsKt.addSuppressed(th, th);
                throw th;
            }
            ExceptionsKt.addSuppressed(th, th);
            throw th;
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class C23182<T> implements FlowCollector {
        final /* synthetic */ FlowCollector<T> $collector;
        final /* synthetic */ Ref.ObjectRef<Throwable> $fromDownstream;

        /* JADX WARN: Multi-variable type inference failed */
        public C23182(FlowCollector<? super T> flowCollector, Ref.ObjectRef<Throwable> objectRef) {
            this.$collector = flowCollector;
            this.$fromDownstream = objectRef;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /* JADX WARN: Type inference failed for: r5v1, types: [T, java.lang.Throwable] */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(T t, Continuation<? super Unit> continuation) {
            FlowKt__ErrorsKt$catchImpl$2$emit$1 flowKt__ErrorsKt$catchImpl$2$emit$1;
            if (continuation instanceof FlowKt__ErrorsKt$catchImpl$2$emit$1) {
                flowKt__ErrorsKt$catchImpl$2$emit$1 = (FlowKt__ErrorsKt$catchImpl$2$emit$1) continuation;
                int i = flowKt__ErrorsKt$catchImpl$2$emit$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    flowKt__ErrorsKt$catchImpl$2$emit$1.label = i - Integer.MIN_VALUE;
                } else {
                    flowKt__ErrorsKt$catchImpl$2$emit$1 = new FlowKt__ErrorsKt$catchImpl$2$emit$1(this, continuation);
                }
            }
            Object obj = flowKt__ErrorsKt$catchImpl$2$emit$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = flowKt__ErrorsKt$catchImpl$2$emit$1.label;
            try {
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    FlowCollector<T> flowCollector = this.$collector;
                    flowKt__ErrorsKt$catchImpl$2$emit$1.L$0 = this;
                    flowKt__ErrorsKt$catchImpl$2$emit$1.label = 1;
                    if (flowCollector.emit(t, flowKt__ErrorsKt$catchImpl$2$emit$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i2 != 1) {
                        Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this = (C23182<T>) Unit.INSTANCE;
                return this;
            } catch (Throwable 
            /*  JADX ERROR: Method code generation error
                java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getCodeVar()" because "ssaVar" is null
                	at jadx.core.codegen.RegionGen.makeCatchBlock(RegionGen.java:372)
                	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:335)
                	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:305)
                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:284)
                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:412)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:337)
                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:303)
                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                */
            /*
                this = this;
                boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1
                if (r0 == 0) goto L13
                r0 = r6
                kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2$emit$1
                r0.<init>(r4, r6)
            L18:
                java.lang.Object r6 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L36
                if (r2 != r3) goto L2f
                java.lang.Object r4 = r0.L$0
                kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2 r4 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt.C23182) r4
                kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2d
                goto L46
            L2d:
                r5 = move-exception
                goto L49
            L2f:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                okio.Segment$$ExternalSyntheticBUOutline1.m848m(r4)
                r4 = 0
                return r4
            L36:
                kotlin.ResultKt.throwOnFailure(r6)
                kotlinx.coroutines.flow.FlowCollector<T> r6 = r4.$collector     // Catch: java.lang.Throwable -> L2d
                r0.L$0 = r4     // Catch: java.lang.Throwable -> L2d
                r0.label = r3     // Catch: java.lang.Throwable -> L2d
                java.lang.Object r4 = r6.emit(r5, r0)     // Catch: java.lang.Throwable -> L2d
                if (r4 != r1) goto L46
                return r1
            L46:
                kotlin.Unit r4 = kotlin.Unit.INSTANCE
                return r4
            L49:
                kotlin.jvm.internal.Ref$ObjectRef<java.lang.Throwable> r4 = r4.$fromDownstream
                r4.element = r5
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt.C23182.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    private static final boolean isCancellationCause$FlowKt__ErrorsKt(Throwable th, CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job == null || !job.isCancelled()) {
            return false;
        }
        return isSameExceptionAs$FlowKt__ErrorsKt(th, job.getCancellationException());
    }

    private static final boolean isSameExceptionAs$FlowKt__ErrorsKt(Throwable th, Throwable th2) {
        return th2 != null && Intrinsics.areEqual(th2, th);
    }
}
