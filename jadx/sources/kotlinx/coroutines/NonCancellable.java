package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.selects.SelectClause0;

/* JADX INFO: loaded from: classes5.dex */
public final class NonCancellable extends AbstractCoroutineContextElement implements Job {
    public static final NonCancellable INSTANCE = new NonCancellable();

    @Override // kotlinx.coroutines.Job
    public void cancel(CancellationException cancellationException) {
    }

    @Override // kotlinx.coroutines.Job
    public boolean isActive() {
        return true;
    }

    @Override // kotlinx.coroutines.Job
    public boolean isCancelled() {
        return false;
    }

    @Override // kotlinx.coroutines.Job
    public boolean start() {
        return false;
    }

    private NonCancellable() {
        super(Job.Key);
    }

    @Override // kotlinx.coroutines.Job
    public Object join(Continuation continuation) {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // kotlinx.coroutines.Job
    public SelectClause0 getOnJoin() {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // kotlinx.coroutines.Job
    public CancellationException getCancellationException() {
        throw new IllegalStateException("This job is always active");
    }

    @Override // kotlinx.coroutines.Job
    public DisposableHandle invokeOnCompletion(Function1 function1) {
        return NonDisposableHandle.INSTANCE;
    }

    @Override // kotlinx.coroutines.Job
    public DisposableHandle invokeOnCompletion(boolean z, boolean z2, Function1 function1) {
        return NonDisposableHandle.INSTANCE;
    }

    @Override // kotlinx.coroutines.Job
    public Sequence getChildren() {
        return SequencesKt.emptySequence();
    }

    @Override // kotlinx.coroutines.Job
    public ChildHandle attachChild(ChildJob childJob) {
        return NonDisposableHandle.INSTANCE;
    }

    public String toString() {
        return "NonCancellable";
    }
}
