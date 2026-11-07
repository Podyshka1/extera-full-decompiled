package com.google.android.play.integrity.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: loaded from: classes5.dex */
final class ad implements ServiceConnection {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ ae f371a;

    public /* synthetic */ ad(ae aeVar, ac acVar) {
        this.f371a = aeVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f371a.f374c.m474d("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f371a.m431c().post(new aa(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f371a.f374c.m474d("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f371a.m431c().post(new ab(this));
    }
}
