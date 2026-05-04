package kotlinx.coroutines.selects;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.DisposableHandle;

/* JADX INFO: loaded from: classes.dex */
public interface SelectInstance {
    void disposeOnCompletion(DisposableHandle disposableHandle);

    CoroutineContext getContext();

    void selectInRegistrationPhase(Object obj);

    boolean trySelect(Object obj, Object obj2);
}
