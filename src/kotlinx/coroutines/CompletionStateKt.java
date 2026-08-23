package kotlinx.coroutines;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public abstract class CompletionStateKt {
    public static final Object toState(Object obj) {
        Throwable thM3606exceptionOrNullimpl = Result.m3606exceptionOrNullimpl(obj);
        return thM3606exceptionOrNullimpl == null ? obj : new CompletedExceptionally(thM3606exceptionOrNullimpl, false, 2, null);
    }

    public static final Object toState(Object obj, CancellableContinuation cancellableContinuation) {
        Throwable thM3606exceptionOrNullimpl = Result.m3606exceptionOrNullimpl(obj);
        return thM3606exceptionOrNullimpl == null ? obj : new CompletedExceptionally(thM3606exceptionOrNullimpl, false, 2, null);
    }

    public static final Object recoverResult(Object obj, Continuation continuation) {
        if (obj instanceof CompletedExceptionally) {
            Result.Companion companion = Result.Companion;
            return Result.m3604constructorimpl(ResultKt.createFailure(((CompletedExceptionally) obj).cause));
        }
        return Result.m3604constructorimpl(obj);
    }
}
