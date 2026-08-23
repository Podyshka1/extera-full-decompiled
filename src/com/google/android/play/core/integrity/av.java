package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.C1662q;

/* JADX INFO: loaded from: classes5.dex */
final class av extends at {

    /* JADX INFO: renamed from: c */
    private final C1662q f283c;

    av(ax axVar, TaskCompletionSource taskCompletionSource) {
        super(axVar, taskCompletionSource);
        this.f283c = new C1662q("OnWarmUpIntegrityTokenCallback");
    }

    @Override // com.google.android.play.core.integrity.at, com.google.android.play.integrity.internal.InterfaceC1656k
    /* JADX INFO: renamed from: e */
    public final void mo307e(Bundle bundle) {
        super.mo307e(bundle);
        this.f283c.m378c("onWarmUpExpressIntegrityToken", new Object[0]);
        int i = bundle.getInt("error");
        if (i != 0) {
            this.f280a.trySetException(new StandardIntegrityException(i, null));
        } else {
            this.f280a.trySetResult(Long.valueOf(bundle.getLong("warm.up.sid")));
        }
    }
}
