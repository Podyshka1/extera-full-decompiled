package androidx.work.impl;

import androidx.work.impl.StartStopTokens;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class SynchronizedStartStopTokensImpl implements StartStopTokens {
    private final StartStopTokens delegate;
    private final Object lock;

    @Override // androidx.work.impl.StartStopTokens
    public /* synthetic */ StartStopToken tokenFor(WorkSpec workSpec) {
        return StartStopTokens.CC.$default$tokenFor(this, workSpec);
    }

    public SynchronizedStartStopTokensImpl(StartStopTokens delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
        this.lock = new Object();
    }

    @Override // androidx.work.impl.StartStopTokens
    public StartStopToken tokenFor(WorkGenerationalId id) {
        StartStopToken startStopToken;
        Intrinsics.checkNotNullParameter(id, "id");
        synchronized (this.lock) {
            startStopToken = this.delegate.tokenFor(id);
        }
        return startStopToken;
    }

    @Override // androidx.work.impl.StartStopTokens
    public StartStopToken remove(WorkGenerationalId id) {
        StartStopToken startStopTokenRemove;
        Intrinsics.checkNotNullParameter(id, "id");
        synchronized (this.lock) {
            startStopTokenRemove = this.delegate.remove(id);
        }
        return startStopTokenRemove;
    }

    @Override // androidx.work.impl.StartStopTokens
    public List remove(String workSpecId) {
        List listRemove;
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        synchronized (this.lock) {
            listRemove = this.delegate.remove(workSpecId);
        }
        return listRemove;
    }

    @Override // androidx.work.impl.StartStopTokens
    public boolean contains(WorkGenerationalId id) {
        boolean zContains;
        Intrinsics.checkNotNullParameter(id, "id");
        synchronized (this.lock) {
            zContains = this.delegate.contains(id);
        }
        return zContains;
    }
}
