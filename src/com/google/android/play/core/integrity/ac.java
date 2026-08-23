package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import android.os.Build;
import android.os.Bundle;
import androidx.mediarouter.media.MediaRouteProviderProtocol;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractBinderC1714o;
import com.google.android.play.integrity.internal.C1716q;

/* JADX INFO: loaded from: classes5.dex */
final class ac extends AbstractBinderC1714o {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ ad f309a;

    /* JADX INFO: renamed from: b */
    private final C1716q f310b = new C1716q("OnRequestIntegrityTokenCallback");

    /* JADX INFO: renamed from: c */
    private final TaskCompletionSource f311c;

    public ac(ad adVar, TaskCompletionSource taskCompletionSource) {
        this.f309a = adVar;
        this.f311c = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1715p
    /* JADX INFO: renamed from: b */
    public final void mo354b(Bundle bundle) {
        this.f309a.f312a.m413v(this.f311c);
        this.f310b.m437c("onRequestIntegrityToken", new Object[0]);
        int i = bundle.getInt(MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
        if (i != 0) {
            this.f311c.trySetException(new IntegrityServiceException(i, null));
            return;
        }
        String string = bundle.getString("token");
        if (string == null) {
            this.f311c.trySetException(new IntegrityServiceException(-100, null));
            return;
        }
        PendingIntent pendingIntent = Build.VERSION.SDK_INT >= 33 ? (PendingIntent) bundle.getParcelable("dialog.intent", PendingIntent.class) : (PendingIntent) bundle.getParcelable("dialog.intent");
        TaskCompletionSource taskCompletionSource = this.f311c;
        C1671a c1671a = new C1671a();
        c1671a.mo349c(string);
        c1671a.mo348b(this.f310b);
        c1671a.mo347a(pendingIntent);
        taskCompletionSource.trySetResult(c1671a.mo350d());
    }
}
