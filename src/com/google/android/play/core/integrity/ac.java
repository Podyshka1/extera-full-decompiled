package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractBinderC1660o;
import com.google.android.play.integrity.internal.C1662q;

/* JADX INFO: loaded from: classes5.dex */
final class ac extends AbstractBinderC1660o {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ ad f250a;

    /* JADX INFO: renamed from: b */
    private final C1662q f251b = new C1662q("OnRequestIntegrityTokenCallback");

    /* JADX INFO: renamed from: c */
    private final TaskCompletionSource f252c;

    ac(ad adVar, TaskCompletionSource taskCompletionSource) {
        this.f250a = adVar;
        this.f252c = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1661p
    /* JADX INFO: renamed from: b */
    public final void mo295b(Bundle bundle) {
        this.f250a.f253a.m354v(this.f252c);
        this.f251b.m378c("onRequestIntegrityToken", new Object[0]);
        int i = bundle.getInt("error");
        if (i != 0) {
            this.f252c.trySetException(new IntegrityServiceException(i, null));
            return;
        }
        String string = bundle.getString("token");
        if (string == null) {
            this.f252c.trySetException(new IntegrityServiceException(-100, null));
            return;
        }
        PendingIntent pendingIntent = Build.VERSION.SDK_INT >= 33 ? (PendingIntent) bundle.getParcelable("dialog.intent", PendingIntent.class) : (PendingIntent) bundle.getParcelable("dialog.intent");
        TaskCompletionSource taskCompletionSource = this.f252c;
        C1617a c1617a = new C1617a();
        c1617a.mo290c(string);
        c1617a.mo289b(this.f251b);
        c1617a.mo288a(pendingIntent);
        taskCompletionSource.trySetResult(c1617a.mo291d());
    }
}
