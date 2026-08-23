package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.InterfaceC1654i;

/* JADX INFO: loaded from: classes5.dex */
final class as extends aw {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ String f275a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ long f276b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ long f277c;

    /* JADX INFO: renamed from: d */
    final /* synthetic */ TaskCompletionSource f278d;

    /* JADX INFO: renamed from: e */
    final /* synthetic */ ax f279e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    as(ax axVar, TaskCompletionSource taskCompletionSource, String str, long j, long j2, TaskCompletionSource taskCompletionSource2) {
        super(axVar, taskCompletionSource);
        this.f279e = axVar;
        this.f275a = str;
        this.f276b = j;
        this.f277c = j2;
        this.f278d = taskCompletionSource2;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1663r
    /* JADX INFO: renamed from: b */
    protected final void mo294b() {
        if (ax.m312g(this.f279e)) {
            super.mo293a(new StandardIntegrityException(-2, null));
            return;
        }
        try {
            ax axVar = this.f279e;
            ((InterfaceC1654i) axVar.f285a.m351e()).mo370c(ax.m308a(axVar, this.f275a, this.f276b, this.f277c), new au(this.f279e, this.f278d));
        } catch (RemoteException e) {
            this.f279e.f286b.m377b(e, "requestExpressIntegrityToken(%s, %s)", this.f275a, Long.valueOf(this.f276b));
            this.f278d.trySetException(new StandardIntegrityException(-100, e));
        }
    }
}
