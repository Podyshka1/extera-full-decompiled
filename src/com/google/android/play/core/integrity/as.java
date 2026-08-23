package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.InterfaceC1708i;

/* JADX INFO: loaded from: classes5.dex */
final class as extends aw {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ String f334a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ long f335b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ long f336c;

    /* JADX INFO: renamed from: d */
    final /* synthetic */ TaskCompletionSource f337d;

    /* JADX INFO: renamed from: e */
    final /* synthetic */ ax f338e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public as(ax axVar, TaskCompletionSource taskCompletionSource, String str, long j, long j2, TaskCompletionSource taskCompletionSource2) {
        super(axVar, taskCompletionSource);
        this.f338e = axVar;
        this.f334a = str;
        this.f335b = j;
        this.f336c = j2;
        this.f337d = taskCompletionSource2;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1717r
    /* JADX INFO: renamed from: b */
    public final void mo353b() {
        if (ax.m371g(this.f338e)) {
            super.mo352a(new StandardIntegrityException(-2, null));
            return;
        }
        try {
            ax axVar = this.f338e;
            ((InterfaceC1708i) axVar.f344a.m410e()).mo429c(ax.m367a(axVar, this.f334a, this.f335b, this.f336c), new au(this.f338e, this.f337d));
        } catch (RemoteException e) {
            this.f338e.f345b.m436b(e, "requestExpressIntegrityToken(%s, %s)", this.f334a, Long.valueOf(this.f335b));
            this.f337d.trySetException(new StandardIntegrityException(-100, e));
        }
    }
}
