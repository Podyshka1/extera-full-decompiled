package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.r */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractRunnableC1717r implements Runnable {

    /* JADX INFO: renamed from: a */
    private final TaskCompletionSource f421a;

    public AbstractRunnableC1717r() {
        this.f421a = null;
    }

    public AbstractRunnableC1717r(TaskCompletionSource taskCompletionSource) {
        this.f421a = taskCompletionSource;
    }

    /* JADX INFO: renamed from: a */
    public void mo352a(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.f421a;
        if (taskCompletionSource != null) {
            taskCompletionSource.trySetException(exc);
        }
    }

    /* JADX INFO: renamed from: b */
    public abstract void mo353b();

    /* JADX INFO: renamed from: c */
    public final TaskCompletionSource m439c() {
        return this.f421a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            mo353b();
        } catch (Exception e) {
            mo352a(e);
        }
    }
}
