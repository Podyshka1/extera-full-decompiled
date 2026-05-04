package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.InterfaceC1769i;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.as */
/* JADX INFO: loaded from: classes5.dex */
final class C1708as extends AbstractC1712aw {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ String f481a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ long f482b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ long f483c;

    /* JADX INFO: renamed from: d */
    final /* synthetic */ TaskCompletionSource f484d;

    /* JADX INFO: renamed from: e */
    final /* synthetic */ C1713ax f485e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1708as(C1713ax c1713ax, TaskCompletionSource taskCompletionSource, String str, long j, long j2, TaskCompletionSource taskCompletionSource2) {
        super(c1713ax, taskCompletionSource);
        this.f485e = c1713ax;
        this.f481a = str;
        this.f482b = j;
        this.f483c = j2;
        this.f484d = taskCompletionSource2;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1778r
    /* JADX INFO: renamed from: b */
    protected final void mo389b() {
        if (C1713ax.m407g(this.f485e)) {
            super.mo388a(new StandardIntegrityException(-2, null));
            return;
        }
        try {
            C1713ax c1713ax = this.f485e;
            ((InterfaceC1769i) c1713ax.f491a.m446e()).mo465c(C1713ax.m403a(c1713ax, this.f481a, this.f482b, this.f483c), new BinderC1710au(this.f485e, this.f484d));
        } catch (RemoteException e) {
            this.f485e.f492b.m472b(e, "requestExpressIntegrityToken(%s, %s)", this.f481a, Long.valueOf(this.f482b));
            this.f484d.trySetException(new StandardIntegrityException(-100, e));
        }
    }
}
