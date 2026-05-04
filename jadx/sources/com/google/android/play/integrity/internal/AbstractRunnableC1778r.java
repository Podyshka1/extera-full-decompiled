package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.r */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractRunnableC1778r implements Runnable {

    /* JADX INFO: renamed from: a */
    private final TaskCompletionSource f568a;

    AbstractRunnableC1778r() {
        this.f568a = null;
    }

    public AbstractRunnableC1778r(TaskCompletionSource taskCompletionSource) {
        this.f568a = taskCompletionSource;
    }

    /* JADX INFO: renamed from: a */
    public void mo388a(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.f568a;
        if (taskCompletionSource != null) {
            taskCompletionSource.trySetException(exc);
        }
    }

    /* JADX INFO: renamed from: b */
    protected abstract void mo389b();

    /* JADX INFO: renamed from: c */
    final TaskCompletionSource m475c() {
        return this.f568a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            mo389b();
        } catch (Exception e) {
            mo388a(e);
        }
    }
}
