package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.w */
/* JADX INFO: loaded from: classes5.dex */
final class C1815w extends AbstractRunnableC1812t {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ TaskCompletionSource f413a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ AbstractRunnableC1812t f414b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ ae f415c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1815w(ae aeVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, AbstractRunnableC1812t abstractRunnableC1812t) {
        super(taskCompletionSource);
        this.f413a = taskCompletionSource2;
        this.f414b = abstractRunnableC1812t;
        this.f415c = aeVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1812t
    /* JADX INFO: renamed from: b */
    public final void mo364b() {
        synchronized (this.f415c.f377g) {
            try {
                ae.m400o(this.f415c, this.f413a);
                if (this.f415c.f383m.getAndIncrement() > 0) {
                    this.f415c.f373c.m450d("Already connected to the service.", new Object[0]);
                }
                ae.m402q(this.f415c, this.f414b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
