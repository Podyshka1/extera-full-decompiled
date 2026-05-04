package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.u */
/* JADX INFO: loaded from: classes5.dex */
final class C1781u extends AbstractRunnableC1778r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ TaskCompletionSource f572a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ AbstractRunnableC1778r f573b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ C1752ac f574c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1781u(C1752ac c1752ac, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, AbstractRunnableC1778r abstractRunnableC1778r) {
        super(taskCompletionSource);
        this.f574c = c1752ac;
        this.f572a = taskCompletionSource2;
        this.f573b = abstractRunnableC1778r;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1778r
    /* JADX INFO: renamed from: b */
    public final void mo389b() {
        synchronized (this.f574c.f549g) {
            try {
                C1752ac.m438o(this.f574c, this.f572a);
                if (this.f574c.f555m.getAndIncrement() > 0) {
                    this.f574c.f545c.m473c("Already connected to the service.", new Object[0]);
                }
                C1752ac.m440q(this.f574c, this.f573b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
