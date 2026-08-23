package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.C1777q;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.au */
/* JADX INFO: loaded from: classes5.dex */
final class BinderC1710au extends BinderC1709at {

    /* JADX INFO: renamed from: c */
    private final C1777q f488c;

    BinderC1710au(C1713ax c1713ax, TaskCompletionSource taskCompletionSource) {
        super(c1713ax, taskCompletionSource);
        this.f488c = new C1777q("OnRequestIntegrityTokenCallback");
    }

    @Override // com.google.android.play.core.integrity.BinderC1709at, com.google.android.play.integrity.internal.InterfaceC1771k
    /* JADX INFO: renamed from: c */
    public final void mo400c(Bundle bundle) {
        super.mo400c(bundle);
        this.f488c.m473c("onRequestExpressIntegrityToken", new Object[0]);
        int i = bundle.getInt("error");
        if (i != 0) {
            this.f486a.trySetException(new StandardIntegrityException(i, null));
            return;
        }
        PendingIntent pendingIntent = Build.VERSION.SDK_INT >= 33 ? (PendingIntent) bundle.getParcelable("dialog.intent", PendingIntent.class) : (PendingIntent) bundle.getParcelable("dialog.intent");
        TaskCompletionSource taskCompletionSource = this.f486a;
        C1716b c1716b = new C1716b();
        c1716b.mo412c(bundle.getString("token"));
        c1716b.mo411b(this.f488c);
        c1716b.mo410a(pendingIntent);
        taskCompletionSource.trySetResult(c1716b.mo413d());
    }
}
