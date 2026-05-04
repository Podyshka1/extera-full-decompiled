package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractSharedFlowSlot {
    public abstract boolean allocateLocked(Object obj);

    public abstract Continuation[] freeLocked(Object obj);
}
