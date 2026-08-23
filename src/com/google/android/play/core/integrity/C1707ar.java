package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.InterfaceC1769i;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.ar */
/* JADX INFO: loaded from: classes5.dex */
final class C1707ar extends AbstractC1712aw {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ long f478a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ TaskCompletionSource f479b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ C1713ax f480c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1707ar(C1713ax c1713ax, TaskCompletionSource taskCompletionSource, long j, TaskCompletionSource taskCompletionSource2) {
        super(c1713ax, taskCompletionSource);
        this.f480c = c1713ax;
        this.f478a = j;
        this.f479b = taskCompletionSource2;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1778r
    /* JADX INFO: renamed from: b */
    protected final void mo389b() {
        if (C1713ax.m407g(this.f480c)) {
            super.mo388a(new StandardIntegrityException(-2, null));
            return;
        }
        try {
            C1713ax c1713ax = this.f480c;
            ((InterfaceC1769i) c1713ax.f491a.m446e()).mo466d(C1713ax.m404b(c1713ax, this.f478a), new BinderC1711av(this.f480c, this.f479b));
        } catch (RemoteException e) {
            this.f480c.f492b.m472b(e, "warmUpIntegrityToken(%s)", Long.valueOf(this.f478a));
            this.f479b.trySetException(new StandardIntegrityException(-100, e));
        }
    }
}
