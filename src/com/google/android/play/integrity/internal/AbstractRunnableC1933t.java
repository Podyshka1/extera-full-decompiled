package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.t */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractRunnableC1933t implements Runnable {

    /* JADX INFO: renamed from: a */
    private final TaskCompletionSource f410a;

    public AbstractRunnableC1933t() {
        this.f410a = null;
    }

    public AbstractRunnableC1933t(TaskCompletionSource taskCompletionSource) {
        this.f410a = taskCompletionSource;
    }

    /* JADX INFO: renamed from: a */
    public void mo393a(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.f410a;
        if (taskCompletionSource != null) {
            taskCompletionSource.trySetException(exc);
        }
    }

    /* JADX INFO: renamed from: b */
    public abstract void mo388b();

    /* JADX INFO: renamed from: c */
    public final TaskCompletionSource m476c() {
        return this.f410a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            mo388b();
        } catch (Exception e) {
            mo393a(e);
        }
    }
}
