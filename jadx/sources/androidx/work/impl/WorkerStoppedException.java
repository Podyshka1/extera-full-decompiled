package androidx.work.impl;

import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes4.dex */
public final class WorkerStoppedException extends CancellationException {
    private final int reason;

    public WorkerStoppedException(int i) {
        this.reason = i;
    }

    public final int getReason() {
        return this.reason;
    }
}
