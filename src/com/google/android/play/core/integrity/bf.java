package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.InterfaceC1808i;

/* JADX INFO: loaded from: classes5.dex */
final class bf extends bm {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ long f310a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ TaskCompletionSource f311b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ bn f312c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bf(bn bnVar, TaskCompletionSource taskCompletionSource, int i, long j, TaskCompletionSource taskCompletionSource2) {
        super(bnVar, taskCompletionSource);
        this.f310a = j;
        this.f311b = taskCompletionSource2;
        this.f312c = bnVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1812t
    /* JADX INFO: renamed from: b */
    public final void mo364b() {
        if (bn.m377l(this.f312c)) {
            super.mo369a(new StandardIntegrityException(-2, null));
            return;
        }
        if (bn.m376k(this.f312c, 0)) {
            super.mo369a(new StandardIntegrityException(-14, null));
            return;
        }
        try {
            bn bnVar = this.f312c;
            ((InterfaceC1808i) bnVar.f327a.m408e()).mo446e(bn.m371b(bnVar, this.f310a, 0), new bl(this.f312c, this.f311b));
        } catch (RemoteException e) {
            this.f312c.f328b.m449c(e, "warmUpIntegrityToken(%s)", Long.valueOf(this.f310a));
            this.f311b.trySetException(new StandardIntegrityException(-100, e));
        }
    }
}
