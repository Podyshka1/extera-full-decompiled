package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
final class aa extends AbstractRunnableC1933t {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ IBinder f368a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ ad f369b;

    public aa(ad adVar, IBinder iBinder) {
        this.f368a = iBinder;
        this.f369b = adVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1933t
    /* JADX INFO: renamed from: b */
    public final void mo388b() {
        this.f369b.f371a.f386o = (IInterface) this.f369b.f371a.f381j.mo387a(this.f368a);
        ae.m427r(this.f369b.f371a);
        this.f369b.f371a.f379h = false;
        Iterator it = this.f369b.f371a.f376e.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f369b.f371a.f376e.clear();
    }
}
