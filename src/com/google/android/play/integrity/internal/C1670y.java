package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.y */
/* JADX INFO: loaded from: classes5.dex */
final class C1670y extends AbstractRunnableC1663r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ IBinder f370a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ ab f371b;

    C1670y(ab abVar, IBinder iBinder) {
        this.f371b = abVar;
        this.f370a = iBinder;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1663r
    /* JADX INFO: renamed from: b */
    public final void mo294b() {
        ac acVar = this.f371b.f336a;
        acVar.f351o = (IInterface) acVar.f346j.mo292a(this.f370a);
        ac.m346r(this.f371b.f336a);
        this.f371b.f336a.f344h = false;
        Iterator it = this.f371b.f336a.f341e.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f371b.f336a.f341e.clear();
    }
}
