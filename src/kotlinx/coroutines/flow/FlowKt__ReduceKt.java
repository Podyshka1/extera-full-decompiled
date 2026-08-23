package kotlinx.coroutines.flow;

import java.util.NoSuchElementException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import kotlinx.coroutines.flow.internal.FlowExceptions_commonKt;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* JADX INFO: loaded from: classes5.dex */
abstract /* synthetic */ class FlowKt__ReduceKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$1 */
    static final class C26281 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C26281(Continuation continuation) {
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
    static final class C26293 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C26293(Continuation continuation) {
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
    static final class C26301 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C26301(Continuation continuation) {
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
    public static final Object first(Flow flow, Continuation continuation) {
        C26281 c26281;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e;
        FlowCollector flowCollector;
        if (continuation instanceof C26281) {
            c26281 = (C26281) continuation;
            int i = c26281.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c26281.label = i - Integer.MIN_VALUE;
            } else {
                c26281 = new C26281(continuation);
            }
        }
        Object obj = c26281.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c26281.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = NullSurrogateKt.NULL;
            FlowCollector flowCollector2 = new FlowCollector() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public Object emit(Object obj2, Continuation continuation2) {
                    ref$ObjectRef2.element = obj2;
                    throw new AbortFlowException(this);
                }
            };
            try {
                c26281.L$0 = ref$ObjectRef2;
                c26281.L$1 = flowCollector2;
                c26281.label = 1;
                if (flow.collect(flowCollector2, c26281) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e2) {
                ref$ObjectRef = ref$ObjectRef2;
                e = e2;
                flowCollector = flowCollector2;
                FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                JobKt.ensureActive(c26281.getContext());
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            flowCollector = (FlowKt__ReduceKt$first$$inlined$collectWhile$1) c26281.L$1;
            ref$ObjectRef = (Ref$ObjectRef) c26281.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                JobKt.ensureActive(c26281.getContext());
            }
        }
        Object obj2 = ref$ObjectRef.element;
        if (obj2 != NullSurrogateKt.NULL) {
            return obj2;
        }
        throw new NoSuchElementException("Expected at least one element");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object first(Flow flow, Function2 function2, Continuation continuation) {
        C26293 c26293;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e;
        FlowCollector flowCollector;
        if (continuation instanceof C26293) {
            c26293 = (C26293) continuation;
            int i = c26293.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c26293.label = i - Integer.MIN_VALUE;
            } else {
                c26293 = new C26293(continuation);
            }
        }
        Object obj = c26293.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c26293.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = NullSurrogateKt.NULL;
            FlowCollector flowKt__ReduceKt$first$$inlined$collectWhile$2 = new FlowKt__ReduceKt$first$$inlined$collectWhile$2(function2, ref$ObjectRef2);
            try {
                c26293.L$0 = ref$ObjectRef2;
                c26293.L$1 = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                c26293.label = 1;
                if (flow.collect(flowKt__ReduceKt$first$$inlined$collectWhile$2, c26293) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e2) {
                ref$ObjectRef = ref$ObjectRef2;
                e = e2;
                flowCollector = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                JobKt.ensureActive(c26293.getContext());
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            flowCollector = (FlowKt__ReduceKt$first$$inlined$collectWhile$2) c26293.L$1;
            ref$ObjectRef = (Ref$ObjectRef) c26293.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                JobKt.ensureActive(c26293.getContext());
            }
        }
        Object obj2 = ref$ObjectRef.element;
        if (obj2 != NullSurrogateKt.NULL) {
            return obj2;
        }
        throw new NoSuchElementException("Expected at least one element matching the predicate");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object firstOrNull(Flow flow, Continuation continuation) {
        C26301 c26301;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e;
        FlowCollector flowCollector;
        if (continuation instanceof C26301) {
            c26301 = (C26301) continuation;
            int i = c26301.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c26301.label = i - Integer.MIN_VALUE;
            } else {
                c26301 = new C26301(continuation);
            }
        }
        Object obj = c26301.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c26301.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            FlowCollector flowCollector2 = new FlowCollector() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public Object emit(Object obj2, Continuation continuation2) {
                    ref$ObjectRef2.element = obj2;
                    throw new AbortFlowException(this);
                }
            };
            try {
                c26301.L$0 = ref$ObjectRef2;
                c26301.L$1 = flowCollector2;
                c26301.label = 1;
                if (flow.collect(flowCollector2, c26301) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e2) {
                ref$ObjectRef = ref$ObjectRef2;
                e = e2;
                flowCollector = flowCollector2;
                FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                JobKt.ensureActive(c26301.getContext());
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            flowCollector = (FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1) c26301.L$1;
            ref$ObjectRef = (Ref$ObjectRef) c26301.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                FlowExceptions_commonKt.checkOwnership(e, flowCollector);
                JobKt.ensureActive(c26301.getContext());
            }
        }
        return ref$ObjectRef.element;
    }
}
