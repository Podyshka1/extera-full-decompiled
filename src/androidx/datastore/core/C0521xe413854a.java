package androidx.datastore.core;

import androidx.datastore.core.MultiProcessCoordinator;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: renamed from: androidx.datastore.core.MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m862k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.datastore.core.MultiProcessCoordinator$Companion", m873f = "MultiProcessCoordinator.android.kt", m874i = {0, 0}, m875l = {182}, m876m = "getExclusiveFileLockWithRetryIfDeadlock", m877n = {"lockFileStream", "backoff"}, m878s = {"L$0", "J$0"})
public final class C0521xe413854a extends ContinuationImpl {
    long J$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ MultiProcessCoordinator.Companion this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0521xe413854a(MultiProcessCoordinator.Companion companion, Continuation<? super C0521xe413854a> continuation) {
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
