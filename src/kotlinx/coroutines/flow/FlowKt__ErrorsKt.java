package kotlinx.coroutines.flow;

import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class FlowKt__ErrorsKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1 */
    static final class C26211 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C26211(Continuation continuation) {
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
    public static final Flow m3691catch(Flow flow, Function3 function3) {
        return new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(flow, function3);
    }

    public static final Flow retryWhen(Flow flow, Function4 function4) {
        return new FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(flow, function4);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object catchImpl(Flow flow, FlowCollector flowCollector, Continuation continuation) throws Throwable {
        C26211 c26211;
        Ref$ObjectRef ref$ObjectRef;
        if (continuation instanceof C26211) {
            c26211 = (C26211) continuation;
            int i = c26211.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c26211.label = i - Integer.MIN_VALUE;
            } else {
                c26211 = new C26211(continuation);
            }
        }
        Object obj = c26211.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c26211.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            try {
                FlowCollector c26222 = new C26222(flowCollector, ref$ObjectRef2);
                c26211.L$0 = ref$ObjectRef2;
                c26211.label = 1;
                if (flow.collect(c26222, c26211) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return null;
            } catch (Throwable th) {
                th = th;
                ref$ObjectRef = ref$ObjectRef2;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef = (Ref$ObjectRef) c26211.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                return null;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        Throwable th3 = (Throwable) ref$ObjectRef.element;
        if (isSameExceptionAs$FlowKt__ErrorsKt(th, th3) || isCancellationCause$FlowKt__ErrorsKt(th, c26211.getContext())) {
            throw th;
        }
        if (th3 == null) {
            return th;
        }
        if (th instanceof CancellationException) {
            ExceptionsKt.addSuppressed(th3, th);
            throw th3;
        }
        ExceptionsKt.addSuppressed(th, th3);
        throw th;
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2 */
    static final class C26222 implements FlowCollector {
        final /* synthetic */ FlowCollector $collector;
        final /* synthetic */ Ref$ObjectRef $fromDownstream;

        C26222(FlowCollector flowCollector, Ref$ObjectRef ref$ObjectRef) {
            this.$collector = flowCollector;
            this.$fromDownstream = ref$ObjectRef;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(Object obj, Continuation continuation) throws Throwable {
            FlowKt__ErrorsKt$catchImpl$2$emit$1 flowKt__ErrorsKt$catchImpl$2$emit$1;
            C26222 c26222;
            if (continuation instanceof FlowKt__ErrorsKt$catchImpl$2$emit$1) {
                flowKt__ErrorsKt$catchImpl$2$emit$1 = (FlowKt__ErrorsKt$catchImpl$2$emit$1) continuation;
                int i = flowKt__ErrorsKt$catchImpl$2$emit$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    flowKt__ErrorsKt$catchImpl$2$emit$1.label = i - Integer.MIN_VALUE;
                } else {
                    flowKt__ErrorsKt$catchImpl$2$emit$1 = new FlowKt__ErrorsKt$catchImpl$2$emit$1(this, continuation);
                }
            }
            Object obj2 = flowKt__ErrorsKt$catchImpl$2$emit$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = flowKt__ErrorsKt$catchImpl$2$emit$1.label;
            if (i2 != 0) {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c26222 = (C26222) flowKt__ErrorsKt$catchImpl$2$emit$1.L$0;
                try {
                    ResultKt.throwOnFailure(obj2);
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    th = th;
                    c26222.$fromDownstream.element = th;
                    throw th;
                }
            }
            ResultKt.throwOnFailure(obj2);
            try {
                FlowCollector flowCollector = this.$collector;
                flowKt__ErrorsKt$catchImpl$2$emit$1.L$0 = this;
                flowKt__ErrorsKt$catchImpl$2$emit$1.label = 1;
                if (flowCollector.emit(obj, flowKt__ErrorsKt$catchImpl$2$emit$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            } catch (Throwable th2) {
                th = th2;
                c26222 = this;
                c26222.$fromDownstream.element = th;
                throw th;
            }
        }
    }

    private static final boolean isCancellationCause$FlowKt__ErrorsKt(Throwable th, CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.Key);
        if (job == null || !job.isCancelled()) {
            return false;
        }
        return isSameExceptionAs$FlowKt__ErrorsKt(th, job.getCancellationException());
    }

    private static final boolean isSameExceptionAs$FlowKt__ErrorsKt(Throwable th, Throwable th2) {
        return th2 != null && Intrinsics.areEqual(th2, th);
    }
}
