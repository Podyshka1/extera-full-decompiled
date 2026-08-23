package kotlinx.coroutines.flow.internal;

/* JADX INFO: loaded from: classes5.dex */
public abstract class FlowExceptions_commonKt {
    public static final void checkOwnership(AbortFlowException abortFlowException, Object obj) {
        if (abortFlowException.owner != obj) {
            throw abortFlowException;
        }
    }
}
