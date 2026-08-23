package com.google.android.play.integrity.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: loaded from: classes5.dex */
final class ab implements ServiceConnection {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ ac f395a;

    public /* synthetic */ ab(ac acVar, aa aaVar) {
        this.f395a = acVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f395a.f398c.m437c("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        ac acVar = this.f395a;
        acVar.m409c().post(new C1724y(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f395a.f398c.m437c("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        ac acVar = this.f395a;
        acVar.m409c().post(new C1725z(this));
    }
}
