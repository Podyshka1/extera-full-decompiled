package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ThreadContextElement;

/* JADX INFO: loaded from: classes.dex */
public final class ThreadLocalElement implements ThreadContextElement {
    private final CoroutineContext.Key key;
    private final ThreadLocal threadLocal;
    private final Object value;

    public ThreadLocalElement(Object obj, ThreadLocal threadLocal) {
        this.value = obj;
        this.threadLocal = threadLocal;
        this.key = new ThreadLocalKey(threadLocal);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public Object fold(Object obj, Function2 function2) {
        return ThreadContextElement.DefaultImpls.fold(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return ThreadContextElement.DefaultImpls.plus(this, coroutineContext);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public CoroutineContext.Key getKey() {
        return this.key;
    }

    @Override // kotlinx.coroutines.ThreadContextElement
    public Object updateThreadContext(CoroutineContext coroutineContext) {
        Object obj = this.threadLocal.get();
        this.threadLocal.set(this.value);
        return obj;
    }

    @Override // kotlinx.coroutines.ThreadContextElement
    public void restoreThreadContext(CoroutineContext coroutineContext, Object obj) {
        this.threadLocal.set(obj);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return Intrinsics.areEqual(getKey(), key) ? EmptyCoroutineContext.INSTANCE : this;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        if (!Intrinsics.areEqual(getKey(), key)) {
            return null;
        }
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type E of kotlinx.coroutines.internal.ThreadLocalElement.get");
        return this;
    }

    public String toString() {
        return "ThreadLocal(value=" + this.value + ", threadLocal = " + this.threadLocal + ')';
    }
}
