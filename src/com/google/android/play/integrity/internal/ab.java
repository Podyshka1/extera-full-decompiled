package com.google.android.play.integrity.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: loaded from: classes5.dex */
final class ab implements ServiceConnection {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ ac f336a;

    /* synthetic */ ab(ac acVar, aa aaVar) {
        this.f336a = acVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f336a.f339c.m378c("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f336a.m350c().post(new C1670y(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f336a.f339c.m378c("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f336a.m350c().post(new C1671z(this));
    }
}
