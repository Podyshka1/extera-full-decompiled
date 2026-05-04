package kotlinx.coroutines;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* JADX INFO: loaded from: classes.dex */
public abstract class JobNode extends LockFreeLinkedListNode implements DisposableHandle, Incomplete {
    public JobSupport job;

    @Override // kotlinx.coroutines.Incomplete
    public NodeList getList() {
        return null;
    }

    public abstract boolean getOnCancelling();

    public abstract void invoke(Throwable th);

    @Override // kotlinx.coroutines.Incomplete
    public boolean isActive() {
        return true;
    }

    public final JobSupport getJob() {
        JobSupport jobSupport = this.job;
        if (jobSupport != null) {
            return jobSupport;
        }
        Intrinsics.throwUninitializedPropertyAccessException("job");
        return null;
    }

    public final void setJob(JobSupport jobSupport) {
        this.job = jobSupport;
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public void dispose() {
        getJob().removeNode$kotlinx_coroutines_core(this);
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public String toString() {
        return DebugStringsKt.getClassSimpleName(this) + '@' + DebugStringsKt.getHexAddress(this) + "[job@" + DebugStringsKt.getHexAddress(getJob()) + ']';
    }
}
