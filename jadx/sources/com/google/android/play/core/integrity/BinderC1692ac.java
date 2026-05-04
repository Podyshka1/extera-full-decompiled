package com.google.android.play.core.integrity;

import android.app.PendingIntent;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractBinderC1775o;
import com.google.android.play.integrity.internal.C1777q;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.ac */
/* JADX INFO: loaded from: classes5.dex */
final class BinderC1692ac extends AbstractBinderC1775o {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ C1693ad f456a;

    /* JADX INFO: renamed from: b */
    private final C1777q f457b = new C1777q("OnRequestIntegrityTokenCallback");

    /* JADX INFO: renamed from: c */
    private final TaskCompletionSource f458c;

    BinderC1692ac(C1693ad c1693ad, TaskCompletionSource taskCompletionSource) {
        this.f456a = c1693ad;
        this.f458c = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1776p
    /* JADX INFO: renamed from: b */
    public final void mo390b(Bundle bundle) {
        this.f456a.f459a.m449v(this.f458c);
        this.f457b.m473c("onRequestIntegrityToken", new Object[0]);
        int i = bundle.getInt("error");
        if (i != 0) {
            this.f458c.trySetException(new IntegrityServiceException(i, null));
            return;
        }
        String string = bundle.getString("token");
        if (string == null) {
            this.f458c.trySetException(new IntegrityServiceException(-100, null));
            return;
        }
        PendingIntent pendingIntent = Build.VERSION.SDK_INT >= 33 ? (PendingIntent) bundle.getParcelable("dialog.intent", PendingIntent.class) : (PendingIntent) bundle.getParcelable("dialog.intent");
        TaskCompletionSource taskCompletionSource = this.f458c;
        C1689a c1689a = new C1689a();
        c1689a.mo385c(string);
        c1689a.mo384b(this.f457b);
        c1689a.mo383a(pendingIntent);
        taskCompletionSource.trySetResult(c1689a.mo386d());
    }
}
