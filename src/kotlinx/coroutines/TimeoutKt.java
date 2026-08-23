package kotlinx.coroutines;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.intrinsics.UndispatchedKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class TimeoutKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.TimeoutKt$withTimeoutOrNull$1 */
    static final class C26081 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C26081(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TimeoutKt.withTimeoutOrNull(0L, null, this);
        }
    }

    public static final Object withTimeout(long j, Function2 function2, Continuation continuation) {
        if (j <= 0) {
            throw new TimeoutCancellationException("Timed out immediately");
        }
        Object obj = setupTimeout(new TimeoutCoroutine(j, continuation), function2);
        if (obj == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return obj;
    }

    /* JADX INFO: renamed from: withTimeout-KLykuaI, reason: not valid java name */
    public static final Object m3660withTimeoutKLykuaI(long j, Function2 function2, Continuation continuation) {
        return withTimeout(DelayKt.m3658toDelayMillisLRDsOJo(j), function2, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object withTimeoutOrNull(long j, Function2 function2, Continuation continuation) {
        C26081 c26081;
        Ref$ObjectRef ref$ObjectRef;
        if (continuation instanceof C26081) {
            c26081 = (C26081) continuation;
            int i = c26081.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c26081.label = i - Integer.MIN_VALUE;
            } else {
                c26081 = new C26081(continuation);
            }
        }
        Object obj = c26081.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c26081.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            if (j <= 0) {
                return null;
            }
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            try {
                c26081.L$0 = function2;
                c26081.L$1 = ref$ObjectRef2;
                c26081.J$0 = j;
                c26081.label = 1;
                TimeoutCoroutine timeoutCoroutine = new TimeoutCoroutine(j, c26081);
                ref$ObjectRef2.element = timeoutCoroutine;
                Object obj2 = setupTimeout(timeoutCoroutine, function2);
                if (obj2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(c26081);
                }
                return obj2 == coroutine_suspended ? coroutine_suspended : obj2;
            } catch (TimeoutCancellationException e) {
                e = e;
                ref$ObjectRef = ref$ObjectRef2;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef = (Ref$ObjectRef) c26081.L$1;
            try {
                ResultKt.throwOnFailure(obj);
                return obj;
            } catch (TimeoutCancellationException e2) {
                e = e2;
            }
        }
        if (e.coroutine == ref$ObjectRef.element) {
            return null;
        }
        throw e;
    }

    private static final Object setupTimeout(TimeoutCoroutine timeoutCoroutine, Function2 function2) {
        JobKt.disposeOnCompletion(timeoutCoroutine, DelayKt.getDelay(timeoutCoroutine.uCont.getContext()).invokeOnTimeout(timeoutCoroutine.time, timeoutCoroutine, timeoutCoroutine.getContext()));
        return UndispatchedKt.startUndispatchedOrReturnIgnoreTimeout(timeoutCoroutine, timeoutCoroutine, function2);
    }

    public static final TimeoutCancellationException TimeoutCancellationException(long j, Delay delay, Job job) {
        return new TimeoutCancellationException("Timed out waiting for " + j + " ms", job);
    }
}
