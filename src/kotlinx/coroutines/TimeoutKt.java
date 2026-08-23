package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aT\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\t\u0010\n\u001aT\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\f\u001a\u00020\u000b2'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\r\u0010\n\u001aI\u0010\u000e\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@¢\u0006\u0004\b\u000e\u0010\n\u001a^\u0010\u0012\u001a\u0004\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u000f\"\b\b\u0001\u0010\u0000*\u00028\u00002\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00102'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u001a'\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0017H\u0000¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"T", _UrlKt.FRAGMENT_ENCODE_SET, "timeMillis", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ExtensionFunctionType;", "block", "withTimeout", "(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/time/Duration;", "timeout", "withTimeout-KLykuaI", "withTimeoutOrNull", "U", "Lkotlinx/coroutines/TimeoutCoroutine;", "coroutine", "setupTimeout", "(Lkotlinx/coroutines/TimeoutCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "time", "Lkotlinx/coroutines/Delay;", "delay", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/TimeoutCancellationException;", "TimeoutCancellationException", "(JLkotlinx/coroutines/Delay;Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/TimeoutCancellationException;", "kotlinx-coroutines-core"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TimeoutKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.TimeoutKt$withTimeoutOrNull$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "kotlinx.coroutines.TimeoutKt", m766f = "Timeout.kt", m767i = {0, 0, 0}, m768l = {102}, m769m = "withTimeoutOrNull", m770n = {"block", "coroutine", "timeMillis"}, m771s = {"L$0", "L$1", "J$0"})
    public static final class C23041<T> extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C23041(Continuation<? super C23041> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TimeoutKt.withTimeoutOrNull(0L, null, this);
        }
    }

    public static final <T> Object withTimeout(long j, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
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
    public static final <T> Object m4797withTimeoutKLykuaI(long j, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return withTimeout(DelayKt.m4795toDelayMillisLRDsOJo(j), function2, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.TimeoutCoroutine] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object withTimeoutOrNull(long j, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        C23041 c23041;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C23041) {
            c23041 = (C23041) continuation;
            int i = c23041.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c23041.label = i - Integer.MIN_VALUE;
            } else {
                c23041 = new C23041(continuation);
            }
        }
        Object obj = c23041.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c23041.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            if (j <= 0) {
                return null;
            }
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            try {
                c23041.L$0 = function2;
                c23041.L$1 = objectRef2;
                c23041.J$0 = j;
                c23041.label = 1;
                ?? r2 = (T) new TimeoutCoroutine(j, c23041);
                objectRef2.element = r2;
                Object obj2 = setupTimeout(r2, function2);
                if (obj2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(c23041);
                }
                return obj2 == coroutine_suspended ? coroutine_suspended : obj2;
            } catch (TimeoutCancellationException e) {
                e = e;
                objectRef = objectRef2;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            objectRef = (Ref.ObjectRef) c23041.L$1;
            try {
                ResultKt.throwOnFailure(obj);
                return obj;
            } catch (TimeoutCancellationException e2) {
                e = e2;
            }
        }
        if (e.coroutine == objectRef.element) {
            return null;
        }
        throw e;
    }

    private static final <U, T extends U> Object setupTimeout(TimeoutCoroutine<U, ? super T> timeoutCoroutine, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) {
        JobKt.disposeOnCompletion(timeoutCoroutine, DelayKt.getDelay(timeoutCoroutine.uCont.getContext()).invokeOnTimeout(timeoutCoroutine.time, timeoutCoroutine, timeoutCoroutine.getContext()));
        return UndispatchedKt.startUndispatchedOrReturnIgnoreTimeout(timeoutCoroutine, timeoutCoroutine, function2);
    }

    public static final TimeoutCancellationException TimeoutCancellationException(long j, Delay delay, Job job) {
        return new TimeoutCancellationException("Timed out waiting for " + j + " ms", job);
    }
}
