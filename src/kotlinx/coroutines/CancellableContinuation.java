package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
public interface CancellableContinuation extends Continuation {
    boolean cancel(Throwable th);

    void completeResume(Object obj);

    void invokeOnCancellation(Function1 function1);

    boolean isActive();

    boolean isCancelled();

    boolean isCompleted();

    void resume(Object obj, Function3 function3);

    void resumeUndispatched(CoroutineDispatcher coroutineDispatcher, Object obj);

    Object tryResume(Object obj, Object obj2, Function3 function3);

    Object tryResumeWithException(Throwable th);

    /* JADX INFO: loaded from: classes5.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ boolean cancel$default(CancellableContinuation cancellableContinuation, Throwable th, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i & 1) != 0) {
                th = null;
            }
            return cancellableContinuation.cancel(th);
        }
    }
}
