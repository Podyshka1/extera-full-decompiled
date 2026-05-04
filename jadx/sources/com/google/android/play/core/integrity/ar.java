package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.InterfaceC1654i;

/* JADX INFO: loaded from: classes5.dex */
final class ar extends aw {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ long f272a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ TaskCompletionSource f273b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ ax f274c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ar(ax axVar, TaskCompletionSource taskCompletionSource, long j, TaskCompletionSource taskCompletionSource2) {
        super(axVar, taskCompletionSource);
        this.f274c = axVar;
        this.f272a = j;
        this.f273b = taskCompletionSource2;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1663r
    /* JADX INFO: renamed from: b */
    protected final void mo294b() {
        if (ax.m312g(this.f274c)) {
            super.mo293a(new StandardIntegrityException(-2, null));
            return;
        }
        try {
            ax axVar = this.f274c;
            ((InterfaceC1654i) axVar.f285a.m351e()).mo371d(ax.m309b(axVar, this.f272a), new av(this.f274c, this.f273b));
        } catch (RemoteException e) {
            this.f274c.f286b.m377b(e, "warmUpIntegrityToken(%s)", Long.valueOf(this.f272a));
            this.f273b.trySetException(new StandardIntegrityException(-100, e));
        }
    }
}
