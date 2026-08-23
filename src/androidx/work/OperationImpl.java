package androidx.work;

import androidx.lifecycle.LiveData;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class OperationImpl implements Operation {
    private final ListenableFuture future;
    private final LiveData state;

    public OperationImpl(LiveData state, ListenableFuture future) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(future, "future");
        this.state = state;
        this.future = future;
    }
}
