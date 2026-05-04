package kotlinx.coroutines;

import kotlin.Result;

/* JADX INFO: loaded from: classes.dex */
public abstract class CompletableDeferredKt {
    public static final boolean completeWith(CompletableDeferred completableDeferred, Object obj) {
        Throwable thM3606exceptionOrNullimpl = Result.m3606exceptionOrNullimpl(obj);
        return thM3606exceptionOrNullimpl == null ? completableDeferred.complete(obj) : completableDeferred.completeExceptionally(thM3606exceptionOrNullimpl);
    }

    public static /* synthetic */ CompletableDeferred CompletableDeferred$default(Job job, int i, Object obj) {
        if ((i & 1) != 0) {
            job = null;
        }
        return CompletableDeferred(job);
    }

    public static final CompletableDeferred CompletableDeferred(Job job) {
        return new CompletableDeferredImpl(job);
    }

    public static final CompletableDeferred CompletableDeferred(Object obj) {
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl(null);
        completableDeferredImpl.complete(obj);
        return completableDeferredImpl;
    }
}
