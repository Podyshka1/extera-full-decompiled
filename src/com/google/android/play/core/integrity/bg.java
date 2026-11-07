package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import com.google.android.play.integrity.internal.InterfaceC1929i;

/* JADX INFO: loaded from: classes5.dex */
final class bg extends bm {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ StandardIntegrityManager.StandardIntegrityTokenRequest f314a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ long f315b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ long f316c;

    /* JADX INFO: renamed from: d */
    final /* synthetic */ TaskCompletionSource f317d;

    /* JADX INFO: renamed from: e */
    final /* synthetic */ bn f318e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bg(bn bnVar, TaskCompletionSource taskCompletionSource, int i, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j, long j2, TaskCompletionSource taskCompletionSource2) {
        super(bnVar, taskCompletionSource);
        this.f314a = standardIntegrityTokenRequest;
        this.f315b = j;
        this.f316c = j2;
        this.f317d = taskCompletionSource2;
        this.f318e = bnVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1933t
    /* JADX INFO: renamed from: b */
    public final void mo388b() {
        if (bn.m401l(this.f318e)) {
            super.mo393a(new StandardIntegrityException(-2, null));
            return;
        }
        if (bn.m400k(this.f318e, 0)) {
            super.mo393a(new StandardIntegrityException(-14, null));
            return;
        }
        try {
            bn bnVar = this.f318e;
            ((InterfaceC1929i) bnVar.f328a.m432e()).mo469d(bn.m394a(bnVar, this.f314a, this.f315b, this.f316c, 0), new bk(this.f318e, this.f317d, this.f315b));
        } catch (RemoteException e) {
            this.f318e.f329b.m473c(e, "requestExpressIntegrityToken(%s, %s, %s)", this.f314a.requestHash(), this.f314a.verdictOptOut(), Long.valueOf(this.f315b));
            this.f317d.trySetException(new StandardIntegrityException(-100, e));
        }
    }
}
