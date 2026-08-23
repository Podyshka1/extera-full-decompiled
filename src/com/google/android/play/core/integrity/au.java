package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import android.os.Build;
import android.os.Bundle;
import androidx.mediarouter.media.MediaRouteProviderProtocol;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.C1716q;

/* JADX INFO: loaded from: classes5.dex */
final class au extends at {

    /* JADX INFO: renamed from: c */
    private final C1716q f341c;

    public au(ax axVar, TaskCompletionSource taskCompletionSource) {
        super(axVar, taskCompletionSource);
        this.f341c = new C1716q("OnRequestIntegrityTokenCallback");
    }

    @Override // com.google.android.play.core.integrity.at, com.google.android.play.integrity.internal.InterfaceC1710k
    /* JADX INFO: renamed from: c */
    public final void mo364c(Bundle bundle) {
        super.mo364c(bundle);
        this.f341c.m437c("onRequestExpressIntegrityToken", new Object[0]);
        int i = bundle.getInt(MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
        if (i != 0) {
            this.f339a.trySetException(new StandardIntegrityException(i, null));
            return;
        }
        PendingIntent pendingIntent = Build.VERSION.SDK_INT >= 33 ? (PendingIntent) bundle.getParcelable("dialog.intent", PendingIntent.class) : (PendingIntent) bundle.getParcelable("dialog.intent");
        TaskCompletionSource taskCompletionSource = this.f339a;
        C1672b c1672b = new C1672b();
        c1672b.mo376c(bundle.getString("token"));
        c1672b.mo375b(this.f341c);
        c1672b.mo374a(pendingIntent);
        taskCompletionSource.trySetResult(c1672b.mo377d());
    }
}
