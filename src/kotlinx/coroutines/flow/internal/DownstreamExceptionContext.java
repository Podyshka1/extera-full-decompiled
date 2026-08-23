package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class DownstreamExceptionContext implements CoroutineContext {
    private final /* synthetic */ CoroutineContext $$delegate_0;

    /* JADX INFO: renamed from: e */
    public final Throwable f1545e;

    @Override // kotlin.coroutines.CoroutineContext
    public Object fold(Object obj, Function2 function2) {
        return this.$$delegate_0.fold(obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return this.$$delegate_0.get(key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return this.$$delegate_0.minusKey(key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return this.$$delegate_0.plus(coroutineContext);
    }

    public DownstreamExceptionContext(Throwable th, CoroutineContext coroutineContext) {
        this.$$delegate_0 = coroutineContext;
        this.f1545e = th;
    }
}
