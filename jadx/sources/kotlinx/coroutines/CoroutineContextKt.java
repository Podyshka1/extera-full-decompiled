package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
public abstract class CoroutineContextKt {
    public static final String getCoroutineName(CoroutineContext coroutineContext) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasCopyableElements$lambda$0(boolean z, CoroutineContext.Element element) {
        return z;
    }

    public static final CoroutineContext newCoroutineContext(CoroutineScope coroutineScope, CoroutineContext coroutineContext) {
        CoroutineContext coroutineContextFoldCopies = foldCopies(coroutineScope.getCoroutineContext(), coroutineContext, true);
        return (coroutineContextFoldCopies == Dispatchers.getDefault() || coroutineContextFoldCopies.get(ContinuationInterceptor.Key) != null) ? coroutineContextFoldCopies : coroutineContextFoldCopies.plus(Dispatchers.getDefault());
    }

    public static final CoroutineContext newCoroutineContext(CoroutineContext coroutineContext, CoroutineContext coroutineContext2) {
        return !hasCopyableElements(coroutineContext2) ? coroutineContext.plus(coroutineContext2) : foldCopies(coroutineContext, coroutineContext2, false);
    }

    private static final boolean hasCopyableElements(CoroutineContext coroutineContext) {
        return ((Boolean) coroutineContext.fold(Boolean.FALSE, new Function2() { // from class: kotlinx.coroutines.CoroutineContextKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Boolean.valueOf(CoroutineContextKt.hasCopyableElements$lambda$0(((Boolean) obj).booleanValue(), (CoroutineContext.Element) obj2));
            }
        })).booleanValue();
    }

    private static final CoroutineContext foldCopies(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, final boolean z) {
        boolean zHasCopyableElements = hasCopyableElements(coroutineContext);
        boolean zHasCopyableElements2 = hasCopyableElements(coroutineContext2);
        if (!zHasCopyableElements && !zHasCopyableElements2) {
            return coroutineContext.plus(coroutineContext2);
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = coroutineContext2;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        CoroutineContext coroutineContext3 = (CoroutineContext) coroutineContext.fold(emptyCoroutineContext, new Function2() { // from class: kotlinx.coroutines.CoroutineContextKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return CoroutineContextKt.foldCopies$lambda$1(ref$ObjectRef, z, (CoroutineContext) obj, (CoroutineContext.Element) obj2);
            }
        });
        if (zHasCopyableElements2) {
            ref$ObjectRef.element = ((CoroutineContext) ref$ObjectRef.element).fold(emptyCoroutineContext, new Function2() { // from class: kotlinx.coroutines.CoroutineContextKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((CoroutineContext) obj).plus((CoroutineContext.Element) obj2);
                }
            });
        }
        return coroutineContext3.plus((CoroutineContext) ref$ObjectRef.element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineContext foldCopies$lambda$1(Ref$ObjectRef ref$ObjectRef, boolean z, CoroutineContext coroutineContext, CoroutineContext.Element element) {
        return coroutineContext.plus(element);
    }

    public static final UndispatchedCoroutine updateUndispatchedCompletion(Continuation continuation, CoroutineContext coroutineContext, Object obj) {
        if (!(continuation instanceof CoroutineStackFrame) || coroutineContext.get(UndispatchedMarker.INSTANCE) == null) {
            return null;
        }
        UndispatchedCoroutine undispatchedCoroutineUndispatchedCompletion = undispatchedCompletion((CoroutineStackFrame) continuation);
        if (undispatchedCoroutineUndispatchedCompletion != null) {
            undispatchedCoroutineUndispatchedCompletion.saveThreadContext(coroutineContext, obj);
        }
        return undispatchedCoroutineUndispatchedCompletion;
    }

    public static final UndispatchedCoroutine undispatchedCompletion(CoroutineStackFrame coroutineStackFrame) {
        while (!(coroutineStackFrame instanceof DispatchedCoroutine) && (coroutineStackFrame = coroutineStackFrame.getCallerFrame()) != null) {
            if (coroutineStackFrame instanceof UndispatchedCoroutine) {
                return (UndispatchedCoroutine) coroutineStackFrame;
            }
        }
        return null;
    }
}
