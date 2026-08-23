package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.C1662q;

/* JADX INFO: loaded from: classes5.dex */
final class au extends at {

    /* JADX INFO: renamed from: c */
    private final C1662q f282c;

    au(ax axVar, TaskCompletionSource taskCompletionSource) {
        super(axVar, taskCompletionSource);
        this.f282c = new C1662q("OnRequestIntegrityTokenCallback");
    }

    @Override // com.google.android.play.core.integrity.at, com.google.android.play.integrity.internal.InterfaceC1656k
    /* JADX INFO: renamed from: c */
    public final void mo305c(Bundle bundle) {
        super.mo305c(bundle);
        this.f282c.m378c("onRequestExpressIntegrityToken", new Object[0]);
        int i = bundle.getInt("error");
        if (i != 0) {
            this.f280a.trySetException(new StandardIntegrityException(i, null));
            return;
        }
        PendingIntent pendingIntent = Build.VERSION.SDK_INT >= 33 ? (PendingIntent) bundle.getParcelable("dialog.intent", PendingIntent.class) : (PendingIntent) bundle.getParcelable("dialog.intent");
        TaskCompletionSource taskCompletionSource = this.f280a;
        C1618b c1618b = new C1618b();
        c1618b.mo317c(bundle.getString("token"));
        c1618b.mo316b(this.f282c);
        c1618b.mo315a(pendingIntent);
        taskCompletionSource.trySetResult(c1618b.mo318d());
    }
}
