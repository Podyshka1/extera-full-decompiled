package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.C1811s;

/* JADX INFO: loaded from: classes5.dex */
final class bk extends bi {

    /* JADX INFO: renamed from: c */
    final /* synthetic */ bn f321c;

    /* JADX INFO: renamed from: d */
    private final C1811s f322d;

    /* JADX INFO: renamed from: e */
    private final long f323e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bk(bn bnVar, TaskCompletionSource taskCompletionSource, long j) {
        super(bnVar, taskCompletionSource);
        this.f321c = bnVar;
        this.f322d = new C1811s("OnRequestIntegrityTokenCallback");
        this.f323e = j;
    }

    @Override // com.google.android.play.core.integrity.bi, com.google.android.play.integrity.internal.InterfaceC1810k
    /* JADX INFO: renamed from: c */
    public final void mo366c(Bundle bundle) {
        super.mo366c(bundle);
        this.f322d.m450d("onRequestExpressIntegrityToken", new Object[0]);
        ApiException apiExceptionMo382a = this.f321c.f332f.mo382a(bundle);
        if (apiExceptionMo382a != null) {
            this.f318a.trySetException(apiExceptionMo382a);
            return;
        }
        bj bjVar = new bj(this, this.f321c.f329c, bundle.getLong("request.token.sid"));
        TaskCompletionSource taskCompletionSource = this.f318a;
        C1783b c1783b = new C1783b();
        c1783b.mo360b(bundle.getString("token"));
        c1783b.mo359a(bjVar);
        taskCompletionSource.trySetResult(c1783b.mo361c());
    }
}
