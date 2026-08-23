package kotlinx.coroutines.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.CompletionStateKt;

/* JADX INFO: loaded from: classes.dex */
public class ScopeCoroutine extends AbstractCoroutine implements CoroutineStackFrame {
    public final Continuation uCont;

    public void afterCompletionUndispatched() {
    }

    @Override // kotlinx.coroutines.JobSupport
    protected final boolean isScopedCoroutine() {
        return true;
    }

    public ScopeCoroutine(CoroutineContext coroutineContext, Continuation continuation) {
        super(coroutineContext, true, true);
        this.uCont = continuation;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.uCont;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void afterCompletion(Object obj) {
        DispatchedContinuationKt.resumeCancellableWith(IntrinsicsKt.intercepted(this.uCont), CompletionStateKt.recoverResult(obj, this.uCont));
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    protected void afterResume(Object obj) {
        Continuation continuation = this.uCont;
        continuation.resumeWith(CompletionStateKt.recoverResult(obj, continuation));
    }
}
