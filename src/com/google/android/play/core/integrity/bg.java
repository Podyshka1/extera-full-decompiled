package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import com.google.android.play.integrity.internal.InterfaceC1808i;

/* JADX INFO: loaded from: classes5.dex */
final class bg extends bm {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ StandardIntegrityManager.StandardIntegrityTokenRequest f313a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ long f314b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ long f315c;

    /* JADX INFO: renamed from: d */
    final /* synthetic */ TaskCompletionSource f316d;

    /* JADX INFO: renamed from: e */
    final /* synthetic */ bn f317e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bg(bn bnVar, TaskCompletionSource taskCompletionSource, int i, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j, long j2, TaskCompletionSource taskCompletionSource2) {
        super(bnVar, taskCompletionSource);
        this.f313a = standardIntegrityTokenRequest;
        this.f314b = j;
        this.f315c = j2;
        this.f316d = taskCompletionSource2;
        this.f317e = bnVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1812t
    /* JADX INFO: renamed from: b */
    public final void mo364b() {
        if (bn.m377l(this.f317e)) {
            super.mo369a(new StandardIntegrityException(-2, null));
            return;
        }
        if (bn.m376k(this.f317e, 0)) {
            super.mo369a(new StandardIntegrityException(-14, null));
            return;
        }
        try {
            bn bnVar = this.f317e;
            ((InterfaceC1808i) bnVar.f327a.m408e()).mo445d(bn.m370a(bnVar, this.f313a, this.f314b, this.f315c, 0), new bk(this.f317e, this.f316d, this.f314b));
        } catch (RemoteException e) {
            this.f317e.f328b.m449c(e, "requestExpressIntegrityToken(%s, %s, %s)", this.f313a.requestHash(), this.f313a.verdictOptOut(), Long.valueOf(this.f314b));
            this.f316d.trySetException(new StandardIntegrityException(-100, e));
        }
    }
}
