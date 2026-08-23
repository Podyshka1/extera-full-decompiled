package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public interface ThreadContextElement extends CoroutineContext.Element {
    void restoreThreadContext(CoroutineContext coroutineContext, Object obj);

    Object updateThreadContext(CoroutineContext coroutineContext);

    public static final class DefaultImpls {
        public static Object fold(ThreadContextElement threadContextElement, Object obj, Function2 function2) {
            return CoroutineContext.Element.DefaultImpls.fold(threadContextElement, obj, function2);
        }

        public static CoroutineContext plus(ThreadContextElement threadContextElement, CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.plus(threadContextElement, coroutineContext);
        }
    }
}
