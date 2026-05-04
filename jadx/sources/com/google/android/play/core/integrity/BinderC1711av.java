package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.C1777q;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.av */
/* JADX INFO: loaded from: classes5.dex */
final class BinderC1711av extends BinderC1709at {

    /* JADX INFO: renamed from: c */
    private final C1777q f489c;

    BinderC1711av(C1713ax c1713ax, TaskCompletionSource taskCompletionSource) {
        super(c1713ax, taskCompletionSource);
        this.f489c = new C1777q("OnWarmUpIntegrityTokenCallback");
    }

    @Override // com.google.android.play.core.integrity.BinderC1709at, com.google.android.play.integrity.internal.InterfaceC1771k
    /* JADX INFO: renamed from: e */
    public final void mo402e(Bundle bundle) {
        super.mo402e(bundle);
        this.f489c.m473c("onWarmUpExpressIntegrityToken", new Object[0]);
        int i = bundle.getInt("error");
        if (i != 0) {
            this.f486a.trySetException(new StandardIntegrityException(i, null));
        } else {
            this.f486a.trySetResult(Long.valueOf(bundle.getLong("warm.up.sid")));
        }
    }
}
