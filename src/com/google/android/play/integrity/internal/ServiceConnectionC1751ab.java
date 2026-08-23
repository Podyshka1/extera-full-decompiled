package com.google.android.play.integrity.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.ab */
/* JADX INFO: loaded from: classes5.dex */
final class ServiceConnectionC1751ab implements ServiceConnection {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ C1752ac f542a;

    /* synthetic */ ServiceConnectionC1751ab(C1752ac c1752ac, AbstractC1750aa abstractC1750aa) {
        this.f542a = c1752ac;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f542a.f545c.m473c("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f542a.m445c().post(new C1785y(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f542a.f545c.m473c("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f542a.m445c().post(new C1786z(this));
    }
}
