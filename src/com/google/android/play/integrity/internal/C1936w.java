package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.w */
/* JADX INFO: loaded from: classes5.dex */
final class C1936w extends AbstractRunnableC1933t {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ TaskCompletionSource f414a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ AbstractRunnableC1933t f415b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ ae f416c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1936w(ae aeVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, AbstractRunnableC1933t abstractRunnableC1933t) {
        super(taskCompletionSource);
        this.f414a = taskCompletionSource2;
        this.f415b = abstractRunnableC1933t;
        this.f416c = aeVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1933t
    /* JADX INFO: renamed from: b */
    public final void mo388b() {
        synchronized (this.f416c.f378g) {
            try {
                ae.m424o(this.f416c, this.f414a);
                if (this.f416c.f384m.getAndIncrement() > 0) {
                    this.f416c.f374c.m474d("Already connected to the service.", new Object[0]);
                }
                ae.m426q(this.f416c, this.f415b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
