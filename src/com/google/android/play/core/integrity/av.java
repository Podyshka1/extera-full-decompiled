package com.google.android.play.core.integrity;

import android.os.Bundle;
import androidx.mediarouter.media.MediaRouteProviderProtocol;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.C1716q;

/* JADX INFO: loaded from: classes5.dex */
final class av extends at {

    /* JADX INFO: renamed from: c */
    private final C1716q f342c;

    public av(ax axVar, TaskCompletionSource taskCompletionSource) {
        super(axVar, taskCompletionSource);
        this.f342c = new C1716q("OnWarmUpIntegrityTokenCallback");
    }

    @Override // com.google.android.play.core.integrity.at, com.google.android.play.integrity.internal.InterfaceC1710k
    /* JADX INFO: renamed from: e */
    public final void mo366e(Bundle bundle) {
        super.mo366e(bundle);
        this.f342c.m437c("onWarmUpExpressIntegrityToken", new Object[0]);
        int i = bundle.getInt(MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
        TaskCompletionSource taskCompletionSource = this.f339a;
        if (i != 0) {
            taskCompletionSource.trySetException(new StandardIntegrityException(i, null));
        } else {
            taskCompletionSource.trySetResult(Long.valueOf(bundle.getLong("warm.up.sid")));
        }
    }
}
