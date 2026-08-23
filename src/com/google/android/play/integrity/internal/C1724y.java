package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.y */
/* JADX INFO: loaded from: classes5.dex */
final class C1724y extends AbstractRunnableC1717r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ IBinder f429a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ ab f430b;

    public C1724y(ab abVar, IBinder iBinder) {
        this.f430b = abVar;
        this.f429a = iBinder;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1717r
    /* JADX INFO: renamed from: b */
    public final void mo353b() {
        ac acVar = this.f430b.f395a;
        acVar.f410o = (IInterface) acVar.f405j.mo351a(this.f429a);
        ac.m405r(this.f430b.f395a);
        this.f430b.f395a.f403h = false;
        Iterator it = this.f430b.f395a.f400e.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f430b.f395a.f400e.clear();
    }
}
