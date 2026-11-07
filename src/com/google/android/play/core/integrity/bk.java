package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.C1932s;

/* JADX INFO: loaded from: classes5.dex */
final class bk extends bi {

    /* JADX INFO: renamed from: c */
    final /* synthetic */ bn f322c;

    /* JADX INFO: renamed from: d */
    private final C1932s f323d;

    /* JADX INFO: renamed from: e */
    private final long f324e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bk(bn bnVar, TaskCompletionSource taskCompletionSource, long j) {
        super(bnVar, taskCompletionSource);
        this.f322c = bnVar;
        this.f323d = new C1932s("OnRequestIntegrityTokenCallback");
        this.f324e = j;
    }

    @Override // com.google.android.play.core.integrity.bi, com.google.android.play.integrity.internal.InterfaceC1931k
    /* JADX INFO: renamed from: c */
    public final void mo390c(Bundle bundle) {
        super.mo390c(bundle);
        this.f323d.m474d("onRequestExpressIntegrityToken", new Object[0]);
        ApiException apiExceptionMo406a = this.f322c.f333f.mo406a(bundle);
        if (apiExceptionMo406a != null) {
            this.f319a.trySetException(apiExceptionMo406a);
            return;
        }
        bj bjVar = new bj(this, this.f322c.f330c, bundle.getLong("request.token.sid"));
        TaskCompletionSource taskCompletionSource = this.f319a;
        C1904b c1904b = new C1904b();
        c1904b.mo384b(bundle.getString("token"));
        c1904b.mo383a(bjVar);
        taskCompletionSource.trySetResult(c1904b.mo385c());
    }
}
