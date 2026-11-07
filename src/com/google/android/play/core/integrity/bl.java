package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.C1811s;

/* JADX INFO: loaded from: classes5.dex */
final class bl extends bi {

    /* JADX INFO: renamed from: c */
    final /* synthetic */ bn f324c;

    /* JADX INFO: renamed from: d */
    private final C1811s f325d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bl(bn bnVar, TaskCompletionSource taskCompletionSource) {
        super(bnVar, taskCompletionSource);
        this.f324c = bnVar;
        this.f325d = new C1811s("OnWarmUpIntegrityTokenCallback");
    }

    @Override // com.google.android.play.core.integrity.bi, com.google.android.play.integrity.internal.InterfaceC1810k
    /* JADX INFO: renamed from: e */
    public final void mo368e(Bundle bundle) {
        super.mo368e(bundle);
        this.f325d.m450d("onWarmUpExpressIntegrityToken", new Object[0]);
        ApiException apiExceptionMo382a = this.f324c.f332f.mo382a(bundle);
        TaskCompletionSource taskCompletionSource = this.f318a;
        if (apiExceptionMo382a != null) {
            taskCompletionSource.trySetException(apiExceptionMo382a);
        } else {
            taskCompletionSource.trySetResult(Long.valueOf(bundle.getLong("warm.up.sid")));
        }
    }
}
