package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes5.dex */
final class SubscriptionCountStateFlow extends SharedFlowImpl implements StateFlow {
    public final boolean increment(int i) {
        boolean zTryEmit;
        synchronized (this) {
            zTryEmit = tryEmit(Integer.valueOf(((Number) getLastReplayedLocked()).intValue() + i));
        }
        return zTryEmit;
    }

    public SubscriptionCountStateFlow(int i) {
        super(1, Integer.MAX_VALUE, BufferOverflow.DROP_OLDEST);
        tryEmit(Integer.valueOf(i));
    }
}
