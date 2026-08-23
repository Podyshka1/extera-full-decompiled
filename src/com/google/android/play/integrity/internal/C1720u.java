package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.u */
/* JADX INFO: loaded from: classes5.dex */
final class C1720u extends AbstractRunnableC1717r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ TaskCompletionSource f425a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ AbstractRunnableC1717r f426b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ ac f427c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1720u(ac acVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, AbstractRunnableC1717r abstractRunnableC1717r) {
        super(taskCompletionSource);
        this.f427c = acVar;
        this.f425a = taskCompletionSource2;
        this.f426b = abstractRunnableC1717r;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1717r
    /* JADX INFO: renamed from: b */
    public final void mo353b() {
        synchronized (this.f427c.f402g) {
            try {
                ac.m402o(this.f427c, this.f425a);
                if (this.f427c.f408m.getAndIncrement() > 0) {
                    this.f427c.f398c.m437c("Already connected to the service.", new Object[0]);
                }
                ac.m404q(this.f427c, this.f426b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
