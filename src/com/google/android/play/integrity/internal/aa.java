package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
final class aa extends AbstractRunnableC1812t {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ IBinder f367a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ ad f368b;

    public aa(ad adVar, IBinder iBinder) {
        this.f367a = iBinder;
        this.f368b = adVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1812t
    /* JADX INFO: renamed from: b */
    public final void mo364b() {
        this.f368b.f370a.f385o = (IInterface) this.f368b.f370a.f380j.mo363a(this.f367a);
        ae.m403r(this.f368b.f370a);
        this.f368b.f370a.f378h = false;
        Iterator it = this.f368b.f370a.f375e.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f368b.f370a.f375e.clear();
    }
}
