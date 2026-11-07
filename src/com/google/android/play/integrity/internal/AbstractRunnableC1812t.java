package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.t */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractRunnableC1812t implements Runnable {

    /* JADX INFO: renamed from: a */
    private final TaskCompletionSource f409a;

    public AbstractRunnableC1812t() {
        this.f409a = null;
    }

    public AbstractRunnableC1812t(TaskCompletionSource taskCompletionSource) {
        this.f409a = taskCompletionSource;
    }

    /* JADX INFO: renamed from: a */
    public void mo369a(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.f409a;
        if (taskCompletionSource != null) {
            taskCompletionSource.trySetException(exc);
        }
    }

    /* JADX INFO: renamed from: b */
    public abstract void mo364b();

    /* JADX INFO: renamed from: c */
    public final TaskCompletionSource m452c() {
        return this.f409a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            mo364b();
        } catch (Exception e) {
            mo369a(e);
        }
    }
}
