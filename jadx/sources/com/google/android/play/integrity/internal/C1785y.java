package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.y */
/* JADX INFO: loaded from: classes5.dex */
final class C1785y extends AbstractRunnableC1778r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ IBinder f576a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ ServiceConnectionC1751ab f577b;

    C1785y(ServiceConnectionC1751ab serviceConnectionC1751ab, IBinder iBinder) {
        this.f577b = serviceConnectionC1751ab;
        this.f576a = iBinder;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1778r
    /* JADX INFO: renamed from: b */
    public final void mo389b() {
        C1752ac c1752ac = this.f577b.f542a;
        c1752ac.f557o = (IInterface) c1752ac.f552j.mo387a(this.f576a);
        C1752ac.m441r(this.f577b.f542a);
        this.f577b.f542a.f550h = false;
        Iterator it = this.f577b.f542a.f547e.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f577b.f542a.f547e.clear();
    }
}
