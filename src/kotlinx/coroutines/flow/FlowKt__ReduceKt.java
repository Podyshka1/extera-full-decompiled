package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.UIntArray$Iterator$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import kotlinx.coroutines.flow.internal.FlowExceptions_commonKt;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0004\u001a \u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086@¢\u0006\u0004\b\u0002\u0010\u0003\u001aD\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\"\u0010\b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004H\u0086@¢\u0006\u0004\b\u0002\u0010\t\u001a\"\u0010\n\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086@¢\u0006\u0004\b\n\u0010\u0003¨\u0006\u000b"}, d2 = {"T", "Lkotlinx/coroutines/flow/Flow;", "first", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "predicate", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "firstOrNull", "kotlinx-coroutines-core"}, m862k = 5, mv = {2, 2, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
@SourceDebugExtension({"SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,168:1\n124#2,17:169\n124#2,17:186\n124#2,17:203\n124#2,17:220\n124#2,17:237\n*S KotlinDebug\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n68#1:169,17\n88#1:186,17\n102#1:203,17\n120#1:220,17\n133#1:237,17\n*E\n"})
abstract /* synthetic */ class FlowKt__ReduceKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$1 */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", m873f = "Reduce.kt", m874i = {0, 0, 0, 0, 0}, m875l = {179}, m876m = "first", m877n = {"$this$first", "result", "$this$collectWhile$iv", "collector$iv", "$i$f$collectWhile"}, m878s = {"L$0", "L$1", "L$2", "L$3", "I$0"}, m879v = 1)
    public static final class C23941<T> extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public C23941(Continuation<? super C23941> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.first(null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$3 */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", m873f = "Reduce.kt", m874i = {0, 0, 0, 0, 0, 0}, m875l = {179}, m876m = "first", m877n = {"$this$first", "predicate", "result", "$this$collectWhile$iv", "collector$iv", "$i$f$collectWhile"}, m878s = {"L$0", "L$1", "L$2", "L$3", "L$4", "I$0"}, m879v = 1)
    public static final class C23953<T> extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        public C23953(Continuation<? super C23953> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.first(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$1 */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", m873f = "Reduce.kt", m874i = {0, 0, 0, 0, 0}, m875l = {179}, m876m = "firstOrNull", m877n = {"$this$firstOrNull", "result", "$this$collectWhile$iv", "collector$iv", "$i$f$collectWhile"}, m878s = {"L$0", "L$1", "L$2", "L$3", "I$0"}, m879v = 1)
    public static final class C23961<T> extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public C23961(Continuation<? super C23961> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt.firstOrNull(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object first(Flow<? extends T> flow, Continuation<? super T> continuation) {
        C23941 c23941;
        Ref.ObjectRef objectRef;
        AbortFlowException e;
        FlowCollector<T> flowCollector;
        if (continuation instanceof C23941) {
            c23941 = (C23941) continuation;
            int i = c23941.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c23941.label = i - Integer.MIN_VALUE;
            } else {
                c23941 = new C23941(continuation);
            }
        }
        Object obj = c23941.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c23941.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = (T) NullSurrogateKt.NULL;
            FlowCollector<T> flowCollector2 = new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public Object emit(T t, Continuation<? super Unit> continuation2) {
                    objectRef2.element = t;
                    throw new AbortFlowException(this);
                }
            };
            try {
                c23941.L$0 = SpillingKt.nullOutSpilledVariable(flow);
                c23941.L$1 = objectRef2;
                c23941.L$2 = SpillingKt.nullOutSpilledVariable(flow);
                c23941.L$3 = flowCollector2;
                c23941.I$0 = 0;
                c23941.label = 1;
                if (flow.collect(flowCollector2, c23941) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef = objectRef2;
            } catch (AbortFlowException e2) {
                objectRef = objectRef2;
                e = e2;
                flowCollector = flowCollector2;
                FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                JobKt.ensureActive(c23941.getContext());
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            flowCollector = (FlowKt__ReduceKt$first$$inlined$collectWhile$1) c23941.L$3;
            objectRef = (Ref.ObjectRef) c23941.L$1;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                JobKt.ensureActive(c23941.getContext());
            }
        }
        T t = objectRef.element;
        if (t != NullSurrogateKt.NULL) {
            return t;
        }
        UIntArray$Iterator$$ExternalSyntheticBUOutline0.m868m("Expected at least one element");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object first(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super T> continuation) {
        C23953 c23953;
        Ref.ObjectRef objectRef;
        AbortFlowException e;
        FlowCollector<? super Object> flowCollector;
        if (continuation instanceof C23953) {
            c23953 = (C23953) continuation;
            int i = c23953.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c23953.label = i - Integer.MIN_VALUE;
            } else {
                c23953 = new C23953(continuation);
            }
        }
        Object obj = c23953.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c23953.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = (T) NullSurrogateKt.NULL;
            FlowCollector<? super Object> flowKt__ReduceKt$first$$inlined$collectWhile$2 = new FlowKt__ReduceKt$first$$inlined$collectWhile$2<>(function2, objectRef2);
            try {
                c23953.L$0 = SpillingKt.nullOutSpilledVariable(flow);
                c23953.L$1 = SpillingKt.nullOutSpilledVariable(function2);
                c23953.L$2 = objectRef2;
                c23953.L$3 = SpillingKt.nullOutSpilledVariable(flow);
                c23953.L$4 = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                c23953.I$0 = 0;
                c23953.label = 1;
                if (flow.collect(flowKt__ReduceKt$first$$inlined$collectWhile$2, c23953) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef = objectRef2;
            } catch (AbortFlowException e2) {
                objectRef = objectRef2;
                e = e2;
                flowCollector = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                JobKt.ensureActive(c23953.getContext());
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            flowCollector = (FlowKt__ReduceKt$first$$inlined$collectWhile$2) c23953.L$4;
            objectRef = (Ref.ObjectRef) c23953.L$2;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                JobKt.ensureActive(c23953.getContext());
            }
        }
        T t = objectRef.element;
        if (t != NullSurrogateKt.NULL) {
            return t;
        }
        UIntArray$Iterator$$ExternalSyntheticBUOutline0.m868m("Expected at least one element matching the predicate");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object firstOrNull(Flow<? extends T> flow, Continuation<? super T> continuation) {
        C23961 c23961;
        Ref.ObjectRef objectRef;
        AbortFlowException e;
        FlowCollector<T> flowCollector;
        if (continuation instanceof C23961) {
            c23961 = (C23961) continuation;
            int i = c23961.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c23961.label = i - Integer.MIN_VALUE;
            } else {
                c23961 = new C23961(continuation);
            }
        }
        Object obj = c23961.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c23961.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            FlowCollector<T> flowCollector2 = new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public Object emit(T t, Continuation<? super Unit> continuation2) {
                    objectRef2.element = t;
                    throw new AbortFlowException(this);
                }
            };
            try {
                c23961.L$0 = SpillingKt.nullOutSpilledVariable(flow);
                c23961.L$1 = objectRef2;
                c23961.L$2 = SpillingKt.nullOutSpilledVariable(flow);
                c23961.L$3 = flowCollector2;
                c23961.I$0 = 0;
                c23961.label = 1;
                if (flow.collect(flowCollector2, c23961) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef = objectRef2;
            } catch (AbortFlowException e2) {
                objectRef = objectRef2;
                e = e2;
                flowCollector = flowCollector2;
                FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                JobKt.ensureActive(c23961.getContext());
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            flowCollector = (FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1) c23961.L$3;
            objectRef = (Ref.ObjectRef) c23961.L$1;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                JobKt.ensureActive(c23961.getContext());
            }
        }
        return objectRef.element;
    }
}
