package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.C1932s;

/* JADX INFO: loaded from: classes5.dex */
final class bl extends bi {

    /* JADX INFO: renamed from: c */
    final /* synthetic */ bn f325c;

    /* JADX INFO: renamed from: d */
    private final C1932s f326d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bl(bn bnVar, TaskCompletionSource taskCompletionSource) {
        super(bnVar, taskCompletionSource);
        this.f325c = bnVar;
        this.f326d = new C1932s("OnWarmUpIntegrityTokenCallback");
    }

    @Override // com.google.android.play.core.integrity.bi, com.google.android.play.integrity.internal.InterfaceC1931k
    /* JADX INFO: renamed from: e */
    public final void mo392e(Bundle bundle) {
        super.mo392e(bundle);
        this.f326d.m474d("onWarmUpExpressIntegrityToken", new Object[0]);
        ApiException apiExceptionMo406a = this.f325c.f333f.mo406a(bundle);
        TaskCompletionSource taskCompletionSource = this.f319a;
        if (apiExceptionMo406a != null) {
            taskCompletionSource.trySetException(apiExceptionMo406a);
        } else {
            taskCompletionSource.trySetResult(Long.valueOf(bundle.getLong("warm.up.sid")));
        }
    }
}
