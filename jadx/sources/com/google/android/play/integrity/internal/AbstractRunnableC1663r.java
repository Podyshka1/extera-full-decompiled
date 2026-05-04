package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.r */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractRunnableC1663r implements Runnable {

    /* JADX INFO: renamed from: a */
    private final TaskCompletionSource f362a;

    AbstractRunnableC1663r() {
        this.f362a = null;
    }

    public AbstractRunnableC1663r(TaskCompletionSource taskCompletionSource) {
        this.f362a = taskCompletionSource;
    }

    /* JADX INFO: renamed from: a */
    public void mo293a(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.f362a;
        if (taskCompletionSource != null) {
            taskCompletionSource.trySetException(exc);
        }
    }

    /* JADX INFO: renamed from: b */
    protected abstract void mo294b();

    /* JADX INFO: renamed from: c */
    final TaskCompletionSource m380c() {
        return this.f362a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            mo294b();
        } catch (Exception e) {
            mo293a(e);
        }
    }
}
