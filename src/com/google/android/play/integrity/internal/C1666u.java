package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.u */
/* JADX INFO: loaded from: classes5.dex */
final class C1666u extends AbstractRunnableC1663r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ TaskCompletionSource f366a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ AbstractRunnableC1663r f367b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ ac f368c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1666u(ac acVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, AbstractRunnableC1663r abstractRunnableC1663r) {
        super(taskCompletionSource);
        this.f368c = acVar;
        this.f366a = taskCompletionSource2;
        this.f367b = abstractRunnableC1663r;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1663r
    /* JADX INFO: renamed from: b */
    public final void mo294b() {
        synchronized (this.f368c.f343g) {
            try {
                ac.m343o(this.f368c, this.f366a);
                if (this.f368c.f349m.getAndIncrement() > 0) {
                    this.f368c.f339c.m378c("Already connected to the service.", new Object[0]);
                }
                ac.m345q(this.f368c, this.f367b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
