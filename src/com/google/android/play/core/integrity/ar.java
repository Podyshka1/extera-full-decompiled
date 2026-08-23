package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.InterfaceC1708i;

/* JADX INFO: loaded from: classes5.dex */
final class ar extends aw {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ long f331a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ TaskCompletionSource f332b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ ax f333c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ar(ax axVar, TaskCompletionSource taskCompletionSource, long j, TaskCompletionSource taskCompletionSource2) {
        super(axVar, taskCompletionSource);
        this.f333c = axVar;
        this.f331a = j;
        this.f332b = taskCompletionSource2;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1717r
    /* JADX INFO: renamed from: b */
    public final void mo353b() {
        if (ax.m371g(this.f333c)) {
            super.mo352a(new StandardIntegrityException(-2, null));
            return;
        }
        try {
            ax axVar = this.f333c;
            ((InterfaceC1708i) axVar.f344a.m410e()).mo430d(ax.m368b(axVar, this.f331a), new av(this.f333c, this.f332b));
        } catch (RemoteException e) {
            this.f333c.f345b.m436b(e, "warmUpIntegrityToken(%s)", Long.valueOf(this.f331a));
            this.f332b.trySetException(new StandardIntegrityException(-100, e));
        }
    }
}
