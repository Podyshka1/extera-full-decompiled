package androidx.datastore.core;

import androidx.datastore.core.MultiProcessCoordinator;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: renamed from: androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 */
/* JADX INFO: loaded from: classes.dex */
final class C0521xe413854a extends ContinuationImpl {
    long J$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ MultiProcessCoordinator.Companion this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0521xe413854a(MultiProcessCoordinator.Companion companion, Continuation continuation) {
        super(continuation);
        this.this$0 = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getExclusiveFileLockWithRetryIfDeadlock(null, this);
    }
}
