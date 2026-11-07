package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.InterfaceC1929i;

/* JADX INFO: loaded from: classes5.dex */
final class bf extends bm {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ long f311a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ TaskCompletionSource f312b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ bn f313c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bf(bn bnVar, TaskCompletionSource taskCompletionSource, int i, long j, TaskCompletionSource taskCompletionSource2) {
        super(bnVar, taskCompletionSource);
        this.f311a = j;
        this.f312b = taskCompletionSource2;
        this.f313c = bnVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1933t
    /* JADX INFO: renamed from: b */
    public final void mo388b() {
        if (bn.m401l(this.f313c)) {
            super.mo393a(new StandardIntegrityException(-2, null));
            return;
        }
        if (bn.m400k(this.f313c, 0)) {
            super.mo393a(new StandardIntegrityException(-14, null));
            return;
        }
        try {
            bn bnVar = this.f313c;
            ((InterfaceC1929i) bnVar.f328a.m432e()).mo470e(bn.m395b(bnVar, this.f311a, 0), new bl(this.f313c, this.f312b));
        } catch (RemoteException e) {
            this.f313c.f329b.m473c(e, "warmUpIntegrityToken(%s)", Long.valueOf(this.f311a));
            this.f312b.trySetException(new StandardIntegrityException(-100, e));
        }
    }
}
