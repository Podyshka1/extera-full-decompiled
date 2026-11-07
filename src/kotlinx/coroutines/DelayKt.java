package kotlinx.coroutines;

import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0018\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0086@¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0013\u0010\b\u001a\u00020\u0000*\u00020\u0005H\u0000¢\u0006\u0004\b\u0006\u0010\u0007\"\u0018\u0010\u0003\u001a\u00020\n*\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {_UrlKt.FRAGMENT_ENCODE_SET, "timeMillis", _UrlKt.FRAGMENT_ENCODE_SET, "delay", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/time/Duration;", "toDelayMillis-LRDsOJo", "(J)J", "toDelayMillis", "Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/coroutines/Delay;", "getDelay", "(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;", "kotlinx-coroutines-core"}, m862k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,159:1\n433#2,10:160\n433#2,10:170\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n*L\n103#1:160,10\n123#1:170,10\n*E\n"})
public abstract class DelayKt {
    public static final Object delay(long j, Continuation<? super Unit> continuation) {
        if (j <= 0) {
            return Unit.INSTANCE;
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        if (j < LongCompanionObject.MAX_VALUE) {
            getDelay(cancellableContinuationImpl.get$context()).scheduleResumeAfterDelay(j, cancellableContinuationImpl);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? result : Unit.INSTANCE;
    }

    public static final Delay getDelay(CoroutineContext coroutineContext) {
        CoroutineContext.Element element = coroutineContext.get(ContinuationInterceptor.INSTANCE);
        Delay delay = element instanceof Delay ? (Delay) element : null;
        return delay == null ? DefaultExecutorKt.getDefaultDelay() : delay;
    }

    /* JADX INFO: renamed from: toDelayMillis-LRDsOJo, reason: not valid java name */
    public static final long m4591toDelayMillisLRDsOJo(long j) {
        boolean zM4471isPositiveimpl = Duration.m4471isPositiveimpl(j);
        if (zM4471isPositiveimpl) {
            return Duration.m4455getInWholeMillisecondsimpl(Duration.m4473plusLRDsOJo(j, DurationKt.toDuration(999999L, DurationUnit.NANOSECONDS)));
        }
        if (!zM4471isPositiveimpl) {
            return 0L;
        }
        LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
        return 0L;
    }
}
