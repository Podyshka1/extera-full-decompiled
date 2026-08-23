package kotlinx.coroutines;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.LimitedDispatcher;
import kotlinx.coroutines.internal.LimitedDispatcherKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class CoroutineDispatcher extends AbstractCoroutineContextElement implements ContinuationInterceptor {
    public static final Key Key = new Key(null);

    public abstract void dispatch(CoroutineContext coroutineContext, Runnable runnable);

    public boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return true;
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return ContinuationInterceptor.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return ContinuationInterceptor.DefaultImpls.minusKey(this, key);
    }

    public CoroutineDispatcher() {
        super(ContinuationInterceptor.Key);
    }

    public static final class Key extends AbstractCoroutineContextKey {
        public /* synthetic */ Key(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Key() {
            super(ContinuationInterceptor.Key, new Function1() { // from class: kotlinx.coroutines.CoroutineDispatcher$Key$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CoroutineDispatcher.Key._init_$lambda$0((CoroutineContext.Element) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final CoroutineDispatcher _init_$lambda$0(CoroutineContext.Element element) {
            if (element instanceof CoroutineDispatcher) {
                return (CoroutineDispatcher) element;
            }
            return null;
        }
    }

    public static /* synthetic */ CoroutineDispatcher limitedParallelism$default(CoroutineDispatcher coroutineDispatcher, int i, String str, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: limitedParallelism");
        }
        if ((i2 & 2) != 0) {
            str = null;
        }
        return coroutineDispatcher.limitedParallelism(i, str);
    }

    public CoroutineDispatcher limitedParallelism(int i, String str) {
        LimitedDispatcherKt.checkParallelism(i);
        return new LimitedDispatcher(this, i, str);
    }

    public /* synthetic */ CoroutineDispatcher limitedParallelism(int i) {
        return limitedParallelism(i, null);
    }

    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        DispatchedContinuationKt.safeDispatch(this, coroutineContext, runnable);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final Continuation interceptContinuation(Continuation continuation) {
        return new DispatchedContinuation(this, continuation);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final void releaseInterceptedContinuation(Continuation continuation) {
        Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        ((DispatchedContinuation) continuation).release$kotlinx_coroutines_core();
    }

    public String toString() {
        return DebugStringsKt.getClassSimpleName(this) + '@' + DebugStringsKt.getHexAddress(this);
    }
}
