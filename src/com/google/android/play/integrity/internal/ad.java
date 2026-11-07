package com.google.android.play.integrity.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: loaded from: classes5.dex */
final class ad implements ServiceConnection {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ ae f370a;

    public /* synthetic */ ad(ae aeVar, ac acVar) {
        this.f370a = aeVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f370a.f373c.m450d("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f370a.m407c().post(new aa(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f370a.f373c.m450d("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f370a.m407c().post(new ab(this));
    }
}
